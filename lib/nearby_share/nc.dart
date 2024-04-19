import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:crossdrop/nearby_share/protobuf/ukey.pb.dart' as ukey;
import 'package:fixnum/fixnum.dart';
import 'package:crossdrop/nearby_share/nc_manager.dart';
import 'package:crossdrop/nearby_share/protobuf/device_to_device_messages.pb.dart' as device_to_device_messages;
import 'package:crossdrop/nearby_share/protobuf/offline_wire_formats.pb.dart' as offline_wire_formats;
import 'package:crossdrop/nearby_share/protobuf/securegcm.pb.dart' as securegcm;
import 'package:crossdrop/nearby_share/protobuf/securemessage.pb.dart' as securemessage;
import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart' as wire_format;
import 'package:pointycastle/export.dart';

class FatalError extends Error {}

class ProtocolError extends Error {}

class NearbyConnection {
  static const saneFrameLength = 5 * 1024 * 1024;

  final Socket connection;
  RemoteDeviceInfo? remoteDeviceInfo;
  final Map<int, Uint8List> payloadBuffers = {};
  bool encryptionDone = false;
  final Map<Int64, InternalFileInfo> transferredFiles = {};
  final String id;
  Exception? lastError;
  bool connectionClosed = false;

  // UKEY2-related state
  ECPublicKey? publicKey;
  ECPrivateKey? privateKey;
  Uint8List? ukeyClientInitMsgData;
  Uint8List? ukeyServerInitMsgData;

  // SecureMessage encryption keys
  Uint8List? decryptKey;
  Uint8List? encryptKey;
  Uint8List? recvHmacKey;
  Uint8List? sendHmacKey;

  // SecureMessage sequence numbers
  int serverSeq = 0;
  int clientSeq = 0;

  String? pinCode;

  NearbyConnection({
    required this.connection,
    required this.id,
  });

  void start() {
    connection.listen((data) {
      // connectionReady();
      // TODO: handle data
      // receiveFrameAsync(data);
    }, onError: (error) {
      lastError = error;
      print("Error opening socket: $error");
      handleConnectionClosure();
    }, onDone: () {
      handleConnectionClosure();
    });
  }

  void connectionReady() {}

  void handleConnectionClosure() {
    print('Connection closed');
  }

  void protocolError() {
    disconnect();
  }

  void processReceivedFrame(Uint8List frameData) {
    throw UnimplementedError();
  }

  void processTransferSetupFrame(wire_format.Frame frame) {
    throw UnimplementedError();
  }

  bool isServer() {
    throw UnimplementedError();
  }

  Future<void> processFileChunk(offline_wire_formats.PayloadTransferFrame frame) {
    protocolError();
    return Future.value();
  }

  bool processBytesPayload(Uint8List payload, int id) {
    return false;
  }

  /* void receiveFrameAsync(Uint8List content) {
    if (connectionClosed) {
      return;
    }
    final frameLength = content[0] << 24 | content[1] << 16 | content[2] << 8 | content[3];
    if (frameLength >= saneFrameLength) {
      lastError = NearbyError.protocolError("Unexpected packet length");
      protocolError();
    }
    processReceivedFrame(content);
  } */

  void receiveFrameAsync() {
    connection.listen(
      (data) {
        if (connectionClosed) {
          return;
        }
        if (data.length < 4) {
          handleConnectionClosure();
          return;
        }
        int frameLength = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
        if (frameLength > NearbyConnection.saneFrameLength) {
          throw NearbyError.protocolError('Unexpected packet length');
        }
        receiveFrameAsyncLength(length: frameLength);
      },
      onError: (error) {
        lastError = error;
        protocolError();
      },
      onDone: () {
        handleConnectionClosure();
      },
    );
  }

  void receiveFrameAsyncLength({required int length}) {
    connection.listen(
      (data) {
        if (connectionClosed) {
          return;
        }
        if (data.length < length) {
          handleConnectionClosure();
          return;
        }
        processReceivedFrame(data);
        receiveFrameAsync();
      },
      onError: (error) {
        lastError = error;
        protocolError();
      },
      onDone: () {
        handleConnectionClosure();
      },
    );
  }

