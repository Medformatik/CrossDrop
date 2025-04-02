import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:crossdrop/nearby_share/api/models.dart';
import 'package:crossdrop/nearby_share/protobuf/device_to_device_messages.pb.dart'
    as d2d;
import 'package:crossdrop/nearby_share/protobuf/offline_wire_formats.pb.dart'
    as offline;
import 'package:crossdrop/nearby_share/protobuf/securegcm.pb.dart' as securegcm;
import 'package:crossdrop/nearby_share/protobuf/securemessage.pb.dart' as sm;
import 'package:crossdrop/nearby_share/protobuf/ukey.pb.dart' as ukey;
import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart' as wire;
import 'package:crossdrop/nearby_share/utils/data_extension.dart';
import 'package:crossdrop/nearby_share/crypto/crypto_utils.dart';
import 'package:cryptography/cryptography.dart';
import 'package:fixnum/fixnum.dart';
import 'package:pointycastle/export.dart' as pc;

// Constants
const int saneFrameLength = 5 * 1024 * 1024; // 5 MiB

// Base class for Nearby Connections
abstract class NearbyConnection {
  final Socket _socket;
  RemoteDeviceInfo? remoteDeviceInfo;
  final Map<int, List<int>> _payloadBuffers =
      {}; // Use List<int> which Uint8List implements
  bool encryptionDone = false;
  final Map<int, InternalFileInfo> transferredFiles = {};
  final String id; // Unique identifier for this connection instance
  Exception? lastError;
  bool connectionClosed = false;
  StreamSubscription<Uint8List>? _socketSubscription;
  final Completer<void> _closedCompleter = Completer<void>();

  // UKEY2 state
  pc.ECPublicKey? ukeyPublicKey; // PointyCastle keys
  pc.ECPrivateKey? ukeyPrivateKey;
  Uint8List? ukeyClientInitMsgData;
  Uint8List? ukeyServerInitMsgData;

  // SecureMessage encryption keys
  SecretKey? decryptKey;
  SecretKey? encryptKey;
  SecretKey? recvHmacKey;
  SecretKey? sendHmacKey;

  // SecureMessage sequence numbers
  int _serverSeq = 0;
  int _clientSeq = 0;

  String? _pinCode;
  String? get pinCode => _pinCode;

  NearbyConnection(this._socket, this.id) {
    print(
      'NearbyConnection created for $id with ${_socket.remoteAddress}:${_socket.remotePort}',
    );
  }

  // Start listening for data and handling connection state
  void start() {
    _socketSubscription = _socket.listen(
      _onDataReceived,
      onError: _onError,
      onDone: _onDone,
      cancelOnError: true,
    );
    connectionReady();
  }

  // Called when the socket is ready (or assumed ready after creation)
  void connectionReady() {
    print('Connection $id is ready.');
  }

  // Handles incoming raw data from the socket
  final List<int> _receiveBuffer = [];
  void _onDataReceived(Uint8List data) {
    _receiveBuffer.addAll(data);
    // print('Connection $id received ${data.length} bytes. Buffer size: ${_receiveBuffer.length}');

    while (_receiveBuffer.length >= 4) {
      // Read length prefix (4 bytes, big-endian)
      final lengthBytes = Uint8List.fromList(_receiveBuffer.sublist(0, 4));
      final length = ByteData.view(lengthBytes.buffer).getUint32(0, Endian.big);

      // print('Connection $id: Expecting frame length: $length');

      if (length > saneFrameLength) {
        lastError = NearbyProtocolException(
          "Frame length $length exceeds SANE_FRAME_LENGTH $saneFrameLength",
        );
        _reportError(lastError!);
        protocolError(); // This should close the connection
        return;
      }

      if (_receiveBuffer.length >= 4 + length) {
        // We have a complete frame
        final frameData = Uint8List.fromList(
          _receiveBuffer.sublist(4, 4 + length),
        );
        _receiveBuffer.removeRange(0, 4 + length);
        // print('Connection $id: Processing frame of length ${frameData.length}. Remaining buffer: ${_receiveBuffer.length}');
        try {
          processReceivedFrame(frameData);
        } catch (e, s) {
          print('Connection $id: Error processing frame: $e\n$s');
          lastError = (e is Exception) ? e : Exception(e.toString());
          _reportError(lastError!);
          protocolError();
        }
      } else {
        // Need more data for the current frame
        // print('Connection $id: Incomplete frame, need ${4 + length}, have ${_receiveBuffer.length}');
        break; // Exit the loop, wait for more data
      }
    }
  }

