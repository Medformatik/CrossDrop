import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:crossdrop/device.dart';
import 'package:crossdrop/nearby_share/api/models.dart';
import 'package:crossdrop/nearby_share/connections/nearby_connection.dart';
import 'package:crossdrop/nearby_share/protobuf/offline_wire_formats.pb.dart'
    as offline;
import 'package:crossdrop/nearby_share/protobuf/securemessage.pb.dart' as sm;
import 'package:crossdrop/nearby_share/protobuf/ukey.pb.dart' as ukey;
import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart' as wire;
import 'package:crossdrop/nearby_share/utils/data_extension.dart';
import 'package:crossdrop/nearby_share/crypto/crypto_utils.dart';
import 'package:cryptography/cryptography.dart';
import 'package:fixnum/fixnum.dart';
import 'package:mime/mime.dart'; // For MIME type lookup
import 'package:path/path.dart' as p; // For path operations
// To request storage permission if needed

enum OutboundState {
  initial,
  sentUkeyClientInit,
  sentUkeyClientFinish, // After sending ClientFinish (waits for encrypted ConnectionResponse ACK)
  sentPairedKeyEncryption, // After sending encrypted PairedKeyEncryption
  sentPairedKeyResult, // After sending encrypted PairedKeyResult
  sentIntroduction, // After sending Introduction (waits for ACCEPT/REJECT)
  sendingFiles,
  disconnected,
}

// Delegate definition
abstract class OutboundNearbyConnectionDelegate {
  void outboundConnectionEstablished(OutboundNearbyConnection connection);
  void outboundConnectionFailed(
    OutboundNearbyConnection connection,
    Exception error,
  );
  void outboundTransferAccepted(OutboundNearbyConnection connection);
  void outboundTransferProgress(
    OutboundNearbyConnection connection,
    double progress,
  );
  void outboundTransferFinished(OutboundNearbyConnection connection);
}

class OutboundNearbyConnection extends NearbyConnection {
  OutboundState _currentState = OutboundState.initial;
  final List<String> _urlsToSend; // List of file paths or a single non-file URL
  Uint8List? _ukeyClientFinishMsgData;
  List<OutgoingFileTransfer> _transferQueue = [];
  OutgoingFileTransfer? _currentTransfer;
  OutboundNearbyConnectionDelegate? delegate;
  int _totalBytesToSend = 0;
  int _totalBytesSent = 0;
  bool _cancelled = false;
  int _textPayloadID = 0; // Use int

  OutboundNearbyConnection(super.socket, super.id, List<String> urlsToSend)
    : _urlsToSend = urlsToSend {
    if (urlsToSend.length == 1 && !File(urlsToSend[0]).existsSync()) {
      // Heuristic for non-file URL
      _textPayloadID = Random().nextInt(0x7FFFFFFF);
    }
  }

  @override
  void start() {
    // Request necessary permissions before starting connection logic if needed
    // e.g., _requestPermissions().then((granted) { if (granted) super.start(); });
    // For now, assume permissions are handled elsewhere.
    super.start();
  }

  // Example permission request (adapt as needed for your target platforms/files)
  // Future<bool> _requestPermissions() async {
  //   if (Platform.isAndroid || Platform.isIOS) {
  //     var status = await Permission.storage.status;
  //     if (!status.isGranted) {
  //       status = await Permission.storage.request();
  //     }
  //     return status.isGranted;
  //   }
  //   return true; // Assume granted on desktop for now
  // }

  void cancel() {
    if (_currentState == OutboundState.disconnected) return;
    print("Outbound $id: Cancelling transfer.");
    _cancelled = true;

    // Try to send CANCEL frame if handshake is complete enough
    if (encryptionDone) {
      final cancelFrame = wire.V1Frame(type: wire.V1Frame_FrameType.CANCEL);
      final wireFrame = wire.Frame(
        version: wire.Frame_Version.V1,
        v1: cancelFrame,
      );
      sendTransferSetupFrame(wireFrame)
          .catchError((e, s) {
            print("Outbound $id: Error sending CANCEL frame: $e\n$s");
          })
          .whenComplete(() {
            // Proceed with disconnection regardless of CANCEL success
            sendDisconnectionAndDisconnect().catchError((e, s) {
              print(
                "Outbound $id: Error during disconnect after cancel: $e\n$s",
              );
              protocolError(); // Force close if disconnect fails
            });
          });
    } else {
      // If handshake not done, just disconnect
      sendDisconnectionAndDisconnect().catchError((e, s) {
        print("Outbound $id: Error during disconnect on early cancel: $e\n$s");
        protocolError();
      });
    }
  }