  void sendFrameAsync(Uint8List frame) {
    if (connectionClosed) {
      return;
    }
    final lengthPrefixedData = Uint8List(frame.length + 4);
    final length = frame.length;
    lengthPrefixedData[0] = length >> 24;
    lengthPrefixedData[1] = length >> 16;
    lengthPrefixedData[2] = length >> 8;
    lengthPrefixedData[3] = length;
    lengthPrefixedData.setRange(4, frame.length + 4, frame);
    connection.add(lengthPrefixedData);
  }

  Future<void> encryptAndSendOfflineFrame(offline_wire_formats.OfflineFrame frame) async {
    serverSeq++;
    final d2dMsg = device_to_device_messages.DeviceToDeviceMessage()
      ..sequenceNumber = serverSeq
      ..message = frame.writeToBuffer();
    Uint8List serializedMsg = d2dMsg.writeToBuffer();
    final iv = Uint8List(16);
    Uint8List encryptedData = Uint8List(serializedMsg.length + 16);
    int encryptedLength = 0;
    final key = KeyParameter(encryptKey!);
    final params = ParametersWithIV(key, iv);
    final cipher = BlockCipher('AES/CTR');
    cipher.init(true, params);
    encryptedData = cipher.process(Uint8List.fromList(serializedMsg));
    encryptedLength = encryptedData.length;

    final hb = securemessage.HeaderAndBody()
      ..body = Uint8List.fromList(encryptedData.sublist(0, encryptedLength))
      ..header = securemessage.Header()
      ..header.encryptionScheme = securemessage.EncScheme.AES_256_CBC
      ..header.signatureScheme = securemessage.SigScheme.HMAC_SHA256
      ..header.iv = iv;
    final md = securegcm.GcmMetadata()
      ..type = securegcm.Type.DEVICE_TO_DEVICE_MESSAGE
      ..version = 1;
    hb.header.publicMetadata = md.writeToBuffer();

    final hmac = HMac(SHA256Digest(), 64);
    hmac.init(KeyParameter(sendHmacKey!));
    final hbData = hb.writeToBuffer();
    final smsg = securemessage.SecureMessage()
      ..headerAndBody = hbData
      ..signature = Uint8List.fromList(hmac.process(hbData));
    sendFrameAsync(smsg.writeToBuffer());
  }

  void sendTransferSetupFrame(wire_format.Frame frame) {
    sendBytesPayload(data: frame.writeToBuffer(), id: Int64(Random().nextInt(1 << 63) - (1 << 63)));
  }

  void sendBytesPayload({required Uint8List data, required Int64 id}) {
    final transfer = offline_wire_formats.PayloadTransferFrame()
      ..packetType = offline_wire_formats.PayloadTransferFrame_PacketType.DATA
      ..payloadChunk = offline_wire_formats.PayloadTransferFrame_PayloadChunk()
      ..payloadChunk.offset = Int64(0)
      ..payloadChunk.flags = 0
      ..payloadChunk.body = data
      ..payloadHeader = offline_wire_formats.PayloadTransferFrame_PayloadHeader()
      ..payloadHeader.id = id
      ..payloadHeader.type = offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.BYTES
      ..payloadHeader.totalSize = Int64(data.length)
      ..payloadHeader.isSensitive = false;

    final wrapper = offline_wire_formats.OfflineFrame()
      ..version = offline_wire_formats.OfflineFrame_Version.V1
      ..v1 = offline_wire_formats.V1Frame()
      ..v1.type = offline_wire_formats.V1Frame_FrameType.PAYLOAD_TRANSFER
      ..v1.payloadTransfer = transfer;
    encryptAndSendOfflineFrame(wrapper);

    transfer.payloadChunk.flags = 1; // .lastChunk
    transfer.payloadChunk.offset = Int64(transfer.payloadChunk.body.length);
    transfer.payloadChunk.clearBody();
    wrapper.v1.payloadTransfer = transfer;
    encryptAndSendOfflineFrame(wrapper);
  }

