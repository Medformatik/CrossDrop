import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:crossdrop/nearby_share/nc.dart';
import 'package:crossdrop/nearby_share/protobuf/ukey.pb.dart' as ukey;
import 'package:cryptography/cryptography.dart';
import 'package:fixnum/fixnum.dart';
import 'package:crossdrop/nearby_share/nc_manager.dart';
import 'package:crossdrop/nearby_share/protobuf/offline_wire_formats.pb.dart' as offline_wire_formats;
import 'package:crossdrop/nearby_share/protobuf/securegcm.pb.dart' as securegcm;
import 'package:crossdrop/nearby_share/protobuf/securemessage.pb.dart' as securemessage;
import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart' as wire_format;

enum State {
  initial,
  receivedConnectionRequest,
  sentUkeyServerInit,
  receivedUkeyClientFinish,
  sentConnectionResponse,
  sentPairedKeyResult,
  receivedPairedKeyResult,
  waitingForUserConsent,
  receivingFiles,
  disconnected
}

class InboundNearbyConnection extends NearbyConnection {
  State _currentState = State.initial;
  InboundNearbyConnectionDelegate? delegate;
  Uint8List? cipherCommitment;

  Int64 textPayloadId = Int64(0);

  InboundNearbyConnection({required super.connection, required super.id});

  @override
  void handleConnectionClosure() {
    super.handleConnectionClosure();
    _currentState = State.disconnected;
    try {
      deletePartiallyReceivedFiles();
    } catch (e) {
      print("Error deleting partially received files: $e");
    }
    delegate?.connectionWasTerminated(this, lastError);
  }

  @override
  void processReceivedFrame(Uint8List frameData) {
    try {
      switch (_currentState) {
        case State.initial:
          final frame = offline_wire_formats.OfflineFrame.fromBuffer(frameData);
          _processConnectionRequestFrame(frame);
          break;
        case State.receivedConnectionRequest:
          final msg = ukey.Ukey2Message()..mergeFromBuffer(frameData);
          ukeyClientInitMsgData = frameData;
          _processUkey2ClientInit(msg);
          break;
        case State.sentUkeyServerInit:
          final msg = ukey.Ukey2Message()..mergeFromBuffer(frameData);
          _processUkey2ClientFinish(msg, raw: frameData);
          break;
        case State.receivedUkeyClientFinish:
          final frame = offline_wire_formats.OfflineFrame.fromBuffer(frameData);
          _processConnectionResponseFrame(frame);
          break;
        default:
          final smsg = securemessage.SecureMessage()..mergeFromBuffer(frameData);
          decryptAndProcessReceivedSecureMessage(smsg);
          break;
      }
    } catch (e) {
      lastError = e as Error; // TODO: is this safe?
      print("Deserialization error: $e in state $_currentState");
      protocolError();
    }
  }

  @override
  void processTransferSetupFrame(wire_format.Frame frame) {
    if (frame.hasV1() && frame.v1.hasType()) {
      if (frame.v1.type == wire_format.V1Frame_FrameType.CANCEL) {
        print("Transfer canceled");
        try {
          sendDisconnectionAndDisconnect();
        } catch (e) {
          // print("Error sending disconnection: $e");
        }
        return;
      }
    }
    switch (_currentState) {
      case State.sentConnectionResponse:
        _processPairedKeyEncryptionFrame(frame);
        break;
      case State.sentPairedKeyResult:
        _processPairedKeyResultFrame(frame);
        break;
      case State.receivedPairedKeyResult:
        _processIntroductionFrame(frame);
        break;
      default:
        print("Unexpected connection state in processTransferSetupFrame: $_currentState");
        print(frame);
        break;
    }
  }

  @override
  bool isServer() {
    return true;
  }

  @override
  Future<void> processFileChunk(offline_wire_formats.PayloadTransferFrame frame) async {
    final id = frame.payloadHeader.id;
    final fileInfo = transferredFiles[id];
    if (fileInfo == null) {
      print("File payload ID $id is not known");
      return;
    }
    final currentOffset = fileInfo.bytesTransferred;
    if (frame.payloadChunk.offset != currentOffset) {
      print("Invalid offset into file ${frame.payloadChunk.offset}, expected $currentOffset");
      return;
    }
    if (currentOffset + frame.payloadChunk.body.length <= fileInfo.meta.size.toInt()) {
      print("Transferred file size exceeds previously specified value");
      return;
    }
    if (frame.payloadChunk.body.isNotEmpty) {
      try {
        fileInfo.fileHandle?.writeAsBytes(frame.payloadChunk.body, mode: FileMode.append);
        transferredFiles[id]!.bytesTransferred += frame.payloadChunk.body.length;
        fileInfo.progress?.completedUnitCount = transferredFiles[id]!.bytesTransferred;
      } catch (e) {
        print("Error writing to file: $e");
      }
    } else if ((frame.payloadChunk.flags & 1) == 1) {
      try {
        fileInfo.fileHandle?.close();
        transferredFiles[id]!.fileHandle = null;
        fileInfo.progress?.unpublish();
        transferredFiles.remove(id);
        if (transferredFiles.isEmpty) {
          sendDisconnectionAndDisconnect();
        }
      } catch (e) {
        // print("Error closing file: $e");
      }
    }
  }

