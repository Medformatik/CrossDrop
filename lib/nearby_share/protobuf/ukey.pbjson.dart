//
//  Generated code. Do not modify.
//  source: ukey.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ukey2HandshakeCipherDescriptor instead')
const Ukey2HandshakeCipher$json = {
  '1': 'Ukey2HandshakeCipher',
  '2': [
    {'1': 'RESERVED', '2': 0},
    {'1': 'P256_SHA512', '2': 100},
    {'1': 'CURVE25519_SHA512', '2': 200},
  ],
};

/// Descriptor for `Ukey2HandshakeCipher`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ukey2HandshakeCipherDescriptor = $convert.base64Decode(
    'ChRVa2V5MkhhbmRzaGFrZUNpcGhlchIMCghSRVNFUlZFRBAAEg8KC1AyNTZfU0hBNTEyEGQSFg'
    'oRQ1VSVkUyNTUxOV9TSEE1MTIQyAE=');

@$core.Deprecated('Use ukey2MessageDescriptor instead')
const Ukey2Message$json = {
  '1': 'Ukey2Message',
  '2': [
    {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.securegcm.Ukey2Message.Type', '10': 'messageType'},
    {'1': 'message_data', '3': 2, '4': 1, '5': 12, '10': 'messageData'},
  ],
  '4': [Ukey2Message_Type$json],
};

@$core.Deprecated('Use ukey2MessageDescriptor instead')
const Ukey2Message_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN_DO_NOT_USE', '2': 0},
    {'1': 'ALERT', '2': 1},
    {'1': 'CLIENT_INIT', '2': 2},
    {'1': 'SERVER_INIT', '2': 3},
    {'1': 'CLIENT_FINISH', '2': 4},
  ],
};

/// Descriptor for `Ukey2Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2MessageDescriptor = $convert.base64Decode(
    'CgxVa2V5Mk1lc3NhZ2USPwoMbWVzc2FnZV90eXBlGAEgASgOMhwuc2VjdXJlZ2NtLlVrZXkyTW'
    'Vzc2FnZS5UeXBlUgttZXNzYWdlVHlwZRIhCgxtZXNzYWdlX2RhdGEYAiABKAxSC21lc3NhZ2VE'
    'YXRhIl4KBFR5cGUSFgoSVU5LTk9XTl9ET19OT1RfVVNFEAASCQoFQUxFUlQQARIPCgtDTElFTl'
    'RfSU5JVBACEg8KC1NFUlZFUl9JTklUEAMSEQoNQ0xJRU5UX0ZJTklTSBAE');

@$core.Deprecated('Use ukey2AlertDescriptor instead')
const Ukey2Alert$json = {
  '1': 'Ukey2Alert',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.securegcm.Ukey2Alert.AlertType', '10': 'type'},
    {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
  '4': [Ukey2Alert_AlertType$json],
};

@$core.Deprecated('Use ukey2AlertDescriptor instead')
const Ukey2Alert_AlertType$json = {
  '1': 'AlertType',
  '2': [
    {'1': 'BAD_MESSAGE', '2': 1},
    {'1': 'BAD_MESSAGE_TYPE', '2': 2},
    {'1': 'INCORRECT_MESSAGE', '2': 3},
    {'1': 'BAD_MESSAGE_DATA', '2': 4},
    {'1': 'BAD_VERSION', '2': 100},
    {'1': 'BAD_RANDOM', '2': 101},
    {'1': 'BAD_HANDSHAKE_CIPHER', '2': 102},
    {'1': 'BAD_NEXT_PROTOCOL', '2': 103},
    {'1': 'BAD_PUBLIC_KEY', '2': 104},
    {'1': 'INTERNAL_ERROR', '2': 200},
  ],
};

/// Descriptor for `Ukey2Alert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2AlertDescriptor = $convert.base64Decode(
    'CgpVa2V5MkFsZXJ0EjMKBHR5cGUYASABKA4yHy5zZWN1cmVnY20uVWtleTJBbGVydC5BbGVydF'
    'R5cGVSBHR5cGUSIwoNZXJyb3JfbWVzc2FnZRgCIAEoCVIMZXJyb3JNZXNzYWdlItoBCglBbGVy'
    'dFR5cGUSDwoLQkFEX01FU1NBR0UQARIUChBCQURfTUVTU0FHRV9UWVBFEAISFQoRSU5DT1JSRU'
    'NUX01FU1NBR0UQAxIUChBCQURfTUVTU0FHRV9EQVRBEAQSDwoLQkFEX1ZFUlNJT04QZBIOCgpC'
    'QURfUkFORE9NEGUSGAoUQkFEX0hBTkRTSEFLRV9DSVBIRVIQZhIVChFCQURfTkVYVF9QUk9UT0'
    'NPTBBnEhIKDkJBRF9QVUJMSUNfS0VZEGgSEwoOSU5URVJOQUxfRVJST1IQyAE=');