  Future<void> decryptAndProcessReceivedSecureMessage(securemessage.SecureMessage smsg) async {
    if (!smsg.hasSignature() || !smsg.hasHeaderAndBody()) {
      throw NearbyError.requiredFieldMissing();
    }
    final hmac = HMac(SHA256Digest(), 64);
    hmac.init(KeyParameter(recvHmacKey!));
    final hmacData = hmac.process(Uint8List.fromList(smsg.headerAndBody));
    if (hmacData != smsg.signature) {
      throw NearbyError.protocolError("hmac!=signature");
    }
    final headerAndBody = securemessage.HeaderAndBody.fromBuffer(smsg.headerAndBody);
    Uint8List decryptedData = Uint8List(headerAndBody.body.length);
    final key = KeyParameter(decryptKey!);
    final params = ParametersWithIV(key, Uint8List.fromList(headerAndBody.header.iv));
    final cipher = BlockCipher('AES/CTR');
    cipher.init(false, params);
    decryptedData = cipher.process(Uint8List.fromList(headerAndBody.body));
    final decryptedLength = decryptedData.length;
    final d2dMsg = device_to_device_messages.DeviceToDeviceMessage.fromBuffer(decryptedData.sublist(0, decryptedLength));
    if (!d2dMsg.hasMessage() || !d2dMsg.hasSequenceNumber()) {
      throw NearbyError.requiredFieldMissing();
    }
    clientSeq++;
    if (d2dMsg.sequenceNumber != clientSeq) {
      throw NearbyError.protocolError("Wrong sequence number. Expected $clientSeq, got ${d2dMsg.sequenceNumber}");
    }
    final offlineFrame = offline_wire_formats.OfflineFrame.fromBuffer(d2dMsg.message);
    if (!offlineFrame.hasV1() || !offlineFrame.v1.hasType()) {
      throw NearbyError.requiredFieldMissing();
    }
    if (offline_wire_formats.V1Frame_FrameType.PAYLOAD_TRANSFER == offlineFrame.v1.type) {
      if (!offlineFrame.v1.hasPayloadTransfer()) {
        throw NearbyError.requiredFieldMissing();
      }
      final payloadTransfer = offlineFrame.v1.payloadTransfer;
      final header = payloadTransfer.payloadHeader;
      final chunk = payloadTransfer.payloadChunk;
      if (!header.hasType() || !header.hasId()) {
        throw NearbyError.requiredFieldMissing();
      }
      if (!payloadTransfer.hasPayloadChunk() || !chunk.hasOffset() || !chunk.hasFlags()) {
        throw NearbyError.requiredFieldMissing();
      }
      if (offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.BYTES == header.type) {
        final payloadId = header.id.toInt();
        if (header.totalSize.toInt() > saneFrameLength) {
          payloadBuffers.remove(payloadId);
          throw NearbyError.protocolError("Payload too large (${header.totalSize} bytes)");
        }
        if (payloadBuffers[payloadId] == null) {
          payloadBuffers[payloadId] = Uint8List(header.totalSize.toInt());
        }
        final buffer = payloadBuffers[payloadId]!;
        if (chunk.offset.toInt() != buffer.length) {
          payloadBuffers.remove(payloadId);
          throw NearbyError.protocolError("Unexpected chunk offset ${chunk.offset}, expected ${buffer.length}");
        }
        if (chunk.hasBody()) {
          buffer.setAll(buffer.length, chunk.body);
        }
        if ((chunk.flags & 1) == 1) {
          payloadBuffers.remove(payloadId);
          if (!await processBytesPayload(buffer, payloadId)) {
            final innerFrame = wire_format.Frame.fromBuffer(buffer);
            processTransferSetupFrame(innerFrame);
          }
        }
      } else if (offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.FILE == header.type) {
        processFileChunk(payloadTransfer);
      }
    } else if (offline_wire_formats.V1Frame_FrameType.KEEP_ALIVE == offlineFrame.v1.type) {
      print("Sent keep-alive");
      sendKeepAlive(true);
    } else {
      print("Unhandled offline frame encrypted: $offlineFrame");
    }
  }

