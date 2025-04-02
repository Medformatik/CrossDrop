import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

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
import 'package:path_provider/path_provider.dart'; // For downloads directory
import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart'; // For path manipulation

enum InboundState {
  initial,
  receivedConnectionRequest,
  sentUkeyServerInit,
  receivedUkeyClientFinish,
  sentConnectionResponse, // After sending offline ConnectionResponse
  sentPairedKeyResult, // After sending wire PairedKeyResult
  receivedPairedKeyResult, // After receiving wire PairedKeyResult (awaits Introduction)
  waitingForUserConsent,
  receivingFiles,
  disconnected,
}

// Delegate definition for UI interaction
abstract class InboundNearbyConnectionDelegate {
  void obtainUserConsent(
    TransferMetadata transfer,
    RemoteDeviceInfo device,
    InboundNearbyConnection connection,
  );
  void connectionTerminated(
    InboundNearbyConnection connection,
    Exception? error,
  );
  // Add methods for progress updates if needed
  // void updateTransferProgress(String connectionId, double progress);
}

class InboundNearbyConnection extends NearbyConnection {
  InboundState _currentState = InboundState.initial;
  InboundNearbyConnectionDelegate? delegate;
  Uint8List? _cipherCommitment;
  int _textPayloadID = 0;

  // Store socket details
  final String _remoteIpAddress;
  final int _remotePort;

  InboundNearbyConnection(super.socket, super.id)
    : _remoteIpAddress = socket.remoteAddress.address, // Store IP
      _remotePort = socket.remotePort;

  @override
  bool isServer() => true;

  @override
  void handleConnectionClosure() {
    super.handleConnectionClosure(); // Call base class cleanup
    if (_currentState != InboundState.disconnected) {
      _currentState = InboundState.disconnected;
      _deletePartiallyReceivedFiles().catchError((e, s) {
        print("Error deleting partially received files for $id: $e\n$s");
      });
      // Use WidgetsBinding.instance.addPostFrameCallback or ensure delegate call is safe
      Future.microtask(() => delegate?.connectionTerminated(this, lastError));
    }
  }

  @override
  void processReceivedFrame(Uint8List frameData) {
    print("Inbound $id: Processing frame in state $_currentState");
    try {
      switch (_currentState) {
        case InboundState.initial:
          final frame = offline.OfflineFrame.fromBuffer(frameData);
          _processConnectionRequestFrame(frame);
          break;
        case InboundState.receivedConnectionRequest:
          final msg = ukey.Ukey2Message.fromBuffer(frameData);
          ukeyClientInitMsgData = frameData; // Store raw bytes for HKDF later
          _processUkey2ClientInit(msg);
          break;
        case InboundState.sentUkeyServerInit:
          final msg = ukey.Ukey2Message.fromBuffer(frameData);
          _processUkey2ClientFinish(msg, frameData);
          break;
        case InboundState.receivedUkeyClientFinish:
          // Expecting encrypted CONNECTION_RESPONSE ACK from client (offline format)
          // But the Swift code doesn't seem to wait for it, it sends its own ACCEPT
          // Let's proceed assuming we might get encrypted frames now or later.
          final smsg = sm.SecureMessage.fromBuffer(frameData);
          decryptAndProcessReceivedSecureMessage(
            smsg,
          ).catchError(_handleAsyncError);
          // Also handle the possibility of receiving the unencrypted ConnectionResponse ACK
          // _processConnectionResponseAck(offline.OfflineFrame.fromBuffer(frameData)); ?
          // For now, assume encrypted frames are next.
          print(
            "Inbound $id: Received frame after ClientFinish, assuming encrypted.",
          );
          break;
        case InboundState.sentConnectionResponse:
        case InboundState.sentPairedKeyResult:
        case InboundState.receivedPairedKeyResult:
        case InboundState.waitingForUserConsent:
        case InboundState.receivingFiles:
          // All subsequent frames should be encrypted SecureMessages
          final smsg = sm.SecureMessage.fromBuffer(frameData);
          decryptAndProcessReceivedSecureMessage(
            smsg,
          ).catchError(_handleAsyncError);
          break;
        case InboundState.disconnected:
          print("Inbound $id: Received frame while disconnected.");
          break;
      }
    } catch (e, s) {
      print(
        "Inbound $id: Deserialization error in state $_currentState: $e\n$s",
      );
      lastError = (e is Exception) ? e : Exception(e.toString());
      if (_currentState == InboundState.receivedConnectionRequest ||
          _currentState == InboundState.sentUkeyServerInit) {
        sendUkey2Alert(
          ukey.Ukey2Alert_AlertType.BAD_MESSAGE,
        ); // Sends alert and disconnects
      } else {
        protocolError(); // Generic disconnect
      }
    }
  }

