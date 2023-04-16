///
//  Generated code. Do not modify.
//  source: ukey.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ukey2HandshakeCipherDescriptor instead')
const Ukey2HandshakeCipher$json = const {
  '1': 'Ukey2HandshakeCipher',
  '2': const [
    const {'1': 'RESERVED', '2': 0},
    const {'1': 'P256_SHA512', '2': 100},
    const {'1': 'CURVE25519_SHA512', '2': 200},
  ],
};

/// Descriptor for `Ukey2HandshakeCipher`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ukey2HandshakeCipherDescriptor = $convert.base64Decode('ChRVa2V5MkhhbmRzaGFrZUNpcGhlchIMCghSRVNFUlZFRBAAEg8KC1AyNTZfU0hBNTEyEGQSFgoRQ1VSVkUyNTUxOV9TSEE1MTIQyAE=');
@$core.Deprecated('Use ukey2MessageDescriptor instead')
const Ukey2Message$json = const {
  '1': 'Ukey2Message',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.securegcm.Ukey2Message.Type', '10': 'messageType'},
    const {'1': 'message_data', '3': 2, '4': 1, '5': 12, '10': 'messageData'},
  ],
  '4': const [Ukey2Message_Type$json],
};

@$core.Deprecated('Use ukey2MessageDescriptor instead')
const Ukey2Message_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'UNKNOWN_DO_NOT_USE', '2': 0},
    const {'1': 'ALERT', '2': 1},
    const {'1': 'CLIENT_INIT', '2': 2},
    const {'1': 'SERVER_INIT', '2': 3},
    const {'1': 'CLIENT_FINISH', '2': 4},
  ],
};

/// Descriptor for `Ukey2Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2MessageDescriptor = $convert.base64Decode('CgxVa2V5Mk1lc3NhZ2USPwoMbWVzc2FnZV90eXBlGAEgASgOMhwuc2VjdXJlZ2NtLlVrZXkyTWVzc2FnZS5UeXBlUgttZXNzYWdlVHlwZRIhCgxtZXNzYWdlX2RhdGEYAiABKAxSC21lc3NhZ2VEYXRhIl4KBFR5cGUSFgoSVU5LTk9XTl9ET19OT1RfVVNFEAASCQoFQUxFUlQQARIPCgtDTElFTlRfSU5JVBACEg8KC1NFUlZFUl9JTklUEAMSEQoNQ0xJRU5UX0ZJTklTSBAE');
@$core.Deprecated('Use ukey2AlertDescriptor instead')
const Ukey2Alert$json = const {
  '1': 'Ukey2Alert',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.securegcm.Ukey2Alert.AlertType', '10': 'type'},
    const {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
  '4': const [Ukey2Alert_AlertType$json],
};

@$core.Deprecated('Use ukey2AlertDescriptor instead')
const Ukey2Alert_AlertType$json = const {
  '1': 'AlertType',
  '2': const [
    const {'1': 'BAD_MESSAGE', '2': 1},
    const {'1': 'BAD_MESSAGE_TYPE', '2': 2},
    const {'1': 'INCORRECT_MESSAGE', '2': 3},
    const {'1': 'BAD_MESSAGE_DATA', '2': 4},
    const {'1': 'BAD_VERSION', '2': 100},
    const {'1': 'BAD_RANDOM', '2': 101},
    const {'1': 'BAD_HANDSHAKE_CIPHER', '2': 102},
    const {'1': 'BAD_NEXT_PROTOCOL', '2': 103},
    const {'1': 'BAD_PUBLIC_KEY', '2': 104},
    const {'1': 'INTERNAL_ERROR', '2': 200},
  ],
};

/// Descriptor for `Ukey2Alert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2AlertDescriptor = $convert.base64Decode('CgpVa2V5MkFsZXJ0EjMKBHR5cGUYASABKA4yHy5zZWN1cmVnY20uVWtleTJBbGVydC5BbGVydFR5cGVSBHR5cGUSIwoNZXJyb3JfbWVzc2FnZRgCIAEoCVIMZXJyb3JNZXNzYWdlItoBCglBbGVydFR5cGUSDwoLQkFEX01FU1NBR0UQARIUChBCQURfTUVTU0FHRV9UWVBFEAISFQoRSU5DT1JSRUNUX01FU1NBR0UQAxIUChBCQURfTUVTU0FHRV9EQVRBEAQSDwoLQkFEX1ZFUlNJT04QZBIOCgpCQURfUkFORE9NEGUSGAoUQkFEX0hBTkRTSEFLRV9DSVBIRVIQZhIVChFCQURfTkVYVF9QUk9UT0NPTBBnEhIKDkJBRF9QVUJMSUNfS0VZEGgSEwoOSU5URVJOQUxfRVJST1IQyAE=');
@$core.Deprecated('Use ukey2ClientInitDescriptor instead')
const Ukey2ClientInit$json = const {
  '1': 'Ukey2ClientInit',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'random', '3': 2, '4': 1, '5': 12, '10': 'random'},
    const {'1': 'cipher_commitments', '3': 3, '4': 3, '5': 11, '6': '.securegcm.Ukey2ClientInit.CipherCommitment', '10': 'cipherCommitments'},
    const {'1': 'next_protocol', '3': 4, '4': 1, '5': 9, '10': 'nextProtocol'},
  ],
  '3': const [Ukey2ClientInit_CipherCommitment$json],
};

