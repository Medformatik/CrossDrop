import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:crossdrop/nearby_share/inbound_nearby_connection.dart';
import 'package:crossdrop/nearby_share/protobuf/offline_wire_formats.pb.dart' as offline_wire_formats;
import 'package:crossdrop/nearby_share/protobuf/pb.dart';
import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart' as wire_format;
import 'package:fixnum/fixnum.dart';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

import 'package:crossdrop/nearby_share/data_extensions.dart';
import 'package:crossdrop/nearby_share/internal_file_info.dart';
import 'package:crossdrop/nearby_share/nearby_error.dart';
import 'package:crossdrop/nearby_share/remote_device_info.dart';
import 'package:pointycastle/export.dart';

class NearbyConnection {
  static int saneFrameLength = 5 * 1024 * 1024;

  final Socket connection;
  RemoteDeviceInfo? remoteDeviceInfo;
  final Map<Int64, List<int>> _payloadBuffers = {};
  bool encryptionDone = false;
  Map<int, InternalFileInfo> transferredFiles = {};
  final String id;
  Exception? lastException;
  bool _connectionClosed = false;

  // UKEY2-related state
  dynamic publicKey;
  dynamic privateKey;
  dynamic ukeyClientInitMsgData;
  dynamic ukeyServerInitMsgData;

  // SecureMessage encryption keys
  Uint8List? decryptKey;
  Uint8List? encryptKey;
  dynamic recvHmacKey;
  dynamic sendHmacKey;

  // SecureMessage sequence numbers
  int serverSeq = 0;
  int clientSeq = 0;

  String? pinCode;

  NearbyConnection({
    required this.connection,
    required this.id,
  });

  void start() {
    receiveFrameAsync();
  }

  void handleConnectionClosure() {
    print('Connection closed');
  }

  void protocolError() {
    disconnect();
  }

  void processReceivedFrame({required List<int> frameData}) {
    throw UnimplementedError();
  }

  void processTransferSetupFrame(wire_format.Frame frame) {
    throw UnimplementedError();
  }

  bool isServer() {
    throw UnimplementedError();
  }

  void processFileChunk(offline_wire_formats.PayloadTransferFrame frame) {
    protocolError();
  }

  void receiveFrameAsync() {
    connection.listen(
      (List<int> content) {
        if (_connectionClosed) {
          return;
        }

        if (content.isEmpty) {
          // Handle empty content or connection closure
          handleConnectionClosure();
          return;
        }

        final frameLength = ByteData.sublistView(Uint8List.fromList(content), 0, 4).getInt32(0, Endian.big);

        if (frameLength >= saneFrameLength) {
          lastException = NearbyError.protocolError('Unexpected packet length');
          protocolError();
          return;
        }

        // pass the frameData to processReceivedFrame
        processReceivedFrame(frameData: content);
      },
      onError: (e) {
        if (_connectionClosed) {
          return;
        }

        if (e is Exception) {
          lastException = e;
        } else {
          lastException = Exception(e.toString());
        }
        protocolError();
        return;
      },
      onDone: () {
        if (_connectionClosed) {
          return;
        }

        handleConnectionClosure();
        return;
      },
    );
  }

  Future<void> sendFrameAsync(Uint8List frame) async {
    var lengthPrefixedData = Uint8List(frame.length + 4);
    int length = frame.length;

    lengthPrefixedData[0] = (length >> 24) & 0xFF;
    lengthPrefixedData[1] = (length >> 16) & 0xFF;
    lengthPrefixedData[2] = (length >> 8) & 0xFF;
    lengthPrefixedData[3] = length & 0xFF;

    lengthPrefixedData.setRange(4, lengthPrefixedData.length, frame);

    connection.add(lengthPrefixedData);
    try {
      await connection.flush();
    } catch (e) {
      // Handle flush error
    }
  }