  void _handleAsyncError(Object error, StackTrace stackTrace) {
    print(
      "Inbound $id: Async error during frame processing: $error\n$stackTrace",
    );
    lastError = (error is Exception) ? error : Exception(error.toString());
    protocolError();
  }

  @override
  Future<void> processTransferSetupFrame(wire.Frame frame) async {
    // These frames arrive *after* decryption
    if (frame.hasV1() && frame.v1.type == wire.V1Frame_FrameType.CANCEL) {
      print("Inbound $id: Transfer cancelled by sender.");
      lastError = NearbyCancellationException(CancellationReason.userCanceled);
      await sendDisconnectionAndDisconnect();
      return;
    }

    switch (_currentState) {
      case InboundState.sentConnectionResponse:
        // Expecting PAIRED_KEY_ENCRYPTION
        if (!frame.hasV1() || !frame.v1.hasPairedKeyEncryption()) {
          throw NearbyProtocolException(
            "Expected PairedKeyEncryption, got ${frame.v1.type}",
          );
        }
        await _processPairedKeyEncryptionFrame(frame);
        break;
      case InboundState.sentPairedKeyResult:
        // Expecting PAIRED_KEY_RESULT
        if (!frame.hasV1() || !frame.v1.hasPairedKeyResult()) {
          throw NearbyProtocolException(
            "Expected PairedKeyResult, got ${frame.v1.type}",
          );
        }
        await _processPairedKeyResultFrame(frame);
        break;
      case InboundState.receivedPairedKeyResult:
        // Expecting INTRODUCTION
        if (!frame.hasV1() || !frame.v1.hasIntroduction()) {
          throw NearbyProtocolException(
            "Expected Introduction, got ${frame.v1.type}",
          );
        }
        await _processIntroductionFrame(frame);
        break;
      default:
        print(
          "Inbound $id: Unexpected transfer setup frame in state $_currentState: ${frame.toProto3Json()}",
        );
        throw NearbyProtocolException(
          "Unexpected transfer setup frame in state $_currentState",
        );
    }
  }

  @override
  Future<void> processFileChunk(offline.PayloadTransferFrame frame) async {
    final header = frame.payloadHeader;
    final chunk = frame.payloadChunk;
    final payloadId = header.id.toInt();

    final fileInfo = transferredFiles[payloadId];
    if (fileInfo == null) {
      throw NearbyProtocolException("File payload ID $payloadId is not known");
    }

    final currentOffset = fileInfo.bytesTransferred;
    if (chunk.offset.toInt() != currentOffset) {
      throw NearbyProtocolException(
        "Invalid offset into file ${chunk.offset}, expected $currentOffset",
      );
    }
    if (currentOffset + chunk.body.length > fileInfo.meta.size) {
      throw NearbyProtocolException(
        "Transferred file size exceeds previously specified value",
      );
    }

    if (chunk.body.isNotEmpty) {
      if (fileInfo.fileHandle == null) {
        // This should ideally not happen if acceptTransfer worked
        print(
          "Warning: File handle for payload $payloadId is null, attempting to reopen.",
        );
        try {
          fileInfo.fileHandle = await File(
            fileInfo.destinationPath,
          ).open(mode: FileMode.append);
          // If reopening, seek to the correct position just in case
          await fileInfo.fileHandle!.setPosition(currentOffset);
        } catch (e) {
          throw NearbyIOException();
        }
      }
      try {
        await fileInfo.fileHandle!.writeFrom(chunk.body);
        fileInfo.bytesTransferred += chunk.body.length;
        // TODO: Update progress via delegate if needed
      } catch (e) {
        throw NearbyIOException();
      }
    }

    // Check for LAST_CHUNK flag
    if ((chunk.flags & 1) == 1) {
      print("Inbound $id: Received last chunk for payload $payloadId");
      await fileInfo.fileHandle?.close();
      fileInfo.fileHandle = null; // Mark as closed
      transferredFiles.remove(payloadId); // Remove completed transfer

      if (transferredFiles.isEmpty) {
        print("Inbound $id: All files received, disconnecting.");
        await sendDisconnectionAndDisconnect();
      }
    }
  }