@$core.Deprecated('Use ukey2ClientInitDescriptor instead')
const Ukey2ClientInit_CipherCommitment$json = const {
  '1': 'CipherCommitment',
  '2': const [
    const {'1': 'handshake_cipher', '3': 1, '4': 1, '5': 14, '6': '.securegcm.Ukey2HandshakeCipher', '10': 'handshakeCipher'},
    const {'1': 'commitment', '3': 2, '4': 1, '5': 12, '10': 'commitment'},
  ],
};

/// Descriptor for `Ukey2ClientInit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2ClientInitDescriptor = $convert.base64Decode('Cg9Va2V5MkNsaWVudEluaXQSGAoHdmVyc2lvbhgBIAEoBVIHdmVyc2lvbhIWCgZyYW5kb20YAiABKAxSBnJhbmRvbRJaChJjaXBoZXJfY29tbWl0bWVudHMYAyADKAsyKy5zZWN1cmVnY20uVWtleTJDbGllbnRJbml0LkNpcGhlckNvbW1pdG1lbnRSEWNpcGhlckNvbW1pdG1lbnRzEiMKDW5leHRfcHJvdG9jb2wYBCABKAlSDG5leHRQcm90b2NvbBp+ChBDaXBoZXJDb21taXRtZW50EkoKEGhhbmRzaGFrZV9jaXBoZXIYASABKA4yHy5zZWN1cmVnY20uVWtleTJIYW5kc2hha2VDaXBoZXJSD2hhbmRzaGFrZUNpcGhlchIeCgpjb21taXRtZW50GAIgASgMUgpjb21taXRtZW50');
@$core.Deprecated('Use ukey2ServerInitDescriptor instead')
const Ukey2ServerInit$json = const {
  '1': 'Ukey2ServerInit',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'random', '3': 2, '4': 1, '5': 12, '10': 'random'},
    const {'1': 'handshake_cipher', '3': 3, '4': 1, '5': 14, '6': '.securegcm.Ukey2HandshakeCipher', '10': 'handshakeCipher'},
    const {'1': 'public_key', '3': 4, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `Ukey2ServerInit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2ServerInitDescriptor = $convert.base64Decode('Cg9Va2V5MlNlcnZlckluaXQSGAoHdmVyc2lvbhgBIAEoBVIHdmVyc2lvbhIWCgZyYW5kb20YAiABKAxSBnJhbmRvbRJKChBoYW5kc2hha2VfY2lwaGVyGAMgASgOMh8uc2VjdXJlZ2NtLlVrZXkySGFuZHNoYWtlQ2lwaGVyUg9oYW5kc2hha2VDaXBoZXISHQoKcHVibGljX2tleRgEIAEoDFIJcHVibGljS2V5');
@$core.Deprecated('Use ukey2ClientFinishedDescriptor instead')
const Ukey2ClientFinished$json = const {
  '1': 'Ukey2ClientFinished',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `Ukey2ClientFinished`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ukey2ClientFinishedDescriptor = $convert.base64Decode('ChNVa2V5MkNsaWVudEZpbmlzaGVkEh0KCnB1YmxpY19rZXkYASABKAxSCXB1YmxpY0tleQ==');