  @override
  bool isServer() => false;

  @override
  void connectionReady() {
    super.connectionReady();
    _sendConnectionRequest()
        .then((_) {
          return _sendUkey2ClientInit();
        })
        .catchError(_handleAsyncError);
  }

  @override
  void handleConnectionClosure() {
    super.handleConnectionClosure(); // Call base class cleanup
    if (_currentState != OutboundState.disconnected) {
      _currentState = OutboundState.disconnected;
      _cleanupFileHandles();
      // Report failure unless cancelled gracefully *after* finishing normally
      if (!_cancelled || lastError != null) {
        Future.microtask(
          () => delegate?.outboundConnectionFailed(
            this,
            lastError ?? NearbyApiException("Connection closed unexpectedly"),
          ),
        );
      }
    }
  }

  @override
  void processReceivedFrame(Uint8List frameData) {
    print("Outbound $id: Processing frame in state $_currentState");
    if (_cancelled) {
      print("Outbound $id: Ignoring frame because transfer is cancelled.");
      return;
    }
    try {
      switch (_currentState) {
        case OutboundState.initial:
          // Should not receive anything before sending ClientInit
          throw NearbyProtocolException("Received frame in initial state");
        case OutboundState.sentUkeyClientInit:
          final msg = ukey.Ukey2Message.fromBuffer(frameData);
          _processUkey2ServerInit(msg, frameData);
          break;
        case OutboundState.sentUkeyClientFinish:
          // Expecting encrypted ConnectionResponse ACK
          final smsg = sm.SecureMessage.fromBuffer(frameData);
          decryptAndProcessReceivedSecureMessage(
            smsg,
          ).catchError(_handleAsyncError);
          break;
        case OutboundState.sentPairedKeyEncryption:
        case OutboundState.sentPairedKeyResult:
        case OutboundState.sentIntroduction:
        case OutboundState.sendingFiles:
          // All subsequent frames should be encrypted SecureMessages
          final smsg = sm.SecureMessage.fromBuffer(frameData);
          decryptAndProcessReceivedSecureMessage(
            smsg,
          ).catchError(_handleAsyncError);
          break;
        case OutboundState.disconnected:
          print("Outbound $id: Received frame while disconnected.");
          break;
      }
    } catch (e, s) {
      print(
        "Outbound $id: Deserialization error in state $_currentState: $e\n$s",
      );
      lastError = (e is Exception) ? e : Exception(e.toString());
      if (_currentState == OutboundState.sentUkeyClientInit) {
        sendUkey2Alert(
          ukey.Ukey2Alert_AlertType.BAD_MESSAGE,
        ); // Sends alert and disconnects
      } else {
        protocolError(); // Generic disconnect
      }
    }
  }

  void _handleAsyncError(Object error, StackTrace stackTrace) {
    if (connectionClosed || _cancelled) return;
    print("Outbound $id: Async error: $error\n$stackTrace");
    lastError = (error is Exception) ? error : Exception(error.toString());
    protocolError();
  }

