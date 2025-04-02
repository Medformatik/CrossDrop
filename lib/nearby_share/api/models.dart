import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crossdrop/nearby_share/protobuf/wire_format.pb.dart'
    as wire_format;
import 'package:crossdrop/nearby_share/utils/data_extension.dart';

// Corresponds to Swift's RemoteDeviceInfo.DeviceType
enum DeviceType {
  unknown,
  phone,
  tablet,
  computer;

  static DeviceType fromRawValue(int value) {
    switch (value) {
      case 1:
        return DeviceType.phone;
      case 2:
        return DeviceType.tablet;
      case 3:
        return DeviceType.computer;
      default:
        return DeviceType.unknown;
    }
  }

  int get rawValue {
    switch (this) {
      case DeviceType.phone:
        return 1;
      case DeviceType.tablet:
        return 2;
      case DeviceType.computer:
        return 3;
      default:
        return 0;
    }
  }
}

// Corresponds to Swift's RemoteDeviceInfo
class RemoteDeviceInfo {
  final String name;
  final DeviceType type;
  final String id; // Endpoint ID
  String? ipAddress; // Resolved IP address
  int? port; // Resolved port

  RemoteDeviceInfo({
    required this.name,
    required this.type,
    required this.id,
    this.ipAddress, // Make optional initially
    this.port, // Make optional initially
  });

  // Update factory or create a new method to include resolved info
  factory RemoteDeviceInfo.fromEndpointInfo(
    EndpointInfo info,
    String id,
    String? ip,
    int? port,
  ) {
    return RemoteDeviceInfo(
      name: info.name,
      type: info.deviceType,
      id: id,
      ipAddress: ip,
      port: port,
    );
  }

  // Add a copyWith for updating later
  RemoteDeviceInfo copyWith({
    String? name,
    DeviceType? type,
    String? id,
    String? ipAddress,
    int? port,
  }) {
    return RemoteDeviceInfo(
      name: name ?? this.name,
      type: type ?? this.type,
      id: id ?? this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      port: port ?? this.port,
    );
  }

  // Helper to check if resolved
  bool get isResolved => ipAddress != null && port != null;
}

// Corresponds to Swift's FileMetadata
class ShareFileMetadata {
  final String name;
  final int size;
  final String mimeType;

  ShareFileMetadata({
    required this.name,
    required this.size,
    required this.mimeType,
  });
}

// Corresponds to Swift's TransferMetadata
class TransferMetadata {
  final List<ShareFileMetadata> files;
  final String id; // Connection ID
  final String? pinCode;
  final String? textDescription;

  TransferMetadata({
    required this.files,
    required this.id,
    this.pinCode,
    this.textDescription,
  });
}

// Corresponds to Swift's EndpointInfo
class EndpointInfo {
  final String name;
  final DeviceType deviceType;

  EndpointInfo({required this.name, required this.deviceType});

  factory EndpointInfo.deserialize(Uint8List data) {
    if (data.length < 18) {
      throw ArgumentError("Endpoint info too short (< 18 bytes)");
    }
    final deviceNameLength = data[17];
    if (data.length < deviceNameLength + 18) {
      throw ArgumentError("Endpoint info too short for device name");
    }
    final deviceName = utf8.decode(data.sublist(18, 18 + deviceNameLength));
    final rawDeviceType = (data[0] >> 1) & 7;
    return EndpointInfo(
      name: deviceName,
      deviceType: DeviceType.fromRawValue(rawDeviceType),
    );
  }