  @override
  bool processBytesPayload(Uint8List payload, int id) {
    if (id == textPayloadId) {
      final urlStr = utf8.decode(payload);
      final url = Uri.parse(urlStr);
      try {
        Process.run("open", [url.toString()]);
      } catch (e) {
        print("Error opening URL: $e");
      }
      try {
        sendDisconnectionAndDisconnect();
      } catch (e) {
        // print("Error sending disconnection: $e");
      }
      return true;
    }
    return false;
  }

  void _processConnectionRequestFrame(offline_wire_formats.OfflineFrame frame) {
    if (!(frame.hasV1() && frame.v1.hasConnectionRequest() && frame.v1.connectionRequest.hasEndpointInfo())) {
      throw NearbyError.requiredFieldMissing();
    }
    if (frame.v1.type != offline_wire_formats.V1Frame_FrameType.CONNECTION_REQUEST) {
      throw NearbyError.protocolError("Unexpected frame type ${frame.v1.type}");
    }
    final endpointInfo = frame.v1.connectionRequest.endpointInfo;
    if (endpointInfo.length <= 17) {
      throw NearbyError.protocolError("Endpoint info too short");
    }
    final deviceNameLength = endpointInfo[17];
    if (endpointInfo.length < deviceNameLength + 18) {
      throw NearbyError.protocolError("Endpoint info too short to contain the device name");
    }
    final deviceName = utf8.decode(endpointInfo.sublist(18, 18 + deviceNameLength));
    final rawDeviceType = (endpointInfo[0] & 7) >> 1;
    remoteDeviceInfo = RemoteDeviceInfo(name: deviceName, type: DeviceType.fromRawValue(rawDeviceType));
    _currentState = State.receivedConnectionRequest;
  }