  @override
  Future<bool> processBytesPayload(Uint8List payload, int payloadId) async {
    if (payloadId == _textPayloadID && _textPayloadID != 0) {
      final urlStr = utf8.decode(payload);
      print("Inbound $id: Received URL: $urlStr");
      await launchUrl(Uri.parse(urlStr));
      await sendDisconnectionAndDisconnect();
      return true; // Handled
    } else {
      // Check if it's a text payload that we decided to save as a file
      final fileInfo = transferredFiles[payloadId];
      if (fileInfo != null && fileInfo.meta.mimeType == "text/plain") {
        if (fileInfo.fileHandle == null) {
          print(
            "Warning: File handle for text payload $payloadId is null, attempting to reopen.",
          );
          try {
            fileInfo.fileHandle = await File(
              fileInfo.destinationPath,
            ).open(mode: FileMode.append);
          } catch (e) {
            throw NearbyIOException();
          }
        }
        try {
          await fileInfo.fileHandle!.writeFrom(payload);
          fileInfo.bytesTransferred += payload.length;
          await fileInfo.fileHandle!.close();
          fileInfo.fileHandle = null;
          transferredFiles.remove(payloadId);
          print(
            "Inbound $id: Finished writing text payload $payloadId to file.",
          );
          if (transferredFiles.isEmpty) {
            await sendDisconnectionAndDisconnect();
          }
          return true; // Handled
        } catch (e) {
          throw NearbyIOException();
        }
      }
    }
    return false; // Not handled as a direct bytes payload here
  }

  // --- Private Processing Methods ---

  void _processConnectionRequestFrame(offline.OfflineFrame frame) {
    if (!frame.hasV1() ||
        !frame.v1.hasConnectionRequest() ||
        !frame.v1.connectionRequest.hasEndpointInfo()) {
      throw NearbyRequiredFieldMissingException(
        "connectionRequest | endpointInfo",
      );
    }
    if (frame.v1.type != offline.V1Frame_FrameType.CONNECTION_REQUEST) {
      throw NearbyProtocolException(
        "Expected CONNECTION_REQUEST, got ${frame.v1.type}",
      );
    }

    final endpointInfoBytes = frame.v1.connectionRequest.endpointInfo;
    try {
      final endpointInfo = EndpointInfo.deserialize(
        Uint8List.fromList(endpointInfoBytes),
      );

      // Create RemoteDeviceInfo initially without IP/Port from EndpointInfo payload
      final deviceInfo = RemoteDeviceInfo.fromEndpointInfo(
        endpointInfo,
        id,
        null, // IP not in EndpointInfo payload
        null, // Port not in EndpointInfo payload
      );

      // Now update it with the actual IP and Port from the socket
      remoteDeviceInfo = deviceInfo.copyWith(
        ipAddress: _remoteIpAddress,
        port: _remotePort,
      );

      print(
        "Inbound $id: Received connection request from ${remoteDeviceInfo!.name} (${remoteDeviceInfo!.type}) at $_remoteIpAddress:$_remotePort",
      );
      _currentState = InboundState.receivedConnectionRequest;
    } catch (e) {
      throw NearbyProtocolException("Failed to parse endpoint info: $e");
    }
  }

