import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crossdrop/device.dart';
import 'package:crossdrop/nearby_share/nc.dart';
import 'package:crossdrop/nearby_share/protobuf/ukey.pb.dart' as ukey;
import 'package:cryptography/cryptography.dart';
import 'package:fixnum/fixnum.dart';
import 'package:crossdrop/nearby_share/nc_manager.dart';
import 'package:crossdrop/nearby_share/protobuf/offline_wire_formats.pb.dart' as offline_wire_formats;
import 'package:crossdrop/nearby_share/protobuf/securemessage.pb.dart' as securemessage;
import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart' as wire_format;
import 'package:flutter/foundation.dart';

enum State {
  initial,
  sentUkeyClientInit,
  sentUkeyClientFinish,
  sentPairedKeyEncryption,
  sentPairedKeyResult,
  sentIntroduction,
  sendingFiles,
}

class OutboundNearbyConnection extends NearbyConnection {
  State currentState = State.initial;
  final List<String> urlsToSend = [];
  Uint8List? ukeyClientFinishMsgData;
  final List<OutgoingFileTransfer> queue = [];
  OutgoingFileTransfer? currentTransfer;
  OutboundNearbyConnectionDelegate? delegate;
  Int64 totalBytesToSend = Int64(0);
  Int64 totalBytesSent = Int64(0);
  bool cancelled = false;
  Int64 textPayloadId = Int64(0);

  OutboundNearbyConnection({required super.connection, required super.id, required List<String> urlsToSend}) {
    this.urlsToSend.addAll(urlsToSend);
    // TODO: file:// won't work
    if (urlsToSend.length == 1 && !urlsToSend[0].startsWith('file://')) {
      textPayloadId = _random(Int64.MIN_VALUE, Int64.MAX_VALUE);
    }
  }

  Int64 _random(Int64 min, Int64 max) {
    return min + Random().nextInt((max - min + 1).toInt());
  }

  void close() {
    if (currentTransfer != null && currentTransfer!.handle != null) {
      try {
        currentTransfer!.handle!.close();
      } catch (e) {
        print(e);
      }
    }
    for (var transfer in queue) {
      if (transfer.handle != null) {
        try {
          transfer.handle!.close();
        } catch (e) {
          print(e);
        }
      }
    }
  }

  void cancel() {
    cancelled = true;
    if (encryptionDone) {
      var cancel = wire_format.Frame();
      cancel.version = wire_format.Frame_Version.V1;
      cancel.v1 = wire_format.V1Frame();
      cancel.v1.type = wire_format.V1Frame_FrameType.CANCEL;
      try {
        sendTransferSetupFrame(cancel);
      } catch (e) {
        print(e);
      }
    }
    try {
      sendDisconnectionAndDisconnect();
    } catch (e) {
      print(e);
    }
  }

  @override
  void connectionReady() {
    super.connectionReady();
    try {
      _sendConnectionRequest();
      _sendUkey2ClientInit();
    } catch (e) {
      lastError = e as Exception;
      protocolError();
    }
  }

  @override
  bool isServer() {
    return false;
  }