  Future<void> encryptAndSendOfflineFrame(offline_wire_formats.OfflineFrame frame) async {
    var d2dMsg = DeviceToDeviceMessage();
    serverSeq += 1;
    d2dMsg.sequenceNumber = serverSeq;
    d2dMsg.message = frame.writeToBuffer();

    var serializedMsg = Uint8List.fromList(d2dMsg.writeToBuffer());
    var iv = Data.randomData(16);
    var encryptedData = Uint8List(serializedMsg.length + 16);
    int encryptedLength = 0;
    try {
      encryptedData = Encryption.encryptList(data: serializedMsg, iv: iv, key: encryptKey!);
    } catch (e) {
      throw Exception('Encryption error: $e');
    }
    encryptedLength = encryptedData.length;

    var hb = HeaderAndBody();
    hb.body = Uint8List.fromList(encryptedData.sublist(0, encryptedLength));
    hb.header = Header();
    hb.header.encryptionScheme = EncScheme.AES_256_CBC;
    hb.header.signatureScheme = SigScheme.HMAC_SHA256;
    hb.header.iv = iv;
    var md = GcmMetadata();
    md.type = Type.DEVICE_TO_DEVICE_MESSAGE;
    md.version = 1;
    hb.header.publicMetadata = md.writeToBuffer();

    var smsg = SecureMessage();
    smsg.headerAndBody = hb.writeToBuffer();
    // Assuming you have a function `calculateHmac` for HMAC calculation
    smsg.signature = (await Hmac.sha256().calculateMac(smsg.headerAndBody, secretKey: sendHmacKey)).bytes;
    await sendFrameAsync(smsg.writeToBuffer());
  }

  void sendTransferSetupFrame(wire_format.Frame frame) {
    var transfer = offline_wire_formats.PayloadTransferFrame();
    transfer.packetType = offline_wire_formats.PayloadTransferFrame_PacketType.DATA;
    transfer.payloadChunk.offset = Int64(0);
    transfer.payloadChunk.flags = 0;
    transfer.payloadChunk.body = frame.writeToBuffer();
    transfer.payloadHeader.id = Int64(Random().nextInt(Int64.MAX_VALUE.toInt()));
    transfer.payloadHeader.type = offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.BYTES;
    transfer.payloadHeader.totalSize = Int64(transfer.payloadChunk.body.length);
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

    transfer.payloadChunk.flags = 1;
    transfer.payloadChunk.offset = Int64(transfer.payloadChunk.body.length);
    transfer.payloadChunk.clearBody();
    wrapper.v1.payloadTransfer = transfer;
    try {
      encryptAndSendOfflineFrame(wrapper);
    } catch (e) {
      print(e);
    }
  }

  Future<void> decryptAndProcessReceivedSecureMessage(SecureMessage smsg) async {
    if (!smsg.hasSignature() || !smsg.hasHeaderAndBody()) {
      throw NearbyError.requiredFieldMissing();
    }
    final hmac = (await Hmac.sha256().calculateMac(smsg.headerAndBody, secretKey: recvHmacKey)).bytes;
    if (hmac != smsg.signature) {
      throw NearbyError.protocolError("hmac!=signature");
    }
    final headerAndBody = HeaderAndBody.fromBuffer(smsg.headerAndBody);
    var decryptedData = Uint8List(headerAndBody.body.length);
    int decryptedLength = 0;
    try {
      decryptedData = Encryption.decryptList(data: Uint8List.fromList(headerAndBody.body), iv: Uint8List.fromList(headerAndBody.header.iv), key: decryptKey!);
    } catch (e) {
      throw Exception('Decryption error: $e');
    }
    decryptedLength = decryptedData.length;
    decryptedData = decryptedData.sublist(0, decryptedLength);

    final d2dMsg = DeviceToDeviceMessage.fromBuffer(decryptedData);
    if (!d2dMsg.hasMessage() || !d2dMsg.hasSequenceNumber()) {
      throw NearbyError.requiredFieldMissing();
    }
    clientSeq += 1;
    if (d2dMsg.sequenceNumber != clientSeq) {
      throw NearbyError.protocolError("Wrong sequence number. Expected $clientSeq, got ${d2dMsg.sequenceNumber}");
    }
    final offlineFrame = offline_wire_formats.OfflineFrame.fromBuffer(d2dMsg.message);
    if (!offlineFrame.hasV1() || !offlineFrame.v1.hasType()) {
      throw NearbyError.requiredFieldMissing();
    }

    if (offlineFrame.v1.type == offline_wire_formats.V1Frame_FrameType.PAYLOAD_TRANSFER) {
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
      if (header.type == offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.BYTES) {
        final payloadId = header.id;
        if (header.totalSize > InboundNearbyConnection.saneFrameLength) {
          _payloadBuffers.remove(payloadId);
          throw NearbyError.protocolError("Payload too large (${header.totalSize} bytes)");
        }
        if (_payloadBuffers[payloadId] == null) {
          _payloadBuffers[payloadId] = Uint8List(header.totalSize.toInt());
        }
        final buffer = _payloadBuffers[payloadId]!;
        if (chunk.offset != buffer.length) {
          _payloadBuffers.remove(payloadId);
          throw NearbyError.protocolError("Unexpected chunk offset ${chunk.offset}, expected ${buffer.length}");
        }
        if (chunk.hasBody()) {
          buffer.addAll(chunk.body);
        }
        if ((chunk.flags & 1) == 1) {
          _payloadBuffers.remove(payloadId);
          final innerFrame = wire_format.Frame.fromBuffer(Uint8List.fromList(buffer));
          processTransferSetupFrame(innerFrame);
        }
      } else if (header.type == offline_wire_formats.PayloadTransferFrame_PayloadHeader_PayloadType.FILE) {
        processFileChunk(payloadTransfer);
      }
    } else if (offlineFrame.v1.type == offline_wire_formats.V1Frame_FrameType.KEEP_ALIVE) {
      sendKeepAlive(ack: true);
    } else {
      print("Unhandled offline frame encrypted: $offlineFrame");
    }
  }

