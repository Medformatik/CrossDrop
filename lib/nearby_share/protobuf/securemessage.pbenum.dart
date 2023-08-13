//
//  Generated code. Do not modify.
//  source: securemessage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SigScheme extends $pb.ProtobufEnum {
  static const SigScheme HMAC_SHA256 = SigScheme._(1, _omitEnumNames ? '' : 'HMAC_SHA256');
  static const SigScheme ECDSA_P256_SHA256 = SigScheme._(2, _omitEnumNames ? '' : 'ECDSA_P256_SHA256');
  static const SigScheme RSA2048_SHA256 = SigScheme._(3, _omitEnumNames ? '' : 'RSA2048_SHA256');

  static const $core.List<SigScheme> values = <SigScheme> [
    HMAC_SHA256,
    ECDSA_P256_SHA256,
    RSA2048_SHA256,
  ];

  static final $core.Map<$core.int, SigScheme> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SigScheme? valueOf($core.int value) => _byValue[value];

  const SigScheme._($core.int v, $core.String n) : super(v, n);
}

class EncScheme extends $pb.ProtobufEnum {
  static const EncScheme NONE = EncScheme._(1, _omitEnumNames ? '' : 'NONE');
  static const EncScheme AES_256_CBC = EncScheme._(2, _omitEnumNames ? '' : 'AES_256_CBC');

  static const $core.List<EncScheme> values = <EncScheme> [
    NONE,
    AES_256_CBC,
  ];

  static final $core.Map<$core.int, EncScheme> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EncScheme? valueOf($core.int value) => _byValue[value];

  const EncScheme._($core.int v, $core.String n) : super(v, n);
}

class PublicKeyType extends $pb.ProtobufEnum {
  static const PublicKeyType EC_P256 = PublicKeyType._(1, _omitEnumNames ? '' : 'EC_P256');
  static const PublicKeyType RSA2048 = PublicKeyType._(2, _omitEnumNames ? '' : 'RSA2048');
  static const PublicKeyType DH2048_MODP = PublicKeyType._(3, _omitEnumNames ? '' : 'DH2048_MODP');

  static const $core.List<PublicKeyType> values = <PublicKeyType> [
    EC_P256,
    RSA2048,
    DH2048_MODP,
  ];

  static final $core.Map<$core.int, PublicKeyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PublicKeyType? valueOf($core.int value) => _byValue[value];

  const PublicKeyType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
