import 'package:crossdrop/nearby_share/file_metadata.dart';
import 'package:flutter/foundation.dart';

class TransferMetadata {
  final List<FileMetadata> files;

  TransferMetadata(this.files);

  @override
  String toString() {
    return 'TransferMetadata{files: $files}';
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransferMetadata && runtimeType == other.runtimeType && listEquals(other.files, files);

  @override
  int get hashCode => files.hashCode;
}