  String pinCodeFromAuthKey(SymmetricKey key) {
    int hash = 0;
    int multiplier = 1;
    List<int> keyBytes = key.extractBytes();

    for (int keyByte in keyBytes) {
      int byte = keyByte.toSigned(8);
      hash = (hash + byte * multiplier) % 9973;
      multiplier = (multiplier * 31) % 9973;
    }

    return hash.abs().toString().padLeft(4, '0');
  }

  void finalizeKeyExchange(GenericPublicKey peerKey) {
    if (!peerKey.hasEcP256PublicKey) {
      throw NearbyError.requiredFieldMissing;
    }

    final domain = Domain.instance(curve: ECCurve.P256);
    var clientX = peerKey.ecP256PublicKey.x;
    var clientY = peerKey.ecP256PublicKey.y;
    if (clientX.length > 32) {
      clientX = clientX.sublist(clientX.length - 32);
    }
    if (clientY.length > 32) {
      clientY = clientY.sublist(clientY.length - 32);
    }
    final key = ECPublicKey(
      domain: domain,
      w: Point(BigInt.fromBytes(clientX), BigInt.fromBytes(clientY)),
    );

    final dhs = (privateKey?.domain.multiplyPoint(key.w, privateKey!.s).x.asMagnitudeBytes())!;
    final sha = SHA256();
    sha.add(dhs);
    final derivedSecretKey = Uint8List.fromList(sha.digest());

    final ukeyInfo = <int>[];
    ukeyInfo.addAll(ukeyClientInitMsgData!);
    ukeyInfo.addAll(ukeyServerInitMsgData!);
    final authString = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: SymmetricKey(derivedSecretKey),
      salt: utf8.encode("UKEY2 v1 auth"),
      info: Uint8List.fromList(ukeyInfo),
      outputLength: 32,
    );
    final nextSecret = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: SymmetricKey(derivedSecretKey),
      salt: utf8.encode("UKEY2 v1 next"),
      info: Uint8List.fromList(ukeyInfo),
      outputLength: 32,
    );

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

    final d2dClientKey = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: nextSecret,
      salt: salt,
      info: utf8.encode("client"),
      outputLength: 32,
    );
    final d2dServerKey = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: nextSecret,
      salt: salt,
      info: utf8.encode("server"),
      outputLength: 32,
    );

    sha.reset();
    sha.add(utf8.encode("SecureMessage"));
    final smsgSalt = Uint8List.fromList(sha.digest());

    final clientKey = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: d2dClientKey,
      salt: smsgSalt,
      info: utf8.encode("ENC:2"),
      outputLength: 32,
    );
    final clientHmacKey = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: d2dClientKey,
      salt: smsgSalt,
      info: utf8.encode("SIG:1"),
      outputLength: 32,
    );
    final serverKey = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: d2dServerKey,
      salt: smsgSalt,
      info: utf8.encode("ENC:2"),
      outputLength: 32,
    );
    final serverHmacKey = HKDF<SHA256>().deriveKey(
      inputKeyMaterial: d2dServerKey,
      salt: smsgSalt,
      info: utf8.encode("SIG:1"),
      outputLength: 32,
    );

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

  Future<void> disconnect() async {
    connection.add(Uint8List.fromList([]));
    await connection.flush();
    await connection.close();
    handleConnectionClosure();

    _connectionClosed = true;
  }

  Future<void> sendDisconnectionAndDisconnect() async {
    var offlineFrame = offline_wire_formats.OfflineFrame();
    offlineFrame.version = offline_wire_formats.OfflineFrame_Version.V1;
    offlineFrame.v1.type = offline_wire_formats.V1Frame_FrameType.DISCONNECTION;
    offlineFrame.v1.disconnection = offline_wire_formats.DisconnectionFrame();

    if (encryptionDone) {
      try {
        await encryptAndSendOfflineFrame(offlineFrame);
      } catch (e) {
        // Handle encryption error
      }
    } else {
      await sendFrameAsync(offlineFrame.writeToBuffer());
    }
    await disconnect();
  }

  Future<void> sendUkey2Alert(Ukey2Alert_AlertType type) async {
    var alert = Ukey2Alert();
    alert.type = type;
    var msg = Ukey2Message();
    msg.messageType = Ukey2Message_Type.ALERT;
    msg.messageData = alert.writeToBuffer();
    await sendFrameAsync(msg.writeToBuffer());
    await disconnect();
  }

  Future<void> sendKeepAlive({required bool ack}) async {
    var offlineFrame = offline_wire_formats.OfflineFrame();
    offlineFrame.version = offline_wire_formats.OfflineFrame_Version.V1;
    offlineFrame.v1.type = offline_wire_formats.V1Frame_FrameType.KEEP_ALIVE;
    offlineFrame.v1.keepAlive.ack = ack;

    try {
      if (encryptionDone) {
        await encryptAndSendOfflineFrame(offlineFrame);
      } else {
        await sendFrameAsync(offlineFrame.writeToBuffer());
      }
    } catch (error) {
      print('Error sending KEEP_ALIVE: $error');
    }
  }
}