  static String pinCodeFromAuthKey(Uint8List key) {
    int hash = 0;
    int multiplier = 1;
    for (var i = 0; i < key.length; i++) {
      final byte = key[i];
      final byteInt = byte < 128 ? byte : byte - 256;
      hash = (hash + byteInt * multiplier) % 9973;
      multiplier = (multiplier * 31) % 9973;
    }
    return hash.abs().toString().padLeft(4, '0');
  }

  Future<void> finalizeKeyExchange({required securemessage.GenericPublicKey peerKey}) async {
    if (!peerKey.hasEcP256PublicKey()) {
      throw NearbyError.requiredFieldMissing();
    }

    final domain = ECCurve_secp256r1();
    var clientX = peerKey.ecP256PublicKey.x;
    var clientY = peerKey.ecP256PublicKey.y;
    if (clientX.length > 32) {
      clientX = clientX.sublist(clientX.length - 32);
    }
    if (clientY.length > 32) {
      clientY = clientY.sublist(clientY.length - 32);
    }

    final key = ECPublicKey(
      domain.curve.createPoint(BigInt.parse(bytesToHex(Uint8List.fromList(clientX)), radix: 16), BigInt.parse(bytesToHex(Uint8List.fromList(clientY)), radix: 16)),
      domain,
    );

    final dhs = privateKey!.d! * key.Q!.x!.toBigInteger()!;
    var bytes = utf8.encode(dhs.toRadixString(16)); // convert BigInt to bytes
    var derivedSecretKey = SHA256Digest().process(bytes);

    final ukeyInfo = Uint8List.fromList([...ukeyClientInitMsgData!, ...ukeyServerInitMsgData!]);
    final authString = hkdfDeriveKey(derivedSecretKey, Uint8List.fromList(utf8.encode("UKEY v1 auth")), ukeyInfo, 32);
    final nextSecret = hkdfDeriveKey(derivedSecretKey, Uint8List.fromList(utf8.encode("UKEY v1 next")), ukeyInfo, 32);

    pinCode = pinCodeFromAuthKey(authString);

    final salt = Uint8List.fromList([
      0x82,
      0xAA,
      0x55,
      0xA0,
      0xD3,
      0x97,
      0xF8,
      0x83,
      0x46,
      0xCA,
      0x1C,
      0xEE,
      0x8D,
      0x39,
      0x09,
      0xB9,
      0x5F,
      0x13,
      0xFA,
      0x7D,
      0xEB,
      0x1D,
      0x4A,
      0xB3,
      0x83,
      0x76,
      0xB8,
      0x25,
      0x6D,
      0xA8,
      0x55,
      0x10,
    ]);

    final d2dClientKey = hkdfDeriveKey(nextSecret, salt, Uint8List.fromList(utf8.encode("client")), 32);
    final d2dServerKey = hkdfDeriveKey(nextSecret, salt, Uint8List.fromList(utf8.encode("server")), 32);

    final smsgSalt = SHA256Digest().process(utf8.encode("SecureMessage"));

    /*
    let clientKey=HKDF<SHA256>.deriveKey(inputKeyMaterial: d2dClientKey, salt: smsgSalt, info: "ENC:2".data(using: .utf8)!, outputByteCount: 32).withUnsafeBytes({return [UInt8]($0)})
		let clientHmacKey=HKDF<SHA256>.deriveKey(inputKeyMaterial: d2dClientKey, salt: smsgSalt, info: "SIG:1".data(using: .utf8)!, outputByteCount: 32)
		let serverKey=HKDF<SHA256>.deriveKey(inputKeyMaterial: d2dServerKey, salt: smsgSalt, info: "ENC:2".data(using: .utf8)!, outputByteCount: 32).withUnsafeBytes({return [UInt8]($0)})
		let serverHmacKey=HKDF<SHA256>.deriveKey(inputKeyMaterial: d2dServerKey, salt: smsgSalt, info: "SIG:1".data(using: .utf8)!, outputByteCount: 32)
    */

    final clientKey = hkdfDeriveKey(d2dClientKey, smsgSalt, Uint8List.fromList(utf8.encode("ENC:2")), 32);
    final clientHmacKey = hkdfDeriveKey(d2dClientKey, smsgSalt, Uint8List.fromList(utf8.encode("SIG:1")), 32);
    final serverKey = hkdfDeriveKey(d2dServerKey, smsgSalt, Uint8List.fromList(utf8.encode("ENC:2")), 32);
    final serverHmacKey = hkdfDeriveKey(d2dServerKey, smsgSalt, Uint8List.fromList(utf8.encode("SIG:1")), 32);

    if (isServer()) {
      decryptKey = clientKey;
      recvHmacKey = clientHmacKey;
      encryptKey = serverKey;
      sendHmacKey = serverHmacKey;
    } else {
      decryptKey = serverKey;
      recvHmacKey = serverHmacKey;
      encryptKey = clientKey;
      sendHmacKey = clientHmacKey;
    }
  }

