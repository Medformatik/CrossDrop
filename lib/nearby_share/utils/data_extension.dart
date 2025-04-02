import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

/// Generates cryptographically secure random bytes.
Uint8List generateRandomBytes(int length) {
  final random = Random.secure();
  final values = List<int>.generate(length, (i) => random.nextInt(256));
  return Uint8List.fromList(values);
}

/// Encodes bytes to a URL-safe Base64 string without padding.
String urlSafeBase64Encode(Uint8List bytes) {
  return base64UrlEncode(bytes).replaceAll('=', '');
}

/// Decodes a URL-safe Base64 string (potentially without padding) to bytes.
Uint8List? urlSafeBase64Decode(String str) {
  try {
    String regularB64 = str.replaceAll('_', '/').replaceAll('-', '+');
    // Add padding if necessary
    while (regularB64.length % 4 != 0) {
      regularB64 += '=';
    }
    return base64Decode(regularB64);
  } catch (e) {
    print('Error decoding base64 string: $e');
    return null;
  }
}

extension Uint8ListUrlSafeBase64 on Uint8List {
  /// Encodes this byte list to a URL-safe Base64 string without padding.
  String toUrlSafeBase64() => urlSafeBase64Encode(this);
}

extension StringUrlSafeBase64 on String {
  /// Decodes this URL-safe Base64 string (potentially without padding) to bytes.
  Uint8List? fromUrlSafeBase64() => urlSafeBase64Decode(this);
}
