//
//  Generated code. Do not modify.
//  source: securemessage.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sigSchemeDescriptor instead')
const SigScheme$json = {
  '1': 'SigScheme',
  '2': [
    {'1': 'HMAC_SHA256', '2': 1},
    {'1': 'ECDSA_P256_SHA256', '2': 2},
    {'1': 'RSA2048_SHA256', '2': 3},
  ],
};

/// Descriptor for `SigScheme`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sigSchemeDescriptor = $convert.base64Decode(
    'CglTaWdTY2hlbWUSDwoLSE1BQ19TSEEyNTYQARIVChFFQ0RTQV9QMjU2X1NIQTI1NhACEhIKDl'
    'JTQTIwNDhfU0hBMjU2EAM=');

@$core.Deprecated('Use encSchemeDescriptor instead')
const EncScheme$json = {
  '1': 'EncScheme',
  '2': [
    {'1': 'NONE', '2': 1},
    {'1': 'AES_256_CBC', '2': 2},
  ],
};

/// Descriptor for `EncScheme`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List encSchemeDescriptor = $convert.base64Decode(
    'CglFbmNTY2hlbWUSCAoETk9ORRABEg8KC0FFU18yNTZfQ0JDEAI=');

@$core.Deprecated('Use publicKeyTypeDescriptor instead')
const PublicKeyType$json = {
  '1': 'PublicKeyType',
  '2': [
    {'1': 'EC_P256', '2': 1},
    {'1': 'RSA2048', '2': 2},
    {'1': 'DH2048_MODP', '2': 3},
  ],
};

/// Descriptor for `PublicKeyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List publicKeyTypeDescriptor = $convert.base64Decode(
    'Cg1QdWJsaWNLZXlUeXBlEgsKB0VDX1AyNTYQARILCgdSU0EyMDQ4EAISDwoLREgyMDQ4X01PRF'
    'AQAw==');

