import 'dart:io';

import 'package:crossdrop/nearby_share/file_metadata.dart';

class InternalFileInfo {
  final FileMetadata meta;
  final int payloadId;
  final Uri destinationUrl;
  int bytesTransferred = 0;
  File? fileHandle;
  Progress? progress;
  bool created = false;

  InternalFileInfo({
    required this.meta,
    required this.payloadId,
    required this.destinationUrl,
  });

  @override
  String toString() {
    return 'InternalFileInfo{meta: $meta, payloadId: $payloadId, destinationUrl: $destinationUrl, bytesTransferred: $bytesTransferred, fileHandle: $fileHandle, progress: $progress, created: $created}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InternalFileInfo &&
          runtimeType == other.runtimeType &&
          meta == other.meta &&
          payloadId == other.payloadId &&
          destinationUrl == other.destinationUrl &&
          bytesTransferred == other.bytesTransferred &&
          fileHandle == other.fileHandle &&
          progress == other.progress &&
          created == other.created;

  @override
  int get hashCode => meta.hashCode ^ payloadId.hashCode ^ destinationUrl.hashCode ^ bytesTransferred.hashCode ^ fileHandle.hashCode ^ progress.hashCode ^ created.hashCode;
}

class Progress {
  // Define your Progress class if it's not already defined.
}
