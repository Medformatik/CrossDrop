class FileMetadata {
  final String name;
  final int size;
  final String mimeType;

  const FileMetadata({
    required this.name,
    required this.size,
    required this.mimeType,
  });

  @override
  String toString() {
    return 'FileMetadata{name: $name, size: $size, mimeType: $mimeType}';
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileMetadata && runtimeType == other.runtimeType && name == other.name && size == other.size && mimeType == other.mimeType;

  @override
  int get hashCode => name.hashCode ^ size.hashCode ^ mimeType.hashCode;
}