  Uint8List hkdfDeriveKey(Uint8List inputKey, Uint8List salt, Uint8List info, int outputLength) {
    final hkdf = HKDFKeyDerivator(SHA256Digest());
    hkdf.init(HkdfParameters(inputKey, outputLength, salt, info));
    // TODO: verify that this is the correct way to get the derived key
    return hkdf.process(Uint8List(outputLength));
  }

  String bytesToHex(Uint8List bytes) {
    return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
  }

  Future<void> disconnect() async {
    handleConnectionClosure();
    await connection.close();
    connectionClosed = true;
  }

  Future<void> sendDisconnectionAndDisconnect() async {
    final offlineFrame = offline_wire_formats.OfflineFrame()
      ..version = offline_wire_formats.OfflineFrame_Version.V1
      ..v1.type = offline_wire_formats.V1Frame_FrameType.DISCONNECTION
      ..v1.disconnection = offline_wire_formats.DisconnectionFrame();
    if (encryptionDone) {
      await encryptAndSendOfflineFrame(offlineFrame);
    } else {
      sendFrameAsync(offlineFrame.writeToBuffer());
    }
    disconnect();
  }

  void sendUkey2Alert(ukey.Ukey2Alert_AlertType type) {
    final alert = ukey.Ukey2Alert()..type = type;
    final msg = ukey.Ukey2Message()
      ..messageType = ukey.Ukey2Message_Type.ALERT
      ..messageData = alert.writeToBuffer();
    sendFrameAsync(msg.writeToBuffer());
    disconnect();
  }

  void sendKeepAlive(bool ack) {
    final offlineFrame = offline_wire_formats.OfflineFrame()
      ..version = offline_wire_formats.OfflineFrame_Version.V1
      ..v1.type = offline_wire_formats.V1Frame_FrameType.KEEP_ALIVE
      ..v1.keepAlive.ack = ack;
    if (encryptionDone) {
      encryptAndSendOfflineFrame(offlineFrame);
    } else {
      sendFrameAsync(offlineFrame.writeToBuffer());
    }
  }
}

class InternalFileInfo {
  final wire_format.FileMetadata meta;
  final Int64 payloadId;
  final String destinationUrl;
  int bytesTransferred = 0;
  File? file;
  Progress? progress;
  bool created = false;

  InternalFileInfo({
    required this.meta,
    required this.payloadId,
    required this.destinationUrl,
    this.bytesTransferred = 0,
    this.file,
    this.progress,
    this.created = false,
  });
}

class Progress {
  final int totalUnitCount;
  final int completedUnitCount;

  Progress(this.totalUnitCount, this.completedUnitCount);

  double get fractionCompleted => completedUnitCount / totalUnitCount;

  bool get isFinished => completedUnitCount == totalUnitCount;
}