  // Called when an error occurs on the socket
  void _onError(Object error, StackTrace stackTrace) {
    if (connectionClosed) return;
    print('Connection $id socket error: $error\n$stackTrace');
    lastError = (error is Exception) ? error : Exception(error.toString());
    connectionClosed = true; // Mark as closed due to error
    _reportError(lastError!); // Report specific error
    handleConnectionClosure();
    if (!_closedCompleter.isCompleted) {
      _closedCompleter.complete();
    }
    _socket.destroy();
  }

  // Called when the socket is closed by the remote peer
  void _onDone() {
    if (connectionClosed) return;
    print('Connection $id closed by remote peer.');
    connectionClosed = true;
    handleConnectionClosure(); // General closure handling
    if (!_closedCompleter.isCompleted) {
      _closedCompleter.complete();
    }
    _socket.destroy();
  }

  // Abstract method to be implemented by subclasses for frame processing logic
  void processReceivedFrame(Uint8List frameData);

  // Abstract method for handling decrypted setup frames (Introduction, Response, etc.)
  Future<void> processTransferSetupFrame(wire.Frame frame);

  // Abstract method to determine if this is the server side of the connection
  bool isServer();

  // Handles receiving chunks of a file payload
  Future<void> processFileChunk(offline.PayloadTransferFrame frame) async {
    throw NearbyProtocolException(
      'processFileChunk should be overridden by subclass',
    );
  }

  // Handles receiving a complete BYTES payload
  // Return true if handled, false otherwise (e.g., it's a setup frame)
  Future<bool> processBytesPayload(Uint8List payload, int payloadId) async {
    return false; // Default: not handled here
  }

  // Sends a raw frame with length prefix
  void sendFrame(List<int> frame, {void Function()? completion}) {
    if (connectionClosed) {
      print('Attempted to send on closed connection $id');
      return;
    }
    try {
      final length = frame.length;
      final lengthBytes = ByteData(4);
      lengthBytes.setUint32(0, length, Endian.big);

      _socket.add(lengthBytes.buffer.asUint8List());
      _socket.add(frame);
      // print('Connection $id sent frame of length $length');

      // Note: Dart sockets don't have direct per-write completion callbacks like NWConnection.
      // Flushing might help ensure it's sent, but doesn't guarantee processing by the peer.
      // Use Future chaining or track state if precise send completion is critical.
      _socket
          .flush()
          .then((_) {
            completion?.call();
          })
          .catchError((e, s) {
            print('Connection $id: Error flushing socket after send: $e\n$s');
            _onError(e, s);
          });
    } catch (e, s) {
      print('Connection $id: Error sending frame: $e\n$s');
      _onError(e, s);
    }
  }

  // Encrypts and sends an OfflineFrame using SecureMessage
  Future<void> encryptAndSendOfflineFrame(
    offline.OfflineFrame frame, {
    void Function()? completion,
  }) async {
    if (encryptKey == null || sendHmacKey == null) {
      throw StateError('Encryption keys not initialized');
    }

    final d2dMsg = d2d.DeviceToDeviceMessage(
      sequenceNumber: isServer() ? ++_serverSeq : ++_clientSeq,
      message: frame.writeToBuffer(),
    );

    final serializedMsg = d2dMsg.writeToBuffer();
    final iv = generateRandomBytes(16); // AES-CBC IV size

    // Encrypt using AES-256-CBC
    final encryptedBody = await aes256CbcEncrypt(
      serializedMsg,
      encryptKey!,
      iv,
    );

    final header = sm.Header(
      encryptionScheme: sm.EncScheme.AES_256_CBC,
      signatureScheme: sm.SigScheme.HMAC_SHA256,
      iv: iv,
      // publicMetadata needs GcmMetadata
      publicMetadata:
          securegcm.GcmMetadata(
            type: securegcm.Type.DEVICE_TO_DEVICE_MESSAGE,
            version: 1,
          ).writeToBuffer(),
    );

    final headerAndBody = sm.HeaderAndBody(header: header, body: encryptedBody);

    final headerAndBodyBytes = headerAndBody.writeToBuffer();

    // Calculate HMAC-SHA256 signature
    final mac = await hmacSha256(headerAndBodyBytes, sendHmacKey!);

    final secureMessage = sm.SecureMessage(
      headerAndBody: headerAndBodyBytes,
      signature: mac.bytes,
    );

    sendFrame(secureMessage.writeToBuffer(), completion: completion);
  }