  @override
  Future<void> processTransferSetupFrame(wire.Frame frame) async {
    // Handle decrypted setup frames received from the server
    if (_cancelled) return;
    if (frame.hasV1() && frame.v1.type == wire.V1Frame_FrameType.CANCEL) {
      print("Outbound $id: Transfer canceled by receiver.");
      lastError = NearbyCancellationException(CancellationReason.userCanceled);
      await sendDisconnectionAndDisconnect();
      return;
    }

    print(
      "Outbound $id: Processing setup frame in state $_currentState: ${frame.toProto3Json()}",
    );

    switch (_currentState) {
      case OutboundState.sentPairedKeyEncryption:
        // Expecting PAIRED_KEY_RESULT from server
        if (!frame.hasV1() || !frame.v1.hasPairedKeyResult()) {
          throw NearbyProtocolException(
            "Expected PairedKeyResult, got ${frame.v1.type}",
          );
        }
        await _processPairedKeyResult(frame);
        break;
      case OutboundState.sentPairedKeyResult:
        // We sent our PairedKeyResult, server might send one too, or maybe nothing?
        // Swift code doesn't expect anything here before Introduction. Let's proceed.
        print(
          "Outbound $id: Received frame after sending PairedKeyResult, assuming ready for Introduction.",
        );
        await _prepareAndSendIntroduction();
        break;
      case OutboundState.sentIntroduction:
        // Expecting RESPONSE (ACCEPT/REJECT) from server
        if (!frame.hasV1() || !frame.v1.hasConnectionResponse()) {
          throw NearbyProtocolException(
            "Expected ConnectionResponse, got ${frame.v1.type}",
          );
        }
        await _processConsentResponse(frame);
        break;
      case OutboundState.sendingFiles:
        // Shouldn't receive setup frames while sending files, maybe keep-alive?
        print(
          "Outbound $id: Received unexpected setup frame while sending files: ${frame.toProto3Json()}",
        );
        // Ignore for now, or handle specific cases if needed.
        break;
      default:
        throw NearbyProtocolException(
          "Received unexpected setup frame in state $_currentState",
        );
    }
  }

  // --- Private Sending Methods ---

  Future<void> _sendConnectionRequest() async {
    final endpointName = await getDeviceName(); // Use helper from device.dart
    final endpointInfo = EndpointInfo(
      name: endpointName,
      deviceType: DeviceType.computer,
    ); // Assuming desktop

    final connReq = offline.ConnectionRequestFrame(
      // TODO: Which method to use for endpointId?
      /* endpointId: id.substring(
        0,
        4,
      ), // Use first 4 chars of UUID? Swift uses full endpointID... Let's use full */
      // endpointId: id, // Let's try the full connection ID? No, the MDNS uses 4 bytes.
      endpointId: String.fromCharCodes(
        generateRandomBytes(4),
      ), // Match Swift's generateEndpointID logic maybe? Needs consistency check.
      endpointName: endpointName,
      endpointInfo: endpointInfo.serialize(),
      mediums: [offline.ConnectionRequestFrame_Medium.WIFI_LAN],
      // Nonce, KeepAlive might be needed depending on server requirements
    );
    final v1Frame = offline.V1Frame(
      type: offline.V1Frame_FrameType.CONNECTION_REQUEST,
      connectionRequest: connReq,
    );
    final offlineFrame = offline.OfflineFrame(
      version: offline.OfflineFrame_Version.V1,
      v1: v1Frame,
    );
    sendFrame(offlineFrame.writeToBuffer());
    print("Outbound $id: Sent ConnectionRequest");
  }

  Future<void> _sendUkey2ClientInit() async {
    // Generate our keys (PointyCastle)
    final (privKey, pubKey) = generateP256KeyPairPointyCastle();
    ukeyPrivateKey = privKey;
    ukeyPublicKey = pubKey;

    // Prepare ClientFinish message (but don't send yet)
    final finish = ukey.Ukey2ClientFinished(
      publicKey: genericPublicKeyFromPointyCastle(pubKey).writeToBuffer(),
    );
    final finishMsg = ukey.Ukey2Message(
      messageType: ukey.Ukey2Message_Type.CLIENT_FINISH,
      messageData: finish.writeToBuffer(),
    );
    _ukeyClientFinishMsgData =
        finishMsg.writeToBuffer(); // Store raw bytes for later

    // Calculate commitment for ClientInit
    final digest = await Sha512().hash(_ukeyClientFinishMsgData!);
    final commitment = ukey.Ukey2ClientInit_CipherCommitment(
      handshakeCipher: ukey.Ukey2HandshakeCipher.P256_SHA512,
      commitment: digest.bytes,
    );

    // Create ClientInit message
    final clientInit = ukey.Ukey2ClientInit(
      version: 1,
      random: generateRandomBytes(32),
      cipherCommitments: [commitment],
      nextProtocol: "AES_256_CBC-HMAC_SHA256",
    );
    final clientInitMsg = ukey.Ukey2Message(
      messageType: ukey.Ukey2Message_Type.CLIENT_INIT,
      messageData: clientInit.writeToBuffer(),
    );

    ukeyClientInitMsgData =
        clientInitMsg.writeToBuffer(); // Store raw bytes for HKDF
    sendFrame(ukeyClientInitMsgData!);
    _currentState = OutboundState.sentUkeyClientInit;
    print("Outbound $id: Sent UKEY2 ClientInit");
  }

