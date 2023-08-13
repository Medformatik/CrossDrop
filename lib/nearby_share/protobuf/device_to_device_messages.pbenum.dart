//
//  Generated code. Do not modify.
//  source: device_to_device_messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Curve extends $pb.ProtobufEnum {
  static const Curve ED_25519 = Curve._(1, _omitEnumNames ? '' : 'ED_25519');

  static const $core.List<Curve> values = <Curve> [
    ED_25519,
  ];

  static final $core.Map<$core.int, Curve> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Curve? valueOf($core.int value) => _byValue[value];

  const Curve._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