  // Sends a setup frame (like Introduction, Response) as a BYTES payload
  Future<void> sendTransferSetupFrame(wire.Frame frame) async {
    await sendBytesPayload(
      data: frame.writeToBuffer(),
      payloadId: Random().nextInt(0x7FFFFFFF),
    ); // Use positive random int64
  }

  // Sends data as a BYTES payload (potentially chunked, but simpler for setup frames)
  Future<void> sendBytesPayload({
    required List<int> data,
    required int payloadId,
  }) async {
    final header = offline.PayloadTransferFrame_PayloadHeader(
      id: Int64(payloadId),
      type: offline.PayloadTransferFrame_PayloadHeader_PayloadType.BYTES,
      totalSize: Int64(data.length),
      isSensitive: false,
    );

    // Send DATA packet
    final dataChunk = offline.PayloadTransferFrame_PayloadChunk(
      offset: Int64(0),
      flags: 0,
      body: data,
    );
    final dataTransfer = offline.PayloadTransferFrame(
      packetType: offline.PayloadTransferFrame_PacketType.DATA,
      payloadHeader: header,
      payloadChunk: dataChunk,
    );
    final dataWrapper = offline.OfflineFrame(
      version: offline.OfflineFrame_Version.V1,
      v1: offline.V1Frame(
        type: offline.V1Frame_FrameType.PAYLOAD_TRANSFER,
        payloadTransfer: dataTransfer,
      ),
    );
    await encryptAndSendOfflineFrame(dataWrapper);

    // Send CONTROL packet (EOF for BYTES)
    final eofChunk = offline.PayloadTransferFrame_PayloadChunk(
      offset: Int64(data.length),
      flags: 1, // LAST_CHUNK
    );
    final eofTransfer = offline.PayloadTransferFrame(
      packetType:
          offline
              .PayloadTransferFrame_PacketType
              .DATA, // Still DATA type for chunk flags
      payloadHeader: header, // Repeat header
      payloadChunk: eofChunk,
    );
    final eofWrapper = offline.OfflineFrame(
      version: offline.OfflineFrame_Version.V1,
      v1: offline.V1Frame(
        type: offline.V1Frame_FrameType.PAYLOAD_TRANSFER,
        payloadTransfer: eofTransfer,
      ),
    );
    await encryptAndSendOfflineFrame(eofWrapper);
  }

