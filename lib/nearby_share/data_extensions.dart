import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/services.dart';

extension Uint8ListExtension on Uint8List {
  String urlSafeBase64EncodedString() {
    String base64String = base64.encode(this);
    String urlSafeString = base64String.replaceAll(RegExp(r'='), '');
    urlSafeString = urlSafeString.replaceAll('/', '_');
    urlSafeString = urlSafeString.replaceAll('+', '-');
    return urlSafeString;
  }
}

class Data {
  static Uint8List randomData(int length) {
    var data = Uint8List(length);
    final rng = Random.secure();
    for (var i = 0; i < length; i++) {
      data[i] = rng.nextInt(256);
    }
    return data;
  }
}