  @override
  void processReceivedFrame(Uint8List frameData) {
    try {
      switch (currentState) {
        case State.initial:
          protocolError();
          break;
        case State.sentUkeyClientInit:
          _processUkey2ServerInit(ukey.Ukey2Message.fromBuffer(frameData), frameData);
          break;
        case State.sentUkeyClientFinish:
          _processConnectionResponse(offline_wire_formats.OfflineFrame.fromBuffer(frameData));
          break;
        default:
          var smsg = securemessage.SecureMessage.fromBuffer(frameData);
          decryptAndProcessReceivedSecureMessage(smsg);
          break;
      }
    } catch (e) {
      if (e is NearbyError && e == NearbyError.ukey2) {
      } else if (currentState == State.sentUkeyClientInit) {
        sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE);
      }
      lastError = e as Exception;
      protocolError();
    }
  }

  @override
  void processTransferSetupFrame(wire_format.Frame frame) {
    if (frame.hasV1() && frame.v1.hasType() && frame.v1.type == wire_format.V1Frame_FrameType.CANCEL) {
      print('Transfer canceled');
      try {
        sendDisconnectionAndDisconnect();
      } catch (e) {
        print(e);
      }
      delegate?.outboundConnectionFailedWithError(this, NearbyError.canceled(CancellationReason.userCanceled));
      return;
    }
    print(frame);
    switch (currentState) {
      case State.sentPairedKeyEncryption:
        _processPairedKeyEncryption(frame);
        break;
      case State.sentPairedKeyResult:
        _processPairedKeyResult(frame);
        break;
      case State.sentIntroduction:
        _processConsent(frame);
        break;
      case State.sendingFiles:
        break;
      default:
        throw Exception('Unexpected state $currentState');
    }
  }

  @override
  void protocolError() {
    super.protocolError();
    delegate?.outboundConnectionFailedWithError(this, lastError!);
  }

  Future<void> _sendConnectionRequest() async {
    var frame = offline_wire_formats.OfflineFrame();
    frame.version = offline_wire_formats.OfflineFrame_Version.V1;
    frame.v1 = offline_wire_formats.V1Frame();
    frame.v1.type = offline_wire_formats.V1Frame_FrameType.CONNECTION_REQUEST;
    frame.v1.connectionRequest = offline_wire_formats.ConnectionRequestFrame();
    frame.v1.connectionRequest.endpointId = ascii.decode(NearbyConnectionManager.shared.endpointId);
    frame.v1.connectionRequest.endpointName = await getDeviceName();
    final endpointInfo = EndpointInfo(name: await getDeviceName(), deviceType: DeviceType.computer);
    frame.v1.connectionRequest.endpointInfo = endpointInfo.serialize();
    frame.v1.connectionRequest.mediums.add(offline_wire_formats.ConnectionRequestFrame_Medium.WIFI_LAN);
    sendFrameAsync(frame.writeToBuffer());
  }

  Future<void> _sendUkey2ClientInit() async {
    final domain = Domain.ecP256();
    final keyPair = domain.newKeyPairSync();
    publicKey = keyPair.publicKey;
    privateKey = keyPair.privateKey;

    var finishFrame = ukey.Ukey2Message();
    finishFrame.messageType = ukey.Ukey2Message_Type.CLIENT_FINISH;
    var finish = ukey.Ukey2ClientFinished();
    var pkey = securemessage.GenericPublicKey();
    pkey.type = securemessage.PublicKeyType.EC_P256;
    pkey.ecP256PublicKey = securemessage.EcP256PublicKey();
    pkey.ecP256PublicKey.x = keyPair.publicKey.x;
    pkey.ecP256PublicKey.y = keyPair.publicKey.y;
    finish.publicKey = pkey.writeToBuffer();
    finishFrame.messageData = finish.writeToBuffer();
    ukeyClientFinishMsgData = finishFrame.writeToBuffer();

    var frame = ukey.Ukey2Message();
    frame.messageType = ukey.Ukey2Message_Type.CLIENT_INIT;

    var clientInit = ukey.Ukey2ClientInit();
    clientInit.version = 1;
    clientInit.random = Uint8List(32);
    clientInit.nextProtocol = 'AES_256_CBC-HMAC_SHA256';
    var sha = await Sha512().hash(ukeyClientFinishMsgData!);
    var commitment = ukey.Ukey2ClientInit_CipherCommitment();
    commitment.commitment = sha.bytes;
    commitment.handshakeCipher = ukey.Ukey2HandshakeCipher.P256_SHA512;
    clientInit.cipherCommitments.add(commitment);
    frame.messageData = clientInit.writeToBuffer();

    sendFrameAsync(frame.writeToBuffer());
    currentState = State.sentUkeyClientInit;
  }

  void _processUkey2ServerInit(ukey.Ukey2Message frame, Uint8List raw) {
    if (frame.messageType != ukey.Ukey2Message_Type.SERVER_INIT) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE);
      throw NearbyError.ukey2;
    }
    var serverInit = ukey.Ukey2ServerInit.fromBuffer(frame.messageData);
    if (serverInit.version != 1) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_VERSION);
      throw NearbyError.ukey2;
    }
    if (serverInit.random.length != 32) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_RANDOM);
      throw NearbyError.ukey2;
    }
    if (serverInit.handshakeCipher != ukey.Ukey2HandshakeCipher.P256_SHA512) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_HANDSHAKE_CIPHER);
      throw NearbyError.ukey2;
    }

    var serverKey = securemessage.GenericPublicKey.fromBuffer(serverInit.publicKey);
    try {
      finalizeKeyExchange(peerKey: serverKey);
    } catch (e) {
      print(e);
    }
    sendFrameAsync(ukeyClientFinishMsgData!);
    currentState = State.sentUkeyClientFinish;

    var resp = offline_wire_formats.OfflineFrame();
    resp.version = offline_wire_formats.OfflineFrame_Version.V1;
    resp.v1 = offline_wire_formats.V1Frame();
    resp.v1.type = offline_wire_formats.V1Frame_FrameType.CONNECTION_RESPONSE;
    resp.v1.connectionResponse = offline_wire_formats.ConnectionResponseFrame();
    resp.v1.connectionResponse.response = offline_wire_formats.ConnectionResponseFrame_ResponseStatus.ACCEPT;
    resp.v1.connectionResponse.status = 0;
    resp.v1.connectionResponse.osInfo = offline_wire_formats.OsInfo();
    resp.v1.connectionResponse.osInfo.type = offline_wire_formats.OsInfo_OsType.APPLE;
    sendFrameAsync(resp.writeToBuffer());

    encryptionDone = true;
    delegate?.outboundConnectionWasEstablished(this);
  }

  void _processConnectionResponse(offline_wire_formats.OfflineFrame frame) {
    if (kDebugMode) {
      print('connection response: $frame');
    }
    if (frame.version != offline_wire_formats.OfflineFrame_Version.V1) {
      throw NearbyError.protocolError('Unexpected offline frame version ${frame.version}');
    }
    if (frame.v1.type != offline_wire_formats.V1Frame_FrameType.CONNECTION_RESPONSE) {
      throw NearbyError.protocolError('Unexpected frame type ${frame.v1.type}');
    }
    if (frame.v1.connectionResponse.response != offline_wire_formats.ConnectionResponseFrame_ResponseStatus.ACCEPT) {
      throw NearbyError.protocolError('Connection was rejected by recipient');
    }

    var pairedEncryption = wire_format.Frame();
    pairedEncryption.version = wire_format.Frame_Version.V1;
    pairedEncryption.v1 = wire_format.V1Frame();
    pairedEncryption.v1.type = wire_format.V1Frame_FrameType.PAIRED_KEY_ENCRYPTION;
    pairedEncryption.v1.pairedKeyEncryption = wire_format.PairedKeyEncryptionFrame();
    pairedEncryption.v1.pairedKeyEncryption.secretIdHash = Uint8List(6);
    pairedEncryption.v1.pairedKeyEncryption.signedData = Uint8List(72);
    try {
      sendTransferSetupFrame(pairedEncryption);
    } catch (e) {
      print(e);
    }
    currentState = State.sentPairedKeyEncryption;
  }

  void _processPairedKeyEncryption(wire_format.Frame frame) {
    if (!(frame.hasV1() && frame.v1.hasPairedKeyEncryption())) {
      throw NearbyError.requiredFieldMissing;
    }
    var pairedResult = wire_format.Frame();
    pairedResult.version = wire_format.Frame_Version.V1;
    pairedResult.v1 = wire_format.V1Frame();
    pairedResult.v1.type = wire_format.V1Frame_FrameType.PAIRED_KEY_RESULT;
    pairedResult.v1.pairedKeyResult = wire_format.PairedKeyResultFrame();
    pairedResult.v1.pairedKeyResult.status = wire_format.PairedKeyResultFrame_Status.UNABLE;
    try {
      sendTransferSetupFrame(pairedResult);
    } catch (e) {
      print(e);
    }
    currentState = State.sentPairedKeyResult;
  }

  void _processPairedKeyResult(wire_format.Frame frame) {
    if (!(frame.hasV1() && frame.v1.hasPairedKeyResult())) {
      throw NearbyError.requiredFieldMissing;
    }
    var introduction = wire_format.Frame();
    introduction.version = wire_format.Frame_Version.V1;
    introduction.v1 = wire_format.V1Frame();
    introduction.v1.type = wire_format.V1Frame_FrameType.INTRODUCTION;
    if (urlsToSend.length == 1 && !urlsToSend[0].startsWith('file://')) {
      var meta = wire_format.TextMetadata();
      meta.type = wire_format.TextMetadata_Type.URL;
      meta.textTitle = urlsToSend[0];
      meta.size = Int64(urlsToSend[0].length);
      meta.payloadId = textPayloadId;
      introduction.v1.introduction.textMetadata.add(meta);
    } else {
      for (var url in urlsToSend) {
        if (!url.startsWith('file://')) {
          continue;
        }
        var meta = wire_format.FileMetadata();
        meta.name = _sanitizeFileName(url.split('/').last!);
        var attrs = File(url).statSync();
        meta.size = Int64(attrs.size);
        var typeID = '';
        try {
          typeID = File(url).statSync().type;
        } catch (e) {
          print(e);
        }
        meta.mimeType = 'application/octet-stream';
        if (typeID.startsWith('image/')) {
          meta.type = wire_format.FileMetadata_Type.IMAGE;
        } else if (typeID.startsWith('video/')) {
          meta.type = wire_format.FileMetadata_Type.VIDEO;
        } else if (typeID.startsWith('audio/')) {
          meta.type = wire_format.FileMetadata_Type.AUDIO;
        } else if (url.endsWith('.apk')) {
          meta.type = wire_format.FileMetadata_Type.APP;
        } else {
          meta.type = wire_format.FileMetadata_Type.UNKNOWN;
        }
        meta.payloadId = _random(Int64.MIN_VALUE, Int64.MAX_VALUE);
        queue.add(OutgoingFileTransfer(
          url: url,
          payloadId: meta.payloadId,
          handle: File(url).openSync(),
          totalBytes: meta.size,
          currentOffset: Int64(0),
        ));
        introduction.v1.introduction.fileMetadata.add(meta);
        totalBytesToSend += meta.size;
      }
    }
    if (kDebugMode) {
      print('sent introduction: $introduction');
    }
    try {
      sendTransferSetupFrame(introduction);
    } catch (e) {
      print(e);
    }
    currentState = State.sentIntroduction;
  }

  void _processConsent(wire_format.Frame frame) {
    if (!(frame.hasV1() && frame.v1.hasConnectionResponse())) {
      throw NearbyError.requiredFieldMissing;
    }
    switch (frame.v1.connectionResponse.status) {
      case wire_format.ConnectionResponseFrame_Status.ACCEPT:
        currentState = State.sendingFiles;
        delegate?.outboundConnectionTransferAccepted(this);
        // TODO: file:// won't work
        if (urlsToSend.length == 1 && !urlsToSend[0].startsWith('file://')) {
          try {
            _sendUrl();
          } catch (e) {
            print(e);
          }
        } else {
          try {
            _sendNextFileChunk();
          } catch (e) {
            print(e);
          }
        }
        break;
      case wire_format.ConnectionResponseFrame_Status.REJECT:
      case wire_format.ConnectionResponseFrame_Status.UNKNOWN:
        delegate?.outboundConnectionFailedWithError(this, NearbyError.canceled(CancellationReason.userRejected));
        try {
          sendDisconnectionAndDisconnect();
        } catch (e) {
          print(e);
        }
        break;
      case wire_format.ConnectionResponseFrame_Status.NOT_ENOUGH_SPACE:
        delegate?.outboundConnectionFailedWithError(this, NearbyError.canceled(CancellationReason.notEnoughSpace));
        try {
          sendDisconnectionAndDisconnect();
        } catch (e) {
          print(e);
        }
        break;
      case wire_format.ConnectionResponseFrame_Status.TIMED_OUT:
        delegate?.outboundConnectionFailedWithError(this, NearbyError.canceled(CancellationReason.timedOut));
        try {
          sendDisconnectionAndDisconnect();
        } catch (e) {
          print(e);
        }
        break;
      case wire_format.ConnectionResponseFrame_Status.UNSUPPORTED_ATTACHMENT_TYPE:
        delegate?.outboundConnectionFailedWithError(this, NearbyError.canceled(CancellationReason.unsupportedType));
        try {
          sendDisconnectionAndDisconnect();
        } catch (e) {
          print(e);
        }
        break;
    }
  }

  void _sendUrl() {
    sendBytesPayload(data: Uint8List.fromList(urlsToSend[0].codeUnits), id: textPayloadId);
    delegate?.outboundConnectionTransferFinished(this);
    try {
      sendDisconnectionAndDisconnect();
    } catch (e) {
      print(e);
    }
  }

  void _sendNextFileChunk() {
    if (cancelled) {
      return;
    }
    if (currentTransfer == null || currentTransfer!.currentOffset == currentTransfer!.totalBytes) {
      if (currentTransfer != null && currentTransfer!.handle != null) {
        try {
          currentTransfer!.handle!.close();
        } catch (e) {
          print(e);
        }
      }
      if (queue.isEmpty) {
        try {
          sendDisconnectionAndDisconnect();
        } catch (e) {
          print(e);
        }
        delegate?.outboundConnectionTransferFinished(this);
        return;
      }
      currentTransfer = queue.removeAt(0);
    }

    var fileBuffer = currentTransfer!.handle!.readSync(512 * 1024);
    if (fileBuffer.isEmpty) {
      throw NearbyError.inputOutput(cause: 'ioError');
    }

    var transfer = offline_wire_formats.PayloadTransferFrame();
    transfer.packetType = offline_wire_formats.PayloadTransferFrame_PacketType.DATA;
    transfer.payloadChunk = offline_wire_formats.PayloadTransferFrame_PayloadChunk();
    transfer.payloadChunk.offset = currentTransfer!.currentOffset;
    transfer.payloadChunk.flags = 0;
    transfer.payloadChunk.body = fileBuffer;
    transfer.payloadHeader = offline_wire_formats.PayloadTransferFrame_PayloadHeader();
    transfer.payloadHeader.id = currentTransfer!.payloadId;
    transfer.payloadHeader.type = offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.FILE;
    transfer.payloadHeader.totalSize = currentTransfer!.totalBytes;
    transfer.payloadHeader.isSensitive = false;
    currentTransfer!.currentOffset += Int64(fileBuffer.length);

    var wrapper = offline_wire_formats.OfflineFrame();
    wrapper.version = offline_wire_formats.OfflineFrame_Version.V1;
    wrapper.v1 = offline_wire_formats.V1Frame();
    wrapper.v1.type = offline_wire_formats.V1Frame_FrameType.PAYLOAD_TRANSFER;
    wrapper.v1.payloadTransfer = transfer;
    try {
      encryptAndSendOfflineFrame(wrapper);
      _sendNextFileChunk();
    } catch (e) {
      lastError = e as Exception;
      protocolError();
    }
    if (kDebugMode) {
      print('sent file chunk, current transfer: $currentTransfer');
    }
    totalBytesSent += Int64(fileBuffer.length);
    delegate?.outboundConnectionTransferProgress(this, totalBytesSent.toInt() / totalBytesToSend.toInt());

    if (currentTransfer!.currentOffset == currentTransfer!.totalBytes) {
      var transfer = offline_wire_formats.PayloadTransferFrame();
      transfer.packetType = offline_wire_formats.PayloadTransferFrame_PacketType.DATA;
      transfer.payloadChunk = offline_wire_formats.PayloadTransferFrame_PayloadChunk();
      transfer.payloadChunk.offset = currentTransfer!.currentOffset;
      transfer.payloadChunk.flags = 1;
      transfer.payloadHeader = offline_wire_formats.PayloadTransferFrame_PayloadHeader();
      transfer.payloadHeader.id = currentTransfer!.payloadId;
      transfer.payloadHeader.type = offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.FILE;
      transfer.payloadHeader.totalSize = currentTransfer!.totalBytes;
      transfer.payloadHeader.isSensitive = false;

      var wrapper = offline_wire_formats.OfflineFrame();
      wrapper.version = offline_wire_formats.OfflineFrame_Version.V1;
      wrapper.v1 = offline_wire_formats.V1Frame();
      wrapper.v1.type = offline_wire_formats.V1Frame_FrameType.PAYLOAD_TRANSFER;
      wrapper.v1.payloadTransfer = transfer;
      try {
        encryptAndSendOfflineFrame(wrapper);
      } catch (e) {
        print(e);
      }
      if (kDebugMode) {
        print('sent EOF, current transfer: $currentTransfer');
      }
    }
  }

  String _sanitizeFileName(String name) {
    return name.replaceAll(RegExp(r'[\\/\\\\?%\\*:\\|\"<>=]'), '_');
  }
}

class OutgoingFileTransfer {
  final String url;
  final Int64 payloadId;
  final RandomAccessFile? handle;
  final Int64 totalBytes;
  Int64 currentOffset;

  OutgoingFileTransfer({
    required this.url,
    required this.payloadId,
    required this.handle,
    required this.totalBytes,
    required this.currentOffset,
  });
}

abstract class OutboundNearbyConnectionDelegate {
  void outboundConnectionWasEstablished(OutboundNearbyConnection connection);
  void outboundConnectionTransferProgress(OutboundNearbyConnection connection, double progress);
  void outboundConnectionTransferAccepted(OutboundNearbyConnection connection);
  void outboundConnectionFailedWithError(OutboundNearbyConnection connection, Exception error);
  void outboundConnectionTransferFinished(OutboundNearbyConnection connection);
}