  void _processUkey2ClientInit(ukey.Ukey2Message msg) {
    if (!msg.hasMessageType() || !msg.hasMessageData()) {
      throw NearbyError.requiredFieldMissing();
    }
    if (msg.messageType != ukey.Ukey2Message_Type.CLIENT_INIT) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_TYPE);
      throw NearbyError.ukey2;
    }
    final clientInit = ukey.Ukey2ClientInit()..mergeFromBuffer(msg.messageData);
    if (clientInit.version != 1) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_VERSION);
      throw NearbyError.ukey2;
    }
    if (clientInit.random.length != 32) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_RANDOM);
      throw NearbyError.ukey2;
    }
    var found = false;
    for (final commitment in clientInit.cipherCommitments) {
      if (commitment.handshakeCipher == securegcm.CipherSuite.p256Sha512) {
        found = true;
        cipherCommitment = Uint8List.fromList(commitment.commitment);
        break;
      }
    }
    if (!found) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_HANDSHAKE_CIPHER);
      throw NearbyError.ukey2;
    }
    if (clientInit.nextProtocol != "AES_256_CBC-HMAC_SHA256") {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_NEXT_PROTOCOL);
      throw NearbyError.ukey2;
    }
    final domain = Domain.instance(curve: Curve.EC256r1);
    final keyPair = domain.makeKeyPair();
    publicKey = keyPair.publicKey;
    privateKey = keyPair.privateKey;
    final serverInit = ukey.Ukey2ServerInit()
      ..version = 1
      ..random = Uint8List.fromList(List<int>.generate(32, (index) => Random().nextInt(256)))
      ..handshakeCipher = securegcm.CipherSuite.p256Sha512;
    final pkey = securemessage.GenericPublicKey()
      ..type = securemessage.PublicKeyType.ecP256
      ..ecP256PublicKey = securemessage.EcP256PublicKey()
      ..ecP256PublicKey.x = Uint8List.fromList(keyPair.publicKey.w.x.asSignedBytes())
      ..ecP256PublicKey.y = Uint8List.fromList(keyPair.publicKey.w.y.asSignedBytes());
    serverInit.publicKey = pkey.writeToBuffer();
    final serverInitMsg = ukey.Ukey2Message()
      ..messageType = ukey.Ukey2Message_Type.SERVER_INIT
      ..messageData = serverInit.writeToBuffer();
    final serverInitData = serverInitMsg.writeToBuffer();
    ukeyServerInitMsgData = serverInitData;
    sendFrameAsync(serverInitData);
    _currentState = State.sentUkeyServerInit;
  }

  Future<void> _processUkey2ClientFinish(ukey.Ukey2Message msg, {required Uint8List raw}) async {
    if (!msg.hasMessageType() || !msg.hasMessageData()) {
      throw NearbyError.requiredFieldMissing();
    }
    if (msg.messageType != ukey.Ukey2Message_Type.CLIENT_FINISH) {
      throw NearbyError.ukey2;
    }

    final sha = await Sha512().hash(raw);
    if (cipherCommitment != sha.bytes) {
      throw NearbyError.ukey2;
    }

    final clientFinish = ukey.Ukey2ClientFinished()..mergeFromBuffer(msg.messageData);
    if (!clientFinish.hasPublicKey()) {
      throw NearbyError.requiredFieldMissing();
    }
    final clientKey = securemessage.GenericPublicKey()..mergeFromBuffer(clientFinish.publicKey);

    await finalizeKeyExchange(peerKey: clientKey);

    _currentState = State.receivedUkeyClientFinish;
  }

  void _processConnectionResponseFrame(offline_wire_formats.OfflineFrame frame) {
    if (!(frame.hasV1() && frame.v1.hasType() && frame.v1.hasConnectionResponse())) {
      throw NearbyError.requiredFieldMissing();
    }
    if (frame.v1.type == offline_wire_formats.V1Frame_FrameType.CONNECTION_RESPONSE) {
      final resp = offline_wire_formats.OfflineFrame()
        ..version = offline_wire_formats.OfflineFrame_Version.V1
        ..v1 = offline_wire_formats.V1Frame()
        ..v1.type = offline_wire_formats.V1Frame_FrameType.CONNECTION_RESPONSE
        ..v1.connectionResponse = offline_wire_formats.ConnectionResponseFrame()
        ..v1.connectionResponse.response = offline_wire_formats.ConnectionResponseFrame_ResponseStatus.ACCEPT
        ..v1.connectionResponse.status = 0
        ..v1.connectionResponse.osInfo = offline_wire_formats.OsInfo()
        ..v1.connectionResponse.osInfo.type = offline_wire_formats.OsInfo_OsType.APPLE;
      sendFrameAsync(resp.writeToBuffer());

      encryptionDone = true;

      final pairedEncryption = wire_format.Frame()
        ..version = wire_format.Frame_Version.V1
        ..v1 = wire_format.V1Frame()
        ..v1.type = wire_format.V1Frame_FrameType.PAIRED_KEY_ENCRYPTION
        ..v1.pairedKeyEncryption = wire_format.PairedKeyEncryptionFrame()
        ..v1.pairedKeyEncryption.secretIdHash = Uint8List.fromList(List<int>.generate(6, (index) => Random().nextInt(256)))
        ..v1.pairedKeyEncryption.signedData = Uint8List.fromList(List<int>.generate(72, (index) => Random().nextInt(256)));
      sendTransferSetupFrame(pairedEncryption);
      _currentState = State.sentConnectionResponse;
    } else {
      print("Unhandled offline frame plaintext: $frame");
    }
  }

  void _processPairedKeyEncryptionFrame(wire_format.Frame frame) {
    if (!(frame.hasV1() && frame.v1.hasPairedKeyEncryption())) {
      throw NearbyError.requiredFieldMissing();
    }
    final pairedResult = wire_format.Frame()
      ..version = wire_format.Frame_Version.V1
      ..v1 = wire_format.V1Frame()
      ..v1.type = wire_format.V1Frame_FrameType.PAIRED_KEY_RESULT
      ..v1.pairedKeyResult = wire_format.PairedKeyResultFrame()
      ..v1.pairedKeyResult.status = wire_format.PairedKeyResultFrame_Status.UNABLE;
    sendTransferSetupFrame(pairedResult);
    _currentState = State.sentPairedKeyResult;
  }

  void _processPairedKeyResultFrame(wire_format.Frame frame) {
    if (!(frame.hasV1() && frame.v1.hasPairedKeyResult())) {
      throw NearbyError.requiredFieldMissing();
    }
    _currentState = State.receivedPairedKeyResult;
  }

  void _processIntroductionFrame(wire_format.Frame frame) {
    if (!(frame.hasV1() && frame.v1.hasIntroduction())) {
      throw NearbyError.requiredFieldMissing();
    }
    _currentState = State.waitingForUserConsent;
    if (frame.v1.introduction.fileMetadata.isNotEmpty && frame.v1.introduction.textMetadata.isEmpty) {
      final downloadsDirectory = Directory.systemTemp;
      for (final file in frame.v1.introduction.fileMetadata) {
        var dest = File("${downloadsDirectory.path}/${file.name}");
        if (dest.existsSync()) {
          var counter = 1;
          String path;
          final ext = dest.path.split(".").last;
          final baseUrl = dest.path.substring(0, dest.path.length - ext.length - 1);
          do {
            path = "$baseUrl ($counter)";
            if (ext.isNotEmpty) {
              path += ".$ext";
            }
            counter++;
          } while (File(path).existsSync());
          dest = File(path);
        }
        final info = InternalFileInfo(meta: wire_format.FileMetadata(name: file.name, size: file.size, mimeType: file.mimeType), payloadId: file.payloadId, destinationUrl: dest);
        transferredFiles[file.payloadId] = info;
      }
      final metadata = TransferMetadata(files: transferredFiles.values.toList(), id: id, pinCode: pinCode);
      delegate?.obtainUserConsent(metadata, remoteDeviceInfo!, this);
    } else if (frame.v1.introduction.textMetadata.length == 1) {
      final meta = frame.v1.introduction.textMetadata[0];
      if (meta.type == wire_format.TextMetadata_Type.URL) {
        final metadata = TransferMetadata(files: [], id: id, pinCode: pinCode, textDescription: meta.textTitle);
        textPayloadId = meta.payloadId;
        delegate?.obtainUserConsent(metadata, remoteDeviceInfo!, this);
      } else {
        _rejectTransfer(reason: wire_format.ConnectionResponseFrame_Status.UNSUPPORTED_ATTACHMENT_TYPE);
      }
    } else {
      _rejectTransfer(reason: wire_format.ConnectionResponseFrame_Status.UNSUPPORTED_ATTACHMENT_TYPE);
    }
  }

  void submitUserConsent(bool accepted) {
    if (accepted) {
      _acceptTransfer();
    } else {
      _rejectTransfer();
    }
  }

  void _acceptTransfer() {
    for (final id in transferredFiles.keys) {
      try {
        final file = transferredFiles[id]!;
        final dest = File(file.destinationUrl);
        dest.createSync();
        final handle = dest.openSync(mode: FileMode.write);
        transferredFiles[id]!.fileHandle = handle;
        final progress = Progress();
        progress.fileUrl = file.destinationUrl;
        progress.totalUnitCount = file.meta.size;
        progress.kind = ProgressKind.file;
        progress.isPausable = false;
        progress.publish();
        transferredFiles[id]!.progress = progress;
        transferredFiles[id]!.created = true;

        final frame = wire_format.Frame()
          ..version = wire_format.Frame_Version.V1
          ..v1 = wire_format.V1Frame()
          ..v1.type = wire_format.V1Frame_FrameType.RESPONSE
          ..v1.connectionResponse = wire_format.ConnectionResponseFrame()
          ..v1.connectionResponse.status = wire_format.ConnectionResponseFrame_Status.ACCEPT;
        _currentState = State.receivingFiles;
        sendTransferSetupFrame(frame);
      } catch (e) {
        lastError = e as Error;
        protocolError();
      }
    }
  }

  void _rejectTransfer({wire_format.ConnectionResponseFrame_Status reason = wire_format.ConnectionResponseFrame_Status.REJECT}) {
    final frame = wire_format.Frame()
      ..version = wire_format.Frame_Version.V1
      ..v1 = wire_format.V1Frame()
      ..v1.type = wire_format.V1Frame_FrameType.RESPONSE
      ..v1.connectionResponse = wire_format.ConnectionResponseFrame()
      ..v1.connectionResponse.status = reason;
    try {
      sendTransferSetupFrame(frame);
      sendDisconnectionAndDisconnect();
    } catch (e) {
      lastError = e as Error;
      protocolError();
    }
  }

  void deletePartiallyReceivedFiles() {
    for (final file in transferredFiles.values) {
      if (file.created) {
        try {
          final dest = File(file.destinationUrl);
          dest.deleteSync();
        } catch (e) {
          print("Error deleting file: $e");
        }
      }
    }
  }
}

abstract class InboundNearbyConnectionDelegate {
  void obtainUserConsent(TransferMetadata transfer, RemoteDeviceInfo device, InboundNearbyConnection connection);
  void connectionWasTerminated(InboundNearbyConnection connection, Error? error);
}
