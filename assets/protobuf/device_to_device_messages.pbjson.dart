//
//  Generated code. Do not modify.
//  source: device_to_device_messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use curveDescriptor instead')
const Curve$json = {
  '1': 'Curve',
  '2': [
    {'1': 'ED_25519', '2': 1},
  ],
};

/// Descriptor for `Curve`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List curveDescriptor = $convert.base64Decode(
    'CgVDdXJ2ZRIMCghFRF8yNTUxORAB');

@$core.Deprecated('Use deviceToDeviceMessageDescriptor instead')
const DeviceToDeviceMessage$json = {
  '1': 'DeviceToDeviceMessage',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 12, '10': 'message'},
    {'1': 'sequence_number', '3': 2, '4': 1, '5': 5, '10': 'sequenceNumber'},
  ],
};

/// Descriptor for `DeviceToDeviceMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceToDeviceMessageDescriptor = $convert.base64Decode(
    'ChVEZXZpY2VUb0RldmljZU1lc3NhZ2USGAoHbWVzc2FnZRgBIAEoDFIHbWVzc2FnZRInCg9zZX'
    'F1ZW5jZV9udW1iZXIYAiABKAVSDnNlcXVlbmNlTnVtYmVy');

@$core.Deprecated('Use initiatorHelloDescriptor instead')
const InitiatorHello$json = {
  '1': 'InitiatorHello',
  '2': [
    {'1': 'public_dh_key', '3': 1, '4': 1, '5': 11, '6': '.securemessage.GenericPublicKey', '10': 'publicDhKey'},
    {'1': 'protocol_version', '3': 2, '4': 1, '5': 5, '7': '0', '10': 'protocolVersion'},
  ],
};

/// Descriptor for `InitiatorHello`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiatorHelloDescriptor = $convert.base64Decode(
    'Cg5Jbml0aWF0b3JIZWxsbxJDCg1wdWJsaWNfZGhfa2V5GAEgASgLMh8uc2VjdXJlbWVzc2FnZS'
    '5HZW5lcmljUHVibGljS2V5UgtwdWJsaWNEaEtleRIsChBwcm90b2NvbF92ZXJzaW9uGAIgASgF'
    'OgEwUg9wcm90b2NvbFZlcnNpb24=');

@$core.Deprecated('Use responderHelloDescriptor instead')
const ResponderHello$json = {
  '1': 'ResponderHello',
  '2': [
    {'1': 'public_dh_key', '3': 1, '4': 1, '5': 11, '6': '.securemessage.GenericPublicKey', '10': 'publicDhKey'},
    {'1': 'protocol_version', '3': 2, '4': 1, '5': 5, '7': '0', '10': 'protocolVersion'},
  ],
};

/// Descriptor for `ResponderHello`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responderHelloDescriptor = $convert.base64Decode(
    'Cg5SZXNwb25kZXJIZWxsbxJDCg1wdWJsaWNfZGhfa2V5GAEgASgLMh8uc2VjdXJlbWVzc2FnZS'
    '5HZW5lcmljUHVibGljS2V5UgtwdWJsaWNEaEtleRIsChBwcm90b2NvbF92ZXJzaW9uGAIgASgF'
    'OgEwUg9wcm90b2NvbFZlcnNpb24=');

@$core.Deprecated('Use ecPointDescriptor instead')
const EcPoint$json = {
  '1': 'EcPoint',
  '2': [
    {'1': 'curve', '3': 1, '4': 2, '5': 14, '6': '.securegcm.Curve', '10': 'curve'},
    {'1': 'x', '3': 2, '4': 2, '5': 12, '10': 'x'},
    {'1': 'y', '3': 3, '4': 2, '5': 12, '10': 'y'},
  ],
};

/// Descriptor for `EcPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecPointDescriptor = $convert.base64Decode(
    'CgdFY1BvaW50EiYKBWN1cnZlGAEgAigOMhAuc2VjdXJlZ2NtLkN1cnZlUgVjdXJ2ZRIMCgF4GA'
    'IgAigMUgF4EgwKAXkYAyACKAxSAXk=');

@$core.Deprecated('Use spakeHandshakeMessageDescriptor instead')
const SpakeHandshakeMessage$json = {
  '1': 'SpakeHandshakeMessage',
  '2': [
    {'1': 'flow_number', '3': 1, '4': 1, '5': 5, '10': 'flowNumber'},
    {'1': 'ec_point', '3': 2, '4': 1, '5': 11, '6': '.securegcm.EcPoint', '10': 'ecPoint'},
    {'1': 'hash_value', '3': 3, '4': 1, '5': 12, '10': 'hashValue'},
    {'1': 'payload', '3': 4, '4': 1, '5': 12, '10': 'payload'},
  ],
};

/// Descriptor for `SpakeHandshakeMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spakeHandshakeMessageDescriptor = $convert.base64Decode(
    'ChVTcGFrZUhhbmRzaGFrZU1lc3NhZ2USHwoLZmxvd19udW1iZXIYASABKAVSCmZsb3dOdW1iZX'
    'ISLQoIZWNfcG9pbnQYAiABKAsyEi5zZWN1cmVnY20uRWNQb2ludFIHZWNQb2ludBIdCgpoYXNo'
    'X3ZhbHVlGAMgASgMUgloYXNoVmFsdWUSGAoHcGF5bG9hZBgEIAEoDFIHcGF5bG9hZA==');