  void _processUkey2ClientInit(ukey.Ukey2Message msg) {
    if (msg.messageType != ukey.Ukey2Message_Type.CLIENT_INIT) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_TYPE);
      throw NearbyUkey2Exception();
    }
    if (!msg.hasMessageData()) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
      throw NearbyRequiredFieldMissingException("clientInit ukey2message.data");
    }

    ukey.Ukey2ClientInit clientInit;
    try {
      clientInit = ukey.Ukey2ClientInit.fromBuffer(msg.messageData);
    } catch (e) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
      throw NearbyUkey2Exception();
    }

    if (clientInit.version != 1) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_VERSION);
      throw NearbyUkey2Exception();
    }
    if (clientInit.random.length != 32) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_RANDOM);
      throw NearbyUkey2Exception();
    }

    bool foundP256 = false;
    for (final commitment in clientInit.cipherCommitments) {
      if (commitment.handshakeCipher == ukey.Ukey2HandshakeCipher.P256_SHA512) {
        foundP256 = true;
        _cipherCommitment = Uint8List.fromList(commitment.commitment);
        break;
      }
    }
    if (!foundP256) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_HANDSHAKE_CIPHER);
      throw NearbyUkey2Exception();
    }

    final nextProto =
        clientInit.hasNextProtocol() ? clientInit.nextProtocol : null;
    if (nextProto != "AES_256_CBC-HMAC_SHA256") {
      // Note: Swift code checks exact match. Let's be strict too.
      print(
        "Warning: Client proposed next protocol '$nextProto', expected 'AES_256_CBC-HMAC_SHA256'",
      );
      // Allowing for now, but might require alert in stricter implementations.
      // sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_NEXT_PROTOCOL);
      // throw NearbyUkey2Exception();
    }

    // Generate our keys (using PointyCastle)
    final (privKey, pubKey) = generateP256KeyPairPointyCastle();
    ukeyPrivateKey = privKey;
    ukeyPublicKey = pubKey;

    final serverInit = ukey.Ukey2ServerInit(
      version: 1,
      random: generateRandomBytes(32),
      handshakeCipher: ukey.Ukey2HandshakeCipher.P256_SHA512,
      publicKey: genericPublicKeyFromPointyCastle(pubKey).writeToBuffer(),
    );

    final serverInitMsg = ukey.Ukey2Message(
      messageType: ukey.Ukey2Message_Type.SERVER_INIT,
      messageData: serverInit.writeToBuffer(),
    );

    final serverInitData = serverInitMsg.writeToBuffer();
    ukeyServerInitMsgData = serverInitData; // Store raw bytes for HKDF
    sendFrame(serverInitData);
    _currentState = InboundState.sentUkeyServerInit;
  }

  void _processUkey2ClientFinish(ukey.Ukey2Message msg, Uint8List rawMsgData) {
    if (msg.messageType != ukey.Ukey2Message_Type.CLIENT_FINISH) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_TYPE);
      throw NearbyUkey2Exception();
    }
    if (!msg.hasMessageData()) {
      sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
      throw NearbyRequiredFieldMissingException(
        "clientFinish ukey2message.data",
      );
    }

    if (_cipherCommitment == null) {
      // Should not happen if ClientInit processing was correct
      throw StateError(
        "Cipher commitment is null during ClientFinish processing",
      );
    }

    // Verify commitment
    Sha512()
        .hash(rawMsgData)
        .then((digest) {
          if (!listsEqual(digest.bytes, _cipherCommitment!)) {
            print("Cipher commitment mismatch!");
            // Although Swift doesn't send an alert here, it seems appropriate
            sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
            throw NearbyUkey2Exception();
          }
          print("Cipher commitment verified.");

          // Proceed with key finalization
          try {
            final clientFinish = ukey.Ukey2ClientFinished.fromBuffer(
              msg.messageData,
            );
            if (!clientFinish.hasPublicKey()) {
              throw NearbyRequiredFieldMissingException(
                "ukey2clientFinish.publicKey",
              );
            }
            final clientKeyProto = sm.GenericPublicKey.fromBuffer(
              clientFinish.publicKey,
            );

            finalizeKeyExchange(clientKeyProto)
                .then((_) {
                  print("Inbound $id: UKEY2 Handshake Complete. PIN: $pinCode");
                  _currentState = InboundState.receivedUkeyClientFinish;

                  // Send ConnectionResponse (ACCEPT) - Unencrypted in Swift, but should be encrypted?
                  // The Swift code sends it *before* setting encryptionDone=true. Let's follow that.
                  // The subsequent PairedKeyEncryption _is_ encrypted.
                  final connResp = offline.ConnectionResponseFrame(
                    response:
                        offline.ConnectionResponseFrame_ResponseStatus.ACCEPT,
                    status: 0, // OK status code
                    osInfo: offline.OsInfo(
                      type: offline.OsInfo_OsType.APPLE,
                    ), // Mimic Swift
                  );
                  final v1Frame = offline.V1Frame(
                    type: offline.V1Frame_FrameType.CONNECTION_RESPONSE,
                    connectionResponse: connResp,
                  );
                  final offlineFrame = offline.OfflineFrame(
                    version: offline.OfflineFrame_Version.V1,
                    v1: v1Frame,
                  );
                  sendFrame(offlineFrame.writeToBuffer());
                  print("Inbound $id: Sent unencrypted ConnectionResponse ACK");

                  // NOW encryption is considered active for subsequent messages
                  encryptionDone = true;

                  // Send the first encrypted message: PairedKeyEncryption (dummy data like Swift)
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

                  // Send this encrypted setup frame
                  sendTransferSetupFrame(wireFrame)
                      .then((_) {
                        print(
                          "Inbound $id: Sent encrypted PairedKeyEncryption",
                        );
                        _currentState =
                            InboundState
                                .sentConnectionResponse; // State after *sending* our response+pairedKey
                      })
                      .catchError(_handleAsyncError);
                })
                .catchError(
                  _handleAsyncError,
                ); // Catch finalizeKeyExchange errors
          } catch (e, s) {
            print("Error processing ClientFinish payload: $e\n$s");
            sendUkey2Alert(ukey.Ukey2Alert_AlertType.BAD_MESSAGE_DATA);
            throw NearbyUkey2Exception();
          }
        })
        .catchError(_handleAsyncError); // Catch SHA512 hash errors
  }

  // Handles the encrypted PAIRED_KEY_ENCRYPTION frame from the client
  Future<void> _processPairedKeyEncryptionFrame(wire.Frame frame) async {
    print("Inbound $id: Processing PairedKeyEncryption");
    // We don't actually *use* the data, just send back UNABLE result like Swift
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
    print("Inbound $id: Sent PairedKeyResult (UNABLE)");
    _currentState = InboundState.sentPairedKeyResult;
  }

  // Handles the encrypted PAIRED_KEY_RESULT frame from the client
  Future<void> _processPairedKeyResultFrame(wire.Frame frame) async {
    print("Inbound $id: Processing PairedKeyResult");
    // We don't care about the result, just move to the next state
    // where we expect the Introduction frame.
    _currentState = InboundState.receivedPairedKeyResult;
    print("Inbound $id: Ready to receive Introduction frame");
  }

  // Handles the Introduction frame (list of files/text)
  Future<void> _processIntroductionFrame(wire.Frame frame) async {
    print("Inbound $id: Processing Introduction");
    if (!frame.hasV1() || !frame.v1.hasIntroduction()) {
      throw NearbyRequiredFieldMissingException("frame.v1.introduction");
    }
    _currentState = InboundState.waitingForUserConsent;
    final introduction = frame.v1.introduction;

    List<ShareFileMetadata> filesMeta = [];
    String? textDesc;

    // Prepare file info if files are present
    if (introduction.fileMetadata.isNotEmpty) {
      final downloadsDir = await getDownloadsDirectory();
      if (downloadsDir == null) {
        // Handle error: Unable to get downloads directory
        await rejectTransfer(
          reason: wire.ConnectionResponseFrame_Status.NOT_ENOUGH_SPACE,
        ); // Or a different error?
        return;
      }
      final downloadsPath = downloadsDir.path;

      for (final file in introduction.fileMetadata) {
        // Ensure payloadId is treated as int
        final payloadIdInt = file.payloadId.toInt();
        if (payloadIdInt == 0) {
          // Should not happen with random IDs
          print(
            "Warning: Received file metadata with payload ID 0 for ${file.name}",
          );
          continue; // Skip this file potentially
        }
        final safeName = _sanitizeFileName(file.name);
        final destPath = await _makeUniqueFilePath(
          p.join(downloadsPath, safeName),
        );
        final fileMeta = ShareFileMetadata(
          name: p.basename(destPath),
          size: file.size.toInt(),
          mimeType:
              file.mimeType.isNotEmpty
                  ? file.mimeType
                  : 'application/octet-stream',
        );
        filesMeta.add(fileMeta);
        transferredFiles[payloadIdInt] = InternalFileInfo(
          meta: fileMeta,
          payloadID: payloadIdInt,
          destinationPath: destPath,
        );
      }
    }

    // Handle text metadata
    if (introduction.textMetadata.isNotEmpty) {
      if (introduction.textMetadata.length == 1) {
        final textMeta = introduction.textMetadata.first;
        final payloadIdInt = textMeta.payloadId.toInt();
        if (payloadIdInt == 0) {
          print(
            "Warning: Received text metadata with payload ID 0 for ${textMeta.textTitle}",
          );
          // Decide how to handle this - maybe reject?
          await rejectTransfer(
            reason: wire.ConnectionResponseFrame_Status.REJECT,
          );
          return;
        }
        _textPayloadID = payloadIdInt;
        textDesc =
            textMeta.textTitle.isNotEmpty
                ? textMeta.textTitle
                : (textMeta.type == wire.TextMetadata_Type.URL
                    ? "URL"
                    : "Text");

        if (textMeta.type == wire.TextMetadata_Type.TEXT ||
            textMeta.type == wire.TextMetadata_Type.ADDRESS ||
            textMeta.type == wire.TextMetadata_Type.PHONE_NUMBER) {
          final downloadsDir = await getDownloadsDirectory();
          if (downloadsDir == null) {
            await rejectTransfer(
              reason: wire.ConnectionResponseFrame_Status.NOT_ENOUGH_SPACE,
            );
            return;
          }
          final downloadsPath = downloadsDir.path;
          final timestamp = DateTime.now()
              .toIso8601String()
              .replaceAll(':', '.')
              .replaceAll('T', '_')
              .substring(0, 19); // Make filename safer
          final fileName = _sanitizeFileName(
            textMeta.textTitle.isNotEmpty
                ? '${textMeta.textTitle}.txt'
                : 'shared_text_$timestamp.txt',
          );
          final destPath = await _makeUniqueFilePath(
            p.join(downloadsPath, fileName),
          );

          final fileMeta = ShareFileMetadata(
            name: p.basename(destPath),
            size: textMeta.size.toInt(),
            mimeType: 'text/plain',
          );
          filesMeta.add(fileMeta);
          transferredFiles[payloadIdInt] = InternalFileInfo(
            meta: fileMeta,
            payloadID: payloadIdInt,
            destinationPath: destPath,
          );
          _textPayloadID = 0; // Reset since we save it as file
          textDesc = null;
        } else if (textMeta.type != wire.TextMetadata_Type.URL) {
          await rejectTransfer(
            reason:
                wire.ConnectionResponseFrame_Status.UNSUPPORTED_ATTACHMENT_TYPE,
          );
          return;
        }
      } else {
        await rejectTransfer(
          reason:
              wire.ConnectionResponseFrame_Status.UNSUPPORTED_ATTACHMENT_TYPE,
        );
        return;
      }
    }

    if (filesMeta.isEmpty && textDesc == null) {
      print("Inbound $id: Introduction frame has no actionable content.");
      await rejectTransfer(reason: wire.ConnectionResponseFrame_Status.REJECT);
      return;
    }

    final transferMeta = TransferMetadata(
      files: filesMeta,
      id: id, // Use connection ID for transfer tracking
      pinCode: pinCode, // Get pinCode from NearbyConnection base class
      textDescription: textDesc,
    );

    // Ensure remoteDeviceInfo is not null before accessing it
    if (remoteDeviceInfo == null) {
      // This shouldn't happen if ConnectionRequest was processed correctly
      throw StateError(
        "RemoteDeviceInfo is null when trying to obtain user consent",
      );
    }
    Future.microtask(
      () => delegate?.obtainUserConsent(transferMeta, remoteDeviceInfo!, this),
    );
  }

  // Called by the UI/Manager to accept or reject the transfer
  Future<void> submitUserConsent(bool accepted) async {
    if (_currentState != InboundState.waitingForUserConsent) {
      print(
        "Inbound $id: submitUserConsent called in unexpected state: $_currentState",
      );
      return;
    }

    if (accepted) {
      await acceptTransfer();
    } else {
      await rejectTransfer();
    }
  }

  // --- Private Helper Methods ---

  Future<void> acceptTransfer() async {
    print("Inbound $id: Transfer accepted by user.");
    try {
      // Create files and open handles *before* sending ACCEPT
      for (final entry in transferredFiles.entries) {
        final id = entry.key;
        final fileInfo = entry.value;
        try {
          final file = File(fileInfo.destinationPath);
          // Ensure directory exists
          await file.parent.create(recursive: true);
          // Open file for appending (or writing if new)
          fileInfo.fileHandle = await file.open(mode: FileMode.writeOnlyAppend);
          fileInfo.created = true;
          print(
            "Inbound $id: Opened file handle for ${fileInfo.destinationPath}",
          );
          // TODO: Initialize and publish progress if needed
        } catch (e, s) {
          print(
            "Inbound $id: Failed to create/open file ${fileInfo.destinationPath}: $e\n$s",
          );
          // Clean up already opened files before rejecting
          await _cleanupFailedAccept();
          await rejectTransfer(
            reason: wire.ConnectionResponseFrame_Status.NOT_ENOUGH_SPACE,
          ); // Or a generic failure?
          return;
        }
      }

      // Send ACCEPT response
      final responseFrame = wire.ConnectionResponseFrame(
        status: wire.ConnectionResponseFrame_Status.ACCEPT,
      );
      final v1WireFrame = wire.V1Frame(
        type: wire.V1Frame_FrameType.RESPONSE,
        connectionResponse: responseFrame,
      );
      final wireFrame = wire.Frame(
        version: wire.Frame_Version.V1,
        v1: v1WireFrame,
      );

      await sendTransferSetupFrame(wireFrame);
      _currentState = InboundState.receivingFiles;
      print(
        "Inbound $id: Sent ACCEPT response, entering receivingFiles state.",
      );
    } catch (e, s) {
      print("Inbound $id: Error during acceptTransfer: $e\n$s");
      lastError = (e is Exception) ? e : Exception(e.toString());
      // Attempt to clean up and disconnect
      await _cleanupFailedAccept();
      protocolError();
    }
  }

  Future<void> _cleanupFailedAccept() async {
    for (final fileInfo in transferredFiles.values) {
      await fileInfo.fileHandle?.close();
      if (fileInfo.created) {
        try {
          await File(fileInfo.destinationPath).delete();
        } catch (e) {
          print(
            "Failed to delete partially created file ${fileInfo.destinationPath}: $e",
          );
        }
      }
    }
    transferredFiles.clear(); // Clear the map
  }

  Future<void> rejectTransfer({
    wire.ConnectionResponseFrame_Status reason =
        wire.ConnectionResponseFrame_Status.REJECT,
  }) async {
    print("Inbound $id: Rejecting transfer with reason: $reason");
    final responseFrame = wire.ConnectionResponseFrame(status: reason);
    final v1WireFrame = wire.V1Frame(
      type: wire.V1Frame_FrameType.RESPONSE,
      connectionResponse: responseFrame,
    );
    final wireFrame = wire.Frame(
      version: wire.Frame_Version.V1,
      v1: v1WireFrame,
    );

    try {
      await sendTransferSetupFrame(wireFrame);
      await sendDisconnectionAndDisconnect(); // Disconnect after sending rejection
    } catch (e, s) {
      print("Inbound $id: Error sending rejection/disconnection: $e\n$s");
      protocolError(); // Force disconnect on error
    }
    // No need to change state here, sendDisconnection handles it
  }

  Future<void> _deletePartiallyReceivedFiles() async {
    print("Inbound $id: Cleaning up partially received files...");
    for (final fileInfo in transferredFiles.values) {
      await fileInfo.fileHandle?.close(); // Close handle if open
      if (fileInfo.created) {
        // Only delete if we actually created it
        try {
          final file = File(fileInfo.destinationPath);
          if (await file.exists()) {
            await file.delete();
            print("Deleted partial file: ${fileInfo.destinationPath}");
          }
        } catch (e) {
          print(
            "Error deleting partially received file ${fileInfo.destinationPath}: $e",
          );
        }
      }
    }
    transferredFiles.clear(); // Clear the tracking map
  }

  String _sanitizeFileName(String name) {
    // Basic sanitization: replace reserved characters with underscore
    // More robust sanitization might be needed depending on target platforms
    return name.replaceAll(RegExp(r'[\\/:\*\?"<>\|]'), '_');
  }

  Future<String> _makeUniqueFilePath(String initialPath) async {
    String dir = p.dirname(initialPath);
    String filename = p.basenameWithoutExtension(initialPath);
    String ext = p.extension(initialPath);
    String finalPath = initialPath;
    int counter = 1;

    while (await File(finalPath).exists() ||
        await Directory(finalPath).exists()) {
      finalPath = p.join(dir, '$filename ($counter)$ext');
      counter++;
    }
    return finalPath;
  }
}