@$core.Deprecated('Use ukey2ClientInitDescriptor instead')
const Ukey2ClientInit$json = {
  '1': 'Ukey2ClientInit',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    {'1': 'random', '3': 2, '4': 1, '5': 12, '10': 'random'},
    {'1': 'cipher_commitments', '3': 3, '4': 3, '5': 11, '6': '.securegcm.Ukey2ClientInit.CipherCommitment', '10': 'cipherCommitments'},
    {'1': 'next_protocol', '3': 4, '4': 1, '5': 9, '10': 'nextProtocol'},
  ],
  '3': [Ukey2ClientInit_CipherCommitment$json],
};

@$core.Deprecated('Use ukey2ClientInitDescriptor instead')
const Ukey2ClientInit_CipherCommitment$json = {
  '1': 'CipherCommitment',
  '2': [
    {'1': 'handshake_cipher', '3': 1, '4': 1, '5': 14, '6': '.securegcm.Ukey2HandshakeCipher', '10': 'handshakeCipher'},
    {'1': 'commitment', '3': 2, '4': 1, '5': 12, '10': 'commitment'},
  ],
};

/// Descriptor for `Ukey2ClientInit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2ClientInitDescriptor = $convert.base64Decode(
    'Cg9Va2V5MkNsaWVudEluaXQSGAoHdmVyc2lvbhgBIAEoBVIHdmVyc2lvbhIWCgZyYW5kb20YAi'
    'ABKAxSBnJhbmRvbRJaChJjaXBoZXJfY29tbWl0bWVudHMYAyADKAsyKy5zZWN1cmVnY20uVWtl'
    'eTJDbGllbnRJbml0LkNpcGhlckNvbW1pdG1lbnRSEWNpcGhlckNvbW1pdG1lbnRzEiMKDW5leH'
    'RfcHJvdG9jb2wYBCABKAlSDG5leHRQcm90b2NvbBp+ChBDaXBoZXJDb21taXRtZW50EkoKEGhh'
    'bmRzaGFrZV9jaXBoZXIYASABKA4yHy5zZWN1cmVnY20uVWtleTJIYW5kc2hha2VDaXBoZXJSD2'
    'hhbmRzaGFrZUNpcGhlchIeCgpjb21taXRtZW50GAIgASgMUgpjb21taXRtZW50');

@$core.Deprecated('Use ukey2ServerInitDescriptor instead')
const Ukey2ServerInit$json = {
  '1': 'Ukey2ServerInit',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    {'1': 'random', '3': 2, '4': 1, '5': 12, '10': 'random'},
    {'1': 'handshake_cipher', '3': 3, '4': 1, '5': 14, '6': '.securegcm.Ukey2HandshakeCipher', '10': 'handshakeCipher'},
    {'1': 'public_key', '3': 4, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `Ukey2ServerInit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2ServerInitDescriptor = $convert.base64Decode(
    'Cg9Va2V5MlNlcnZlckluaXQSGAoHdmVyc2lvbhgBIAEoBVIHdmVyc2lvbhIWCgZyYW5kb20YAi'
    'ABKAxSBnJhbmRvbRJKChBoYW5kc2hha2VfY2lwaGVyGAMgASgOMh8uc2VjdXJlZ2NtLlVrZXky'
    'SGFuZHNoYWtlQ2lwaGVyUg9oYW5kc2hha2VDaXBoZXISHQoKcHVibGljX2tleRgEIAEoDFIJcH'
    'VibGljS2V5');

@$core.Deprecated('Use ukey2ClientFinishedDescriptor instead')
const Ukey2ClientFinished$json = {
  '1': 'Ukey2ClientFinished',
  '2': [
    {'1': 'public_key', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `Ukey2ClientFinished`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2ClientFinishedDescriptor = $convert.base64Decode(
    'ChNVa2V5MkNsaWVudEZpbmlzaGVkEh0KCnB1YmxpY19rZXkYASABKAxSCXB1YmxpY0tleQ==');

