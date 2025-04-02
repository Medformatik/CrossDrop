import 'dart:convert';
import 'dart:typed_data';

extension DataExtensions on Uint8List {
  String urlSafeBase64EncodedString() {
    String base64String = base64.encode(this);
    return base64String
        .replaceAll(RegExp('='), '')
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  static Uint8List dataFromUrlSafeBase64(String str) {
    var regularB64 = str.replaceAll('_', '/').replaceAll('-', '+');
    while (regularB64.length % 4 != 0) {
      regularB64 += '=';
    }
    return base64.decode(regularB64);
  }

  static Uint8List randomData(int length) {
    var data = Uint8List(length);
    for (var i = 0; i < length; i++) {
      data[i] = (DateTime.now().microsecondsSinceEpoch % 256).toUnsigned(8);
    }
    return data;
  }
}