@$core.Deprecated('Use secureMessageDescriptor instead')
const SecureMessage$json = {
  '1': 'SecureMessage',
  '2': [
    {'1': 'header_and_body', '3': 1, '4': 2, '5': 12, '10': 'headerAndBody'},
    {'1': 'signature', '3': 2, '4': 2, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `SecureMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secureMessageDescriptor = $convert.base64Decode(
    'Cg1TZWN1cmVNZXNzYWdlEiYKD2hlYWRlcl9hbmRfYm9keRgBIAIoDFINaGVhZGVyQW5kQm9keR'
    'IcCglzaWduYXR1cmUYAiACKAxSCXNpZ25hdHVyZQ==');

@$core.Deprecated('Use headerDescriptor instead')
const Header$json = {
  '1': 'Header',
  '2': [
    {'1': 'signature_scheme', '3': 1, '4': 2, '5': 14, '6': '.securemessage.SigScheme', '10': 'signatureScheme'},
    {'1': 'encryption_scheme', '3': 2, '4': 2, '5': 14, '6': '.securemessage.EncScheme', '10': 'encryptionScheme'},
    {'1': 'verification_key_id', '3': 3, '4': 1, '5': 12, '10': 'verificationKeyId'},
    {'1': 'decryption_key_id', '3': 4, '4': 1, '5': 12, '10': 'decryptionKeyId'},
    {'1': 'iv', '3': 5, '4': 1, '5': 12, '10': 'iv'},
    {'1': 'public_metadata', '3': 6, '4': 1, '5': 12, '10': 'publicMetadata'},
    {'1': 'associated_data_length', '3': 7, '4': 1, '5': 13, '7': '0', '10': 'associatedDataLength'},
  ],
};

/// Descriptor for `Header`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerDescriptor = $convert.base64Decode(
    'CgZIZWFkZXISQwoQc2lnbmF0dXJlX3NjaGVtZRgBIAIoDjIYLnNlY3VyZW1lc3NhZ2UuU2lnU2'
    'NoZW1lUg9zaWduYXR1cmVTY2hlbWUSRQoRZW5jcnlwdGlvbl9zY2hlbWUYAiACKA4yGC5zZWN1'
    'cmVtZXNzYWdlLkVuY1NjaGVtZVIQZW5jcnlwdGlvblNjaGVtZRIuChN2ZXJpZmljYXRpb25fa2'
    'V5X2lkGAMgASgMUhF2ZXJpZmljYXRpb25LZXlJZBIqChFkZWNyeXB0aW9uX2tleV9pZBgEIAEo'
    'DFIPZGVjcnlwdGlvbktleUlkEg4KAml2GAUgASgMUgJpdhInCg9wdWJsaWNfbWV0YWRhdGEYBi'
    'ABKAxSDnB1YmxpY01ldGFkYXRhEjcKFmFzc29jaWF0ZWRfZGF0YV9sZW5ndGgYByABKA06ATBS'
    'FGFzc29jaWF0ZWREYXRhTGVuZ3Ro');

@$core.Deprecated('Use headerAndBodyDescriptor instead')
const HeaderAndBody$json = {
  '1': 'HeaderAndBody',
  '2': [
    {'1': 'header', '3': 1, '4': 2, '5': 11, '6': '.securemessage.Header', '10': 'header'},
    {'1': 'body', '3': 2, '4': 2, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `HeaderAndBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerAndBodyDescriptor = $convert.base64Decode(
    'Cg1IZWFkZXJBbmRCb2R5Ei0KBmhlYWRlchgBIAIoCzIVLnNlY3VyZW1lc3NhZ2UuSGVhZGVyUg'
    'ZoZWFkZXISEgoEYm9keRgCIAIoDFIEYm9keQ==');

@$core.Deprecated('Use headerAndBodyInternalDescriptor instead')
const HeaderAndBodyInternal$json = {
  '1': 'HeaderAndBodyInternal',
  '2': [
    {'1': 'header', '3': 1, '4': 2, '5': 12, '10': 'header'},
    {'1': 'body', '3': 2, '4': 2, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `HeaderAndBodyInternal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerAndBodyInternalDescriptor = $convert.base64Decode(
    'ChVIZWFkZXJBbmRCb2R5SW50ZXJuYWwSFgoGaGVhZGVyGAEgAigMUgZoZWFkZXISEgoEYm9keR'
    'gCIAIoDFIEYm9keQ==');

@$core.Deprecated('Use ecP256PublicKeyDescriptor instead')
const EcP256PublicKey$json = {
  '1': 'EcP256PublicKey',
  '2': [
    {'1': 'x', '3': 1, '4': 2, '5': 12, '10': 'x'},
    {'1': 'y', '3': 2, '4': 2, '5': 12, '10': 'y'},
  ],
};

/// Descriptor for `EcP256PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecP256PublicKeyDescriptor = $convert.base64Decode(
    'Cg9FY1AyNTZQdWJsaWNLZXkSDAoBeBgBIAIoDFIBeBIMCgF5GAIgAigMUgF5');

@$core.Deprecated('Use simpleRsaPublicKeyDescriptor instead')
const SimpleRsaPublicKey$json = {
  '1': 'SimpleRsaPublicKey',
  '2': [
    {'1': 'n', '3': 1, '4': 2, '5': 12, '10': 'n'},
    {'1': 'e', '3': 2, '4': 1, '5': 5, '7': '65537', '10': 'e'},
  ],
};

/// Descriptor for `SimpleRsaPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List simpleRsaPublicKeyDescriptor = $convert.base64Decode(
    'ChJTaW1wbGVSc2FQdWJsaWNLZXkSDAoBbhgBIAIoDFIBbhITCgFlGAIgASgFOgU2NTUzN1IBZQ'
    '==');

@$core.Deprecated('Use dhPublicKeyDescriptor instead')
const DhPublicKey$json = {
  '1': 'DhPublicKey',
  '2': [
    {'1': 'y', '3': 1, '4': 2, '5': 12, '10': 'y'},
  ],
};

/// Descriptor for `DhPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dhPublicKeyDescriptor = $convert.base64Decode(
    'CgtEaFB1YmxpY0tleRIMCgF5GAEgAigMUgF5');

@$core.Deprecated('Use genericPublicKeyDescriptor instead')
const GenericPublicKey$json = {
  '1': 'GenericPublicKey',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 14, '6': '.securemessage.PublicKeyType', '10': 'type'},
    {'1': 'ec_p256_public_key', '3': 2, '4': 1, '5': 11, '6': '.securemessage.EcP256PublicKey', '10': 'ecP256PublicKey'},
    {'1': 'rsa2048_public_key', '3': 3, '4': 1, '5': 11, '6': '.securemessage.SimpleRsaPublicKey', '10': 'rsa2048PublicKey'},
    {'1': 'dh2048_public_key', '3': 4, '4': 1, '5': 11, '6': '.securemessage.DhPublicKey', '10': 'dh2048PublicKey'},
  ],
};

/// Descriptor for `GenericPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genericPublicKeyDescriptor = $convert.base64Decode(
    'ChBHZW5lcmljUHVibGljS2V5EjAKBHR5cGUYASACKA4yHC5zZWN1cmVtZXNzYWdlLlB1YmxpY0'
    'tleVR5cGVSBHR5cGUSSwoSZWNfcDI1Nl9wdWJsaWNfa2V5GAIgASgLMh4uc2VjdXJlbWVzc2Fn'
    'ZS5FY1AyNTZQdWJsaWNLZXlSD2VjUDI1NlB1YmxpY0tleRJPChJyc2EyMDQ4X3B1YmxpY19rZX'
    'kYAyABKAsyIS5zZWN1cmVtZXNzYWdlLlNpbXBsZVJzYVB1YmxpY0tleVIQcnNhMjA0OFB1Ymxp'
    'Y0tleRJGChFkaDIwNDhfcHVibGljX2tleRgEIAEoCzIaLnNlY3VyZW1lc3NhZ2UuRGhQdWJsaW'
    'NLZXlSD2RoMjA0OFB1YmxpY0tleQ==');