  // Decrypts a SecureMessage and processes the contained OfflineFrame
  Future<void> decryptAndProcessReceivedSecureMessage(
    sm.SecureMessage smsg,
  ) async {
    if (decryptKey == null || recvHmacKey == null) {
      throw StateError('Decryption keys not initialized');
    }
    if (!smsg.hasSignature() || !smsg.hasHeaderAndBody()) {
      throw NearbyRequiredFieldMissingException(
        "secureMessage.signature|headerAndBody",
      );
    }

    // Verify HMAC
    final calculatedMac = await hmacSha256(smsg.headerAndBody, recvHmacKey!);
    if (!listsEqual(calculatedMac.bytes, smsg.signature)) {
      throw NearbyProtocolException("Invalid signature (HMAC mismatch)");
    }

    final headerAndBody = sm.HeaderAndBody.fromBuffer(smsg.headerAndBody);
    if (!headerAndBody.hasHeader() ||
        !headerAndBody.hasBody() ||
        !headerAndBody.header.hasIv()) {
      throw NearbyRequiredFieldMissingException("headerAndBody.header|body|iv");
    }
    if (headerAndBody.header.encryptionScheme != sm.EncScheme.AES_256_CBC) {
      throw NearbyProtocolException(
        "Unsupported encryption scheme: ${headerAndBody.header.encryptionScheme}",
      );
    }

    // Decrypt
    final decryptedData = await aes256CbcDecrypt(
      headerAndBody.body,
      decryptKey!,
      headerAndBody.header.iv,
    );

    final d2dMsg = d2d.DeviceToDeviceMessage.fromBuffer(decryptedData);
    if (!d2dMsg.hasMessage() || !d2dMsg.hasSequenceNumber()) {
      throw NearbyRequiredFieldMissingException(
        "d2dMessage.message|sequenceNumber",
      );
    }

    final expectedSeq = isServer() ? _clientSeq + 1 : _serverSeq + 1;
    if (d2dMsg.sequenceNumber != expectedSeq) {
      throw NearbyProtocolException(
        "Wrong sequence number. Expected $expectedSeq, got ${d2dMsg.sequenceNumber}",
      );
    }
    // Update sequence number *after* successful processing
    if (isServer()) {
      _clientSeq = d2dMsg.sequenceNumber;
    } else {
      _serverSeq = d2dMsg.sequenceNumber;
    }

    final offlineFrame = offline.OfflineFrame.fromBuffer(d2dMsg.message);

    if (offlineFrame.hasV1() &&
        offlineFrame.v1.type == offline.V1Frame_FrameType.PAYLOAD_TRANSFER) {
      if (!offlineFrame.v1.hasPayloadTransfer()) {
        throw NearbyRequiredFieldMissingException(
          "offlineFrame.v1.payloadTransfer",
        );
      }
      final payloadTransfer = offlineFrame.v1.payloadTransfer;
      final header = payloadTransfer.payloadHeader;
      final chunk = payloadTransfer.payloadChunk;

      if (!header.hasType() || !header.hasId()) {
        throw NearbyRequiredFieldMissingException("payloadHeader.type|id");
      }
      if (!payloadTransfer.hasPayloadChunk() ||
          !chunk.hasOffset() ||
          !chunk.hasFlags()) {
        throw NearbyRequiredFieldMissingException(
          "payloadTransfer.payloadChunk|offset|flags",
        );
      }

      final payloadId = header.id.toInt();

      if (header.type ==
          offline.PayloadTransferFrame_PayloadHeader_PayloadType.BYTES) {
        if (header.totalSize.toInt() > saneFrameLength) {
          _payloadBuffers.remove(payloadId);
          throw NearbyProtocolException(
            "Payload too large (${header.totalSize} bytes)",
          );
        }

        // Append chunk to buffer
        final buffer = _payloadBuffers.putIfAbsent(payloadId, () => <int>[]);
        if (chunk.offset.toInt() != buffer.length) {
          _payloadBuffers.remove(payloadId);
          throw NearbyProtocolException(
            "Unexpected chunk offset ${chunk.offset}, expected ${buffer.length}",
          );
        }
        if (chunk.hasBody()) {
          buffer.addAll(chunk.body);
        }

        // Check if last chunk
        if ((chunk.flags & 1) == 1) {
          final fullPayload = Uint8List.fromList(buffer);
          _payloadBuffers.remove(payloadId); // Clean up buffer
          final handled = await processBytesPayload(fullPayload, payloadId);
          if (!handled) {
            // Assume it's a transfer setup frame
            try {
              final innerFrame = wire.Frame.fromBuffer(fullPayload);
              await processTransferSetupFrame(innerFrame);
            } catch (e, s) {
              print('Failed to parse bytes payload as wire.Frame: $e\n$s');
              // Rethrow or handle as appropriate
              throw NearbyProtocolException(
                "Failed to process BYTES payload $payloadId as setup frame",
              );
            }
          }
        }
      } else if (header.type ==
          offline.PayloadTransferFrame_PayloadHeader_PayloadType.FILE) {
        await processFileChunk(payloadTransfer);
      }
    } else if (offlineFrame.hasV1() &&
        offlineFrame.v1.type == offline.V1Frame_FrameType.KEEP_ALIVE) {
      print("Received keep-alive");
      if (offlineFrame.v1.hasKeepAlive() && offlineFrame.v1.keepAlive.ack) {
        // This is an ack to our keep-alive, no action needed maybe?
      } else {
        // Send ack back
        sendKeepAlive(ack: true);
      }
    } else {
      print(
        "Unhandled encrypted offline frame: ${offlineFrame.toProto3Json()}",
      );
      // Potentially handle other frame types like DISCONNECTION if needed
      if (offlineFrame.hasV1() &&
          offlineFrame.v1.type == offline.V1Frame_FrameType.DISCONNECTION) {
        print("Received disconnection frame");
        disconnect(); // Close our end
      }
    }
  }

