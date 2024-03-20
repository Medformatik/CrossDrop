class NearbyError implements Exception {
  final String message;

  NearbyError.protocolError(this.message);
  NearbyError.requiredFieldMissing() : message = 'Required field is missing';
  NearbyError.ukey2() : message = 'ukey2';
  NearbyError.inputOutput() : message = 'Input/Output error';

  @override
  String toString() {
    return 'NearbyError{message: $message}';
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is NearbyError && runtimeType == other.runtimeType && message == other.message;

  @override
  int get hashCode => message.hashCode;
}