class Encryption {
  static String encrypt({
    required String text,
    required Uint8List iv,
    required Uint8List key,
  }) {
    return base64Encode(encryptList(data: Uint8List.fromList(utf8.encode(text)), iv: iv, key: key));
  }

  static Uint8List encryptList({
    required Uint8List data,
    required Uint8List iv,
    required Uint8List key,
  }) {
    final CBCBlockCipher cbcCipher = CBCBlockCipher(AESEngine());
    final ParametersWithIV<KeyParameter> ivParams = ParametersWithIV<KeyParameter>(KeyParameter(key), iv);
    final paddingParams = PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null>(ivParams, null);

    final PaddedBlockCipherImpl paddedCipher = PaddedBlockCipherImpl(PKCS7Padding(), cbcCipher);
    paddedCipher.init(true, paddingParams);

    try {
      return paddedCipher.process(data);
    } catch (e) {
      rethrow;
    }
  }

  static String decrypt({
    required String data,
    required Uint8List iv,
    required Uint8List key,
  }) =>
      utf8.decode(decryptList(data: base64Decode(data), iv: iv, key: key).toList());

  static Uint8List decryptList({
    required Uint8List data,
    required Uint8List iv,
    required Uint8List key,
  }) {
    final CBCBlockCipher cbcCipher = CBCBlockCipher(AESEngine());
    final ParametersWithIV<KeyParameter> ivParams = ParametersWithIV<KeyParameter>(KeyParameter(key), iv);
    final paddingParams = PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null>(ivParams, null);
    final PaddedBlockCipherImpl paddedCipher = PaddedBlockCipherImpl(PKCS7Padding(), cbcCipher);
    paddedCipher.init(false, paddingParams);

    try {
      return paddedCipher.process(data);
    } catch (e) {
      rethrow;
    }
  }
}