  // --- Private Processing Methods ---

  void _processUkey2ServerInit(ukey.Ukey2Message msg, Uint8List rawMsgData) {
    if (msg.messageType != ukey.Ukey2Message_Type.SERVER_INIT) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_TYPE);
      throw NearbyUkey2Exception();
    }
    if (!msg.hasMessageData()) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
      throw NearbyRequiredFieldMissingException("serverInit ukey2message.data");
    }
    ukeyServerInitMsgData = rawMsgData; // Store raw bytes for HKDF

    ukey.Ukey2ServerInit serverInit;
    try {
      serverInit = ukey.Ukey2ServerInit.fromBuffer(msg.messageData);
    } catch (e) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
      throw NearbyUkey2Exception();
    }

    if (serverInit.version != 1) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_VERSION);
      throw NearbyUkey2Exception();
    }
    if (serverInit.random.length != 32) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_RANDOM);
      throw NearbyUkey2Exception();
    }
    if (serverInit.handshakeCipher != ukey.Ukey2HandshakeCipher.P256_SHA512) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_HANDSHAKE_CIPHER);
      throw NearbyUkey2Exception();
    }
    if (!serverInit.hasPublicKey()) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_PUBLIC_KEY);
      throw NearbyRequiredFieldMissingException("serverInit.publicKey");
    }

    try {
      final serverKeyProto = sm.GenericPublicKey.fromBuffer(
        serverInit.publicKey,
      );
      finalizeKeyExchange(serverKeyProto)
          .then((_) {
            print("Outbound $id: UKEY2 Handshake Complete. PIN: $pinCode");
            // Send ClientFinish
            if (_ukeyClientFinishMsgData == null) {
              throw StateError("ClientFinish message data is null");
            }
            sendFrame(_ukeyClientFinishMsgData!);
            _currentState = OutboundState.sentUkeyClientFinish;
            print("Outbound $id: Sent UKEY2 ClientFinish");

            // Notify delegate that connection is established (PIN available)
            Future.microtask(
              () => delegate?.outboundConnectionEstablished(this),
            );
          })
          .catchError(_handleAsyncError);
    } catch (e, s) {
      print("Error processing ServerInit payload: $e\n$s");
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_PUBLIC_KEY);
      throw NearbyUkey2Exception();
    }
  }

  // Process the encrypted ConnectionResponse ACK from the server
  Future<void> _processConnectionResponseAck(offline.OfflineFrame frame) async {
    if (!frame.hasV1() ||
        frame.v1.type != offline.V1Frame_FrameType.CONNECTION_RESPONSE) {
      // Might receive other frames like PairedKeyEncryption first
      print(
        "Outbound $id: Received non-ConnectionResponse frame after ClientFinish, processing as SecureMessage payload.",
      );
      // The generic SecureMessage handler will take care of it.
      return;
    }
    print("Outbound $id: Processing ConnectionResponse ACK");
    if (!frame.v1.hasConnectionResponse()) {
      throw NearbyRequiredFieldMissingException("frame.v1.connectionResponse");
    }
    final response = frame.v1.connectionResponse;
    if (response.response !=
        offline.ConnectionResponseFrame_ResponseStatus.ACCEPT) {
      throw NearbyProtocolException(
        "Server rejected connection after UKEY2: ${response.response}",
      );
    }

    // Connection is fully established and accepted. Send PairedKeyEncryption.
    print("Outbound $id: Connection accepted by server.");
    encryptionDone =
        true; // Mark encryption as active *after* receiving ACCEPT confirmation
    await _sendPairedKeyEncryption();
  }

  Future<void> _sendPairedKeyEncryption() async {
    final pairedEncFrame = wire.PairedKeyEncryptionFrame(
      secretIdHash: generateRandomBytes(6),
      signedData: generateRandomBytes(72), // Matching Swift size
    );
    final v1WireFrame = wire.V1Frame(
      type: wire.V1Frame_FrameType.PAIRED_KEY_ENCRYPTION,
      pairedKeyEncryption: pairedEncFrame,
    );
    final wireFrame = wire.Frame(
      version: wire.Frame_Version.V1,
      v1: v1WireFrame,
    );
    await sendTransferSetupFrame(wireFrame);
    _currentState = OutboundState.sentPairedKeyEncryption;
    print("Outbound $id: Sent PairedKeyEncryption");
  }

  // Process the server's PairedKeyResult frame
  Future<void> _processPairedKeyResult(wire.Frame frame) async {
    // We don't care about the result (UNABLE usually), just proceed
    print("Outbound $id: Processing PairedKeyResult from server");
    // Send our own PairedKeyResult (UNABLE)
    final pairedResultFrame = wire.PairedKeyResultFrame(
      status: wire.PairedKeyResultFrame_Status.UNABLE,
    );
    final v1WireFrame = wire.V1Frame(
      type: wire.V1Frame_FrameType.PAIRED_KEY_RESULT,
      pairedKeyResult: pairedResultFrame,
    );
    final wireFrame = wire.Frame(
      version: wire.Frame_Version.V1,
      v1: v1WireFrame,
    );
    await sendTransferSetupFrame(wireFrame);
    _currentState = OutboundState.sentPairedKeyResult;
    print("Outbound $id: Sent our PairedKeyResult (UNABLE)");

    // Now prepare and send the Introduction frame
    await _prepareAndSendIntroduction();
  }

  Future<void> _prepareAndSendIntroduction() async {
    print("Outbound $id: Preparing Introduction frame");
    final introduction = wire.IntroductionFrame();
    _totalBytesToSend = 0;
    _transferQueue = [];

    if (_textPayloadID != 0) {
      // Single non-file URL case
      final urlString = _urlsToSend[0];
      final uri = Uri.tryParse(urlString);
      final textMeta = wire.TextMetadata(
        type: wire.TextMetadata_Type.URL,
        textTitle: uri?.host ?? "URL",
        size: Int64(urlString.length),
        payloadId: Int64(_textPayloadID),
        id: Int64(Random().nextInt(0x7FFFFFFF)), // Add unique ID
      );
      introduction.textMetadata.add(textMeta);
      _totalBytesToSend = urlString.length; // Only the text bytes
    } else {
      // File transfer case
      for (final url in _urlsToSend) {
        try {
          final file = File(url);
          if (!await file.exists()) {
            print("Warning: File not found: $url");
            continue;
          }
          final fileSize = await file.length();
          final fileName = p.basename(url);
          final mimeType = lookupMimeType(url) ?? 'application/octet-stream';

          final fileMeta = wire.FileMetadata(
            name: _sanitizeFileName(fileName),
            size: Int64(fileSize),
            mimeType: mimeType,
            type: _guessFileType(mimeType, url),
            payloadId: Int64(Random().nextInt(0x7FFFFFFF)),
            id: Int64(Random().nextInt(0x7FFFFFFF)), // Add unique ID
          );

          introduction.fileMetadata.add(fileMeta);
          _transferQueue.add(
            OutgoingFileTransfer(
              sourcePath: url,
              payloadID: fileMeta.payloadId.toInt(),
              totalBytes: fileSize,
              // Handle will be opened later
            ),
          );
          _totalBytesToSend += fileSize;
        } catch (e, s) {
          print("Error processing file $url: $e\n$s");
          // Should we abort the whole transfer? Or just skip this file?
          // For now, just skip.
        }
      }
      if (_transferQueue.isEmpty) {
        throw NearbyApiException("No valid files found to send.");
      }
    }

    final v1WireFrame = wire.V1Frame(
      type: wire.V1Frame_FrameType.INTRODUCTION,
      introduction: introduction,
    );
    final wireFrame = wire.Frame(
      version: wire.Frame_Version.V1,
      v1: v1WireFrame,
    );

    await sendTransferSetupFrame(wireFrame);
    _currentState = OutboundState.sentIntroduction;
    print(
      "Outbound $id: Sent Introduction frame. Total bytes: $_totalBytesToSend",
    );
  }

  // Process the ACCEPT/REJECT response from the receiver
  Future<void> _processConsentResponse(wire.Frame frame) async {
    print("Outbound $id: Processing ConnectionResponse (Consent)");
    final status = frame.v1.connectionResponse.status;

    if (status == wire.ConnectionResponseFrame_Status.ACCEPT) {
      print("Outbound $id: Transfer accepted by receiver.");
      _currentState = OutboundState.sendingFiles;
      Future.microtask(() => delegate?.outboundTransferAccepted(this));

      if (_textPayloadID != 0) {
        await _sendUrlPayload();
      } else {
        await _sendNextFileChunk();
      }
    } else {
      final reason =
          wireStatusToCancellationReason(status) ??
          CancellationReason.userRejected;
      print("Outbound $id: Transfer rejected by receiver with status $status.");
      lastError = NearbyCancellationException(reason);
      await sendDisconnectionAndDisconnect();
      // Delegate notified via handleConnectionClosure
    }
  }

  Future<void> _sendUrlPayload() async {
    if (_cancelled) return;
    print("Outbound $id: Sending URL payload.");
    await sendBytesPayload(
      data: utf8.encode(_urlsToSend[0]),
      payloadId: _textPayloadID,
    );
    print("Outbound $id: URL payload sent.");
    _currentState = OutboundState.disconnected; // Mark as finished
    Future.microtask(() => delegate?.outboundTransferFinished(this));
    await sendDisconnectionAndDisconnect();
  }

  Future<void> _sendNextFileChunk() async {
    if (_cancelled || _currentState != OutboundState.sendingFiles) return;

    // Check if current transfer is done or needs initialization
    if (_currentTransfer == null ||
        _currentTransfer!.currentOffset == _currentTransfer!.totalBytes) {
      await _currentTransfer?.handle?.close(); // Close previous handle
      _currentTransfer?.handle = null;

      if (_transferQueue.isEmpty) {
        print("Outbound $id: All files transferred.");
        _currentState =
            OutboundState.disconnected; // Mark as finished before disconnect
        Future.microtask(() => delegate?.outboundTransferFinished(this));
        await sendDisconnectionAndDisconnect();
        return;
      }

      // Get next file and open handle
      _currentTransfer = _transferQueue.removeAt(0);
      try {
        _currentTransfer!.handle = await File(
          _currentTransfer!.sourcePath,
        ).open(mode: FileMode.read);
        print(
          "Outbound $id: Started sending file: ${_currentTransfer!.sourcePath}",
        );
      } catch (e, s) {
        print(
          "Outbound $id: Failed to open file ${_currentTransfer!.sourcePath}: $e\n$s",
        );
        lastError = NearbyIOException();
        protocolError(); // Abort transfer
        return;
      }
    }

    // Read next chunk
    const chunkSize = 512 * 1024; // 512 KiB
    Uint8List fileBuffer;
    try {
      fileBuffer = await _currentTransfer!.handle!.read(chunkSize);
    } catch (e, s) {
      print(
        "Outbound $id: Error reading from file ${_currentTransfer!.sourcePath}: $e\n$s",
      );
      lastError = NearbyIOException();
      protocolError();
      return;
    }

    if (fileBuffer.isEmpty &&
        _currentTransfer!.currentOffset != _currentTransfer!.totalBytes) {
      // This indicates an unexpected EOF or read error
      print(
        "Outbound $id: Read empty buffer before expected EOF for ${_currentTransfer!.sourcePath}",
      );
      lastError = NearbyIOException();
      protocolError();
      return;
    }

    // Prepare and send payload chunk frame
    final header = offline.PayloadTransferFrame_PayloadHeader(
      id: Int64(_currentTransfer!.payloadID),
      type: offline.PayloadTransferFrame_PayloadHeader_PayloadType.FILE,
      totalSize: Int64(_currentTransfer!.totalBytes),
      isSensitive: false,
    );
    final chunk = offline.PayloadTransferFrame_PayloadChunk(
      offset: Int64(_currentTransfer!.currentOffset),
      flags: 0, // Not the last chunk (yet)
      body: fileBuffer,
    );
    final transferFrame = offline.PayloadTransferFrame(
      packetType: offline.PayloadTransferFrame_PacketType.DATA,
      payloadHeader: header,
      payloadChunk: chunk,
    );
    final v1Frame = offline.V1Frame(
      type: offline.V1Frame_FrameType.PAYLOAD_TRANSFER,
      payloadTransfer: transferFrame,
    );
    final offlineFrame = offline.OfflineFrame(
      version: offline.OfflineFrame_Version.V1,
      v1: v1Frame,
    );

    // Update state *before* async send
    _currentTransfer!.currentOffset += fileBuffer.length;
    _totalBytesSent += fileBuffer.length;
    final bool isLastChunkOfFile =
        _currentTransfer!.currentOffset == _currentTransfer!.totalBytes;

    // Send the data chunk
    await encryptAndSendOfflineFrame(offlineFrame);
    print(
      "Outbound $id: Sent chunk ${_currentTransfer!.currentOffset}/${_currentTransfer!.totalBytes} for payload ${_currentTransfer!.payloadID}",
    );

    // Update progress
    if (_totalBytesToSend > 0) {
      Future.microtask(
        () => delegate?.outboundTransferProgress(
          this,
          _totalBytesSent / _totalBytesToSend,
        ),
      );
    }

    // Send EOF frame if this was the last chunk of the file
    if (isLastChunkOfFile) {
      print(
        "Outbound $id: Sending EOF for payload ${_currentTransfer!.payloadID}",
      );
      final eofChunk = offline.PayloadTransferFrame_PayloadChunk(
        offset: Int64(_currentTransfer!.currentOffset),
        flags: 1, // LAST_CHUNK
      );
      final eofTransfer = offline.PayloadTransferFrame(
        packetType: offline.PayloadTransferFrame_PacketType.DATA,
        payloadHeader: header, // Repeat header
        payloadChunk: eofChunk,
      );
      final eofV1Frame = offline.V1Frame(
        type: offline.V1Frame_FrameType.PAYLOAD_TRANSFER,
        payloadTransfer: eofTransfer,
      );
      final eofOfflineFrame = offline.OfflineFrame(
        version: offline.OfflineFrame_Version.V1,
        v1: eofV1Frame,
      );
      await encryptAndSendOfflineFrame(eofOfflineFrame);
    }

    // Schedule next chunk send (using microtask to avoid deep recursion)
    Future.microtask(() => _sendNextFileChunk().catchError(_handleAsyncError));
  }

  void _cleanupFileHandles() {
    _currentTransfer?.handle?.close().catchError(
      (_) {},
    ); // Ignore errors on close
    for (var transfer in _transferQueue) {
      transfer.handle?.close().catchError((_) {});
    }
  }

  String _sanitizeFileName(String name) {
    return name.replaceAll(RegExp(r'[\\/:\*\?"<>\|]'), '_');
  }

  wire.FileMetadata_Type _guessFileType(String mimeType, String filePath) {
    if (mimeType.startsWith('image/')) return wire.FileMetadata_Type.IMAGE;
    if (mimeType.startsWith('video/')) return wire.FileMetadata_Type.VIDEO;
    if (mimeType.startsWith('audio/')) return wire.FileMetadata_Type.AUDIO;
    if (mimeType == 'application/vnd.android.package-archive' ||
        p.extension(filePath).toLowerCase() == '.apk') {
      return wire.FileMetadata_Type.APP;
    }
    return wire.FileMetadata_Type.UNKNOWN;
  }
}