  Uint8List serialize() {
    final List<int> endpointInfo = [];
    // Version (3 bits) | Visibility (1 bit) | Device Type (3 bits) | Reserved (1 bit)
    // Let's assume version 1, visibility 1 (visible to everyone)
    // Version 001, Visibility 1, Type (variable), Reserved 0 -> 0011 XXX 0
    // We only set the type for now. Version/Visibility might need adjustment.
    final byte0 =
        (deviceType.rawValue << 1) & 0x0E; // Set bits 1, 2, 3 for type
    endpointInfo.add(byte0);

    // 16 random bytes (Placeholder - might need specific values later if required by protocol)
    endpointInfo.addAll(generateRandomBytes(16));

    // Device name (UTF-8, 1-byte length prefix)
    Uint8List nameBytes = utf8.encode(name);
    if (nameBytes.length > 255) {
      nameBytes = nameBytes.sublist(0, 255);
    }
    endpointInfo.add(nameBytes.length);
    endpointInfo.addAll(nameBytes);

    return Uint8List.fromList(endpointInfo);
  }
}

// Corresponds to Swift's InternalFileInfo
class InternalFileInfo {
  final ShareFileMetadata meta;
  final int payloadID; // Protobuf uses Int64, Dart int handles this
  final String destinationPath; // Use path string instead of URL
  int bytesTransferred = 0;
  RandomAccessFile? fileHandle;
  bool created = false;
  // Progress tracking can be added here if needed (e.g., using StreamController)

  InternalFileInfo({
    required this.meta,
    required this.payloadID,
    required this.destinationPath,
  });
}

// Corresponds to Swift's OutgoingFileTransfer
class OutgoingFileTransfer {
  final String sourcePath; // Use path string
  final int payloadID;
  RandomAccessFile? handle;
  final int totalBytes;
  int currentOffset = 0;

  OutgoingFileTransfer({
    required this.sourcePath,
    required this.payloadID,
    this.handle,
    required this.totalBytes,
  });
}

// Error definitions matching Swift's NearbyError
class NearbyApiException implements Exception {
  final String message;
  NearbyApiException(this.message);
  @override
  String toString() => 'NearbyApiException: $message';
}

class NearbyProtocolException extends NearbyApiException {
  NearbyProtocolException(String message) : super('Protocol Error: $message');
}

class NearbyRequiredFieldMissingException extends NearbyApiException {
  NearbyRequiredFieldMissingException(String field)
    : super('Required field missing: $field');
}

class NearbyUkey2Exception extends NearbyApiException {
  NearbyUkey2Exception() : super('UKEY2 Error');
}

class NearbyIOException extends NearbyApiException {
  NearbyIOException() : super('Input/Output Error');
}

enum CancellationReason {
  userRejected,
  userCanceled,
  notEnoughSpace,
  unsupportedType,
  timedOut,
}

class NearbyCancellationException extends NearbyApiException {
  final CancellationReason reason;
  NearbyCancellationException(this.reason)
    : super('Transfer Cancelled: $reason');
}

// Convert wire_format FileMetadata to internal ShareFileMetadata
ShareFileMetadata wireToShareFileMetadata(wire_format.FileMetadata wireMeta) {
  return ShareFileMetadata(
    name: wireMeta.name,
    size: wireMeta.size.toInt(), // Convert Int64
    mimeType: wireMeta.mimeType,
  );
}

// Convert offline_wire_formats PayloadTransferFrame to internal FileInfo representation (or similar)
// This might be more complex depending on how you structure file reception

// Helper to map wire_format status to CancellationReason
CancellationReason? wireStatusToCancellationReason(
  wire_format.ConnectionResponseFrame_Status status,
) {
  switch (status) {
    case wire_format.ConnectionResponseFrame_Status.REJECT:
      return CancellationReason.userRejected;
    case wire_format.ConnectionResponseFrame_Status.NOT_ENOUGH_SPACE:
      return CancellationReason.notEnoughSpace;
    case wire_format.ConnectionResponseFrame_Status.UNSUPPORTED_ATTACHMENT_TYPE:
      return CancellationReason.unsupportedType;
    case wire_format.ConnectionResponseFrame_Status.TIMED_OUT:
      return CancellationReason.timedOut;
    case wire_format.ConnectionResponseFrame_Status.ACCEPT:
    case wire_format.ConnectionResponseFrame_Status.UNKNOWN:
    default:
      return null; // Not a cancellation
  }
}
