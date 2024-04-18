//
//  Generated code. Do not modify.
//  source: ukey.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Ukey2HandshakeCipher extends $pb.ProtobufEnum {
  static const Ukey2HandshakeCipher RESERVED = Ukey2HandshakeCipher._(0, _omitEnumNames ? '' : 'RESERVED');
  static const Ukey2HandshakeCipher P256_SHA512 = Ukey2HandshakeCipher._(100, _omitEnumNames ? '' : 'P256_SHA512');
  static const Ukey2HandshakeCipher CURVE25519_SHA512 = Ukey2HandshakeCipher._(200, _omitEnumNames ? '' : 'CURVE25519_SHA512');

  static const $core.List<Ukey2HandshakeCipher> values = <Ukey2HandshakeCipher> [
    RESERVED,
    P256_SHA512,
    CURVE25519_SHA512,
  ];

  static final $core.Map<$core.int, Ukey2HandshakeCipher> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Ukey2HandshakeCipher? valueOf($core.int value) => _byValue[value];

  const Ukey2HandshakeCipher._($core.int v, $core.String n) : super(v, n);
}

class Ukey2Message_Type extends $pb.ProtobufEnum {
  static const Ukey2Message_Type UNKNOWN_DO_NOT_USE = Ukey2Message_Type._(0, _omitEnumNames ? '' : 'UNKNOWN_DO_NOT_USE');
  static const Ukey2Message_Type ALERT = Ukey2Message_Type._(1, _omitEnumNames ? '' : 'ALERT');
  static const Ukey2Message_Type CLIENT_INIT = Ukey2Message_Type._(2, _omitEnumNames ? '' : 'CLIENT_INIT');
  static const Ukey2Message_Type SERVER_INIT = Ukey2Message_Type._(3, _omitEnumNames ? '' : 'SERVER_INIT');
  static const Ukey2Message_Type CLIENT_FINISH = Ukey2Message_Type._(4, _omitEnumNames ? '' : 'CLIENT_FINISH');

  static const $core.List<Ukey2Message_Type> values = <Ukey2Message_Type> [
    UNKNOWN_DO_NOT_USE,
    ALERT,
    CLIENT_INIT,
    SERVER_INIT,
    CLIENT_FINISH,
  ];

  static final $core.Map<$core.int, Ukey2Message_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Ukey2Message_Type? valueOf($core.int value) => _byValue[value];

  const Ukey2Message_Type._($core.int v, $core.String n) : super(v, n);
}

class Ukey2Alert_AlertType extends $pb.ProtobufEnum {
  static const Ukey2Alert_AlertType BAD_MESSAGE = Ukey2Alert_AlertType._(1, _omitEnumNames ? '' : 'BAD_MESSAGE');
  static const Ukey2Alert_AlertType BAD_MESSAGE_TYPE = Ukey2Alert_AlertType._(2, _omitEnumNames ? '' : 'BAD_MESSAGE_TYPE');
  static const Ukey2Alert_AlertType INCORRECT_MESSAGE = Ukey2Alert_AlertType._(3, _omitEnumNames ? '' : 'INCORRECT_MESSAGE');
  static const Ukey2Alert_AlertType BAD_MESSAGE_DATA = Ukey2Alert_AlertType._(4, _omitEnumNames ? '' : 'BAD_MESSAGE_DATA');
  static const Ukey2Alert_AlertType BAD_VERSION = Ukey2Alert_AlertType._(100, _omitEnumNames ? '' : 'BAD_VERSION');
  static const Ukey2Alert_AlertType BAD_RANDOM = Ukey2Alert_AlertType._(101, _omitEnumNames ? '' : 'BAD_RANDOM');
  static const Ukey2Alert_AlertType BAD_HANDSHAKE_CIPHER = Ukey2Alert_AlertType._(102, _omitEnumNames ? '' : 'BAD_HANDSHAKE_CIPHER');
  static const Ukey2Alert_AlertType BAD_NEXT_PROTOCOL = Ukey2Alert_AlertType._(103, _omitEnumNames ? '' : 'BAD_NEXT_PROTOCOL');
  static const Ukey2Alert_AlertType BAD_PUBLIC_KEY = Ukey2Alert_AlertType._(104, _omitEnumNames ? '' : 'BAD_PUBLIC_KEY');
  static const Ukey2Alert_AlertType INTERNAL_ERROR = Ukey2Alert_AlertType._(200, _omitEnumNames ? '' : 'INTERNAL_ERROR');

  static const $core.List<Ukey2Alert_AlertType> values = <Ukey2Alert_AlertType> [
    BAD_MESSAGE,
    BAD_MESSAGE_TYPE,
    INCORRECT_MESSAGE,
    BAD_MESSAGE_DATA,
    BAD_VERSION,
    BAD_RANDOM,
    BAD_HANDSHAKE_CIPHER,
    BAD_NEXT_PROTOCOL,
    BAD_PUBLIC_KEY,
    INTERNAL_ERROR,
  ];

  static final $core.Map<$core.int, Ukey2Alert_AlertType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Ukey2Alert_AlertType? valueOf($core.int value) => _byValue[value];

  const Ukey2Alert_AlertType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