  // Helper to compare two lists for equality
  bool listsEqual<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    if (identical(a, b)) return true;
    for (int index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) return false;
    }
    return true;
  }

  // Finalizes the UKEY2 key exchange
  Future<void> finalizeKeyExchange(sm.GenericPublicKey peerKeyProto) async {
    if (ukeyPrivateKey == null ||
        ukeyClientInitMsgData == null ||
        ukeyServerInitMsgData == null) {
      throw StateError(
        'UKEY2 state not properly initialized before finalizing',
      );
    }

    final pc.ECPublicKey peerKey = genericPublicKeyToPointyCastle(peerKeyProto);

    // Perform ECDH
    final dhSecretBytes = ecdhPointyCastle(ukeyPrivateKey!, peerKey);
    final sharedSecret = SecretKey(dhSecretBytes); // Wrap the raw bytes

    // Derive Auth String and Next Secret using HKDF
    final ukeyInfo = BytesBuilder();
    ukeyInfo.add(ukeyClientInitMsgData!);
    ukeyInfo.add(ukeyServerInitMsgData!);

    const ukeyAuthLabel = 'UKEY2 v1 auth';
    const ukeyNextLabel = 'UKEY2 v1 next';

    final authStringKey = await hkdfSha256(
      sharedSecret: sharedSecret,
      salt: utf8.encode(ukeyAuthLabel),
      info: ukeyInfo.toBytes(),
      outputLength: 32,
    );
    final nextSecretKey = await hkdfSha256(
      sharedSecret: sharedSecret,
      salt: utf8.encode(ukeyNextLabel),
      info: ukeyInfo.toBytes(),
      outputLength: 32,
    );

    _pinCode = await derivePinCode(authStringKey);
    print("Derived PIN Code: $_pinCode");

    // Derive D2D Keys
    const d2dSalt = [
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
    ];
    const d2dClientLabel = 'client';
    const d2dServerLabel = 'server';

    final d2dClientSecret = await hkdfSha256(
      sharedSecret: nextSecretKey,
      salt: d2dSalt,
      info: utf8.encode(d2dClientLabel),
      outputLength: 32,
    );
    final d2dServerSecret = await hkdfSha256(
      sharedSecret: nextSecretKey,
      salt: d2dSalt,
      info: utf8.encode(d2dServerLabel),
      outputLength: 32,
    );

    // Derive SecureMessage Keys
    final smsgSalt = await Sha256().hash(utf8.encode('SecureMessage'));
    const encLabel = 'ENC:2';
    const sigLabel = 'SIG:1';

    final clientEncKey = await hkdfSha256(
      sharedSecret: d2dClientSecret,
      salt: smsgSalt.bytes,
      info: utf8.encode(encLabel),
      outputLength: 32,
    );
    final clientSigKey = await hkdfSha256(
      sharedSecret: d2dClientSecret,
      salt: smsgSalt.bytes,
      info: utf8.encode(sigLabel),
      outputLength: 32,
    );
    final serverEncKey = await hkdfSha256(
      sharedSecret: d2dServerSecret,
      salt: smsgSalt.bytes,
      info: utf8.encode(encLabel),
      outputLength: 32,
    );
    final serverSigKey = await hkdfSha256(
      sharedSecret: d2dServerSecret,
      salt: smsgSalt.bytes,
      info: utf8.encode(sigLabel),
      outputLength: 32,
    );

    if (isServer()) {
      decryptKey = clientEncKey;
      recvHmacKey = clientSigKey;
      encryptKey = serverEncKey;
      sendHmacKey = serverSigKey;
    } else {
      decryptKey = serverEncKey;
      recvHmacKey = serverSigKey;
      encryptKey = clientEncKey;
      sendHmacKey = clientSigKey;
    }

    print('Connection $id: Key exchange finalized.');
  }

  // Gracefully disconnects the socket
  Future<void> disconnect() async {
    if (connectionClosed) return;
    print('Connection $id: Disconnecting...');
    connectionClosed = true;
    await _socketSubscription?.cancel();
    _socketSubscription = null;
    try {
      // Socket.close() sends FIN and waits for acknowledgment.
      await _socket.close();
      print('Connection $id: Socket closed gracefully.');
    } catch (e, s) {
      print(
        'Connection $id: Error during socket close: $e\n$s. Destroying socket.',
      );
      // Fallback to destroy if close fails
      _socket.destroy();
    } finally {
      handleConnectionClosure(); // Ensure cleanup logic runs
      if (!_closedCompleter.isCompleted) {
        _closedCompleter.complete();
      }
    }
  }

  // Closes the connection immediately due to a protocol error
  void protocolError() {
    print('Connection $id: Protocol Error. Last error: $lastError');
    if (connectionClosed) return;
    connectionClosed = true;
    _socketSubscription?.cancel();
    _socketSubscription = null;
    _socket.destroy(); // Force close
    handleConnectionClosure();
    if (!_closedCompleter.isCompleted) {
      _closedCompleter.completeError(
        lastError ?? NearbyProtocolException("Unknown protocol error"),
      );
    }
  }

  // Sends a DISCONNECTION frame and then disconnects
  Future<void> sendDisconnectionAndDisconnect() async {
    if (connectionClosed) return;

    final disconnectionFrame =
        offline.DisconnectionFrame(); // Default values are fine
    final v1Frame = offline.V1Frame(
      type: offline.V1Frame_FrameType.DISCONNECTION,
      disconnection: disconnectionFrame,
    );
    final offlineFrame = offline.OfflineFrame(
      version: offline.OfflineFrame_Version.V1,
      v1: v1Frame,
    );

    try {
      if (encryptionDone) {
        await encryptAndSendOfflineFrame(offlineFrame);
        print('Connection $id: Sent encrypted DISCONNECTION');
      } else {
        sendFrame(offlineFrame.writeToBuffer());
        print('Connection $id: Sent unencrypted DISCONNECTION');
      }
      // Wait briefly for the frame to potentially be sent before closing
      // This is heuristic, ideally wait for socket flush if possible/needed
      await Future.delayed(const Duration(milliseconds: 50));
    } catch (e, s) {
      print('Connection $id: Failed to send disconnection frame: $e\n$s');
      // Proceed with disconnection anyway
    } finally {
      await disconnect();
    }
  }

  // Sends a UKEY2 Alert message and disconnects
  void sendUkey2Alert(ukey.Ukey2Alert_AlertType type) {
    if (connectionClosed) return;
    print('Connection $id: Sending UKEY2 Alert: $type');

    final alert = ukey.Ukey2Alert(type: type);
    final msg = ukey.Ukey2Message(
      messageType: ukey.Ukey2Message_Type.ALERT,
      messageData: alert.writeToBuffer(),
    );
    try {
      sendFrame(msg.writeToBuffer());
      // Give it a moment to send before forceful closure
      Future.delayed(
        const Duration(milliseconds: 50),
      ).then((_) => disconnect());
    } catch (e, s) {
      print('Connection $id: Failed to send UKEY2 alert: $e\n$s');
      disconnect(); // Disconnect anyway
    }
  }

  // Sends a KeepAlive frame
  void sendKeepAlive({bool ack = false}) {
    if (connectionClosed) return;
    final keepAliveFrame = offline.KeepAliveFrame(ack: ack);
    final v1Frame = offline.V1Frame(
      type: offline.V1Frame_FrameType.KEEP_ALIVE,
      keepAlive: keepAliveFrame,
    );
    final offlineFrame = offline.OfflineFrame(
      version: offline.OfflineFrame_Version.V1,
      v1: v1Frame,
    );

    try {
      if (encryptionDone) {
        encryptAndSendOfflineFrame(offlineFrame);
        print('Connection $id: Sent encrypted KEEP_ALIVE (ack: $ack)');
      } else {
        sendFrame(offlineFrame.writeToBuffer());
        print('Connection $id: Sent unencrypted KEEP_ALIVE (ack: $ack)');
      }
    } catch (e, s) {
      print('Connection $id: Error sending KEEP_ALIVE: $e\n$s');
      _onError(e, s); // Treat send failure as a connection error
    }
  }

  // Called when the connection is fully closed (either normally or via error)
  // Subclasses should override this for cleanup.
  void handleConnectionClosure() {
    print(
      'Connection $id: handleConnectionClosure called. Closed: $connectionClosed',
    );
    connectionClosed = true; // Ensure flag is set
    _socketSubscription?.cancel(); // Ensure subscription is cancelled
    _socketSubscription = null;
    if (!_closedCompleter.isCompleted) {
      if (lastError != null) {
        _closedCompleter.completeError(lastError!);
      } else {
        _closedCompleter.complete();
      }
    }
    // Don't destroy socket here, let _onError or _onDone handle it
  }

  // Future that completes when the connection is closed.
  Future<void> get onClose => _closedCompleter.future;

  // Reports error to any listeners (e.g., connection manager)
  // Subclasses might override or use a StreamController for this.
  void _reportError(Exception error) {
    // Default implementation does nothing, subclasses/manager should handle.
    print("Connection $id reported error: $error");
  }
}
