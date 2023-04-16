///
//  Generated code. Do not modify.
//  source: wire_format.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fileMetadataDescriptor instead')
const FileMetadata$json = const {
  '1': 'FileMetadata',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.sharing.nearby.FileMetadata.Type', '7': 'UNKNOWN', '10': 'type'},
    const {'1': 'payload_id', '3': 3, '4': 1, '5': 3, '10': 'payloadId'},
    const {'1': 'size', '3': 4, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'mime_type', '3': 5, '4': 1, '5': 9, '7': 'application/octet-stream', '10': 'mimeType'},
    const {'1': 'id', '3': 6, '4': 1, '5': 3, '10': 'id'},
  ],
  '4': const [FileMetadata_Type$json],
};

@$core.Deprecated('Use fileMetadataDescriptor instead')
const FileMetadata_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'IMAGE', '2': 1},
    const {'1': 'VIDEO', '2': 2},
    const {'1': 'APP', '2': 3},
    const {'1': 'AUDIO', '2': 4},
  ],
};

/// Descriptor for `FileMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileMetadataDescriptor = $convert.base64Decode('CgxGaWxlTWV0YWRhdGESEgoEbmFtZRgBIAEoCVIEbmFtZRI+CgR0eXBlGAIgASgOMiEuc2hhcmluZy5uZWFyYnkuRmlsZU1ldGFkYXRhLlR5cGU6B1VOS05PV05SBHR5cGUSHQoKcGF5bG9hZF9pZBgDIAEoA1IJcGF5bG9hZElkEhIKBHNpemUYBCABKANSBHNpemUSNQoJbWltZV90eXBlGAUgASgJOhhhcHBsaWNhdGlvbi9vY3RldC1zdHJlYW1SCG1pbWVUeXBlEg4KAmlkGAYgASgDUgJpZCI9CgRUeXBlEgsKB1VOS05PV04QABIJCgVJTUFHRRABEgkKBVZJREVPEAISBwoDQVBQEAMSCQoFQVVESU8QBA==');
@$core.Deprecated('Use textMetadataDescriptor instead')
const TextMetadata$json = const {
  '1': 'TextMetadata',
  '2': const [
    const {'1': 'text_title', '3': 2, '4': 1, '5': 9, '10': 'textTitle'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.sharing.nearby.TextMetadata.Type', '7': 'UNKNOWN', '10': 'type'},
    const {'1': 'payload_id', '3': 4, '4': 1, '5': 3, '10': 'payloadId'},
    const {'1': 'size', '3': 5, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'id', '3': 6, '4': 1, '5': 3, '10': 'id'},
  ],
  '4': const [TextMetadata_Type$json],
};

@$core.Deprecated('Use textMetadataDescriptor instead')
const TextMetadata_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'TEXT', '2': 1},
    const {'1': 'URL', '2': 2},
    const {'1': 'ADDRESS', '2': 3},
    const {'1': 'PHONE_NUMBER', '2': 4},
  ],
};

/// Descriptor for `TextMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textMetadataDescriptor = $convert.base64Decode('CgxUZXh0TWV0YWRhdGESHQoKdGV4dF90aXRsZRgCIAEoCVIJdGV4dFRpdGxlEj4KBHR5cGUYAyABKA4yIS5zaGFyaW5nLm5lYXJieS5UZXh0TWV0YWRhdGEuVHlwZToHVU5LTk9XTlIEdHlwZRIdCgpwYXlsb2FkX2lkGAQgASgDUglwYXlsb2FkSWQSEgoEc2l6ZRgFIAEoA1IEc2l6ZRIOCgJpZBgGIAEoA1ICaWQiRQoEVHlwZRILCgdVTktOT1dOEAASCAoEVEVYVBABEgcKA1VSTBACEgsKB0FERFJFU1MQAxIQCgxQSE9ORV9OVU1CRVIQBA==');
@$core.Deprecated('Use wifiCredentialsMetadataDescriptor instead')
const WifiCredentialsMetadata$json = const {
  '1': 'WifiCredentialsMetadata',
  '2': const [
    const {'1': 'ssid', '3': 2, '4': 1, '5': 9, '10': 'ssid'},
    const {'1': 'security_type', '3': 3, '4': 1, '5': 14, '6': '.sharing.nearby.WifiCredentialsMetadata.SecurityType', '7': 'UNKNOWN_SECURITY_TYPE', '10': 'securityType'},
    const {'1': 'payload_id', '3': 4, '4': 1, '5': 3, '10': 'payloadId'},
    const {'1': 'id', '3': 5, '4': 1, '5': 3, '10': 'id'},
  ],
  '4': const [WifiCredentialsMetadata_SecurityType$json],
};

@$core.Deprecated('Use wifiCredentialsMetadataDescriptor instead')
const WifiCredentialsMetadata_SecurityType$json = const {
  '1': 'SecurityType',
  '2': const [
    const {'1': 'UNKNOWN_SECURITY_TYPE', '2': 0},
    const {'1': 'OPEN', '2': 1},
    const {'1': 'WPA_PSK', '2': 2},
    const {'1': 'WEP', '2': 3},
  ],
};

/// Descriptor for `WifiCredentialsMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCredentialsMetadataDescriptor = $convert.base64Decode('ChdXaWZpQ3JlZGVudGlhbHNNZXRhZGF0YRISCgRzc2lkGAIgASgJUgRzc2lkEnAKDXNlY3VyaXR5X3R5cGUYAyABKA4yNC5zaGFyaW5nLm5lYXJieS5XaWZpQ3JlZGVudGlhbHNNZXRhZGF0YS5TZWN1cml0eVR5cGU6FVVOS05PV05fU0VDVVJJVFlfVFlQRVIMc2VjdXJpdHlUeXBlEh0KCnBheWxvYWRfaWQYBCABKANSCXBheWxvYWRJZBIOCgJpZBgFIAEoA1ICaWQiSQoMU2VjdXJpdHlUeXBlEhkKFVVOS05PV05fU0VDVVJJVFlfVFlQRRAAEggKBE9QRU4QARILCgdXUEFfUFNLEAISBwoDV0VQEAM=');
@$core.Deprecated('Use frameDescriptor instead')
const Frame$json = const {
  '1': 'Frame',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.Frame.Version', '10': 'version'},
    const {'1': 'v1', '3': 2, '4': 1, '5': 11, '6': '.sharing.nearby.V1Frame', '10': 'v1'},
  ],
  '4': const [Frame_Version$json],
};

@$core.Deprecated('Use frameDescriptor instead')
const Frame_Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'UNKNOWN_VERSION', '2': 0},
    const {'1': 'V1', '2': 1},
  ],
};

/// Descriptor for `Frame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List frameDescriptor = $convert.base64Decode('CgVGcmFtZRI3Cgd2ZXJzaW9uGAEgASgOMh0uc2hhcmluZy5uZWFyYnkuRnJhbWUuVmVyc2lvblIHdmVyc2lvbhInCgJ2MRgCIAEoCzIXLnNoYXJpbmcubmVhcmJ5LlYxRnJhbWVSAnYxIiYKB1ZlcnNpb24SEwoPVU5LTk9XTl9WRVJTSU9OEAASBgoCVjEQAQ==');
@$core.Deprecated('Use v1FrameDescriptor instead')
const V1Frame$json = const {
  '1': 'V1Frame',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.V1Frame.FrameType', '10': 'type'},
    const {'1': 'introduction', '3': 2, '4': 1, '5': 11, '6': '.sharing.nearby.IntroductionFrame', '10': 'introduction'},
    const {'1': 'connection_response', '3': 3, '4': 1, '5': 11, '6': '.sharing.nearby.ConnectionResponseFrame', '10': 'connectionResponse'},
    const {'1': 'paired_key_encryption', '3': 4, '4': 1, '5': 11, '6': '.sharing.nearby.PairedKeyEncryptionFrame', '10': 'pairedKeyEncryption'},
    const {'1': 'paired_key_result', '3': 5, '4': 1, '5': 11, '6': '.sharing.nearby.PairedKeyResultFrame', '10': 'pairedKeyResult'},
    const {'1': 'certificate_info', '3': 6, '4': 1, '5': 11, '6': '.sharing.nearby.CertificateInfoFrame', '10': 'certificateInfo'},
  ],
  '4': const [V1Frame_FrameType$json],
};

@$core.Deprecated('Use v1FrameDescriptor instead')
const V1Frame_FrameType$json = const {
  '1': 'FrameType',
  '2': const [
    const {'1': 'UNKNOWN_FRAME_TYPE', '2': 0},
    const {'1': 'INTRODUCTION', '2': 1},
    const {'1': 'RESPONSE', '2': 2},
    const {'1': 'PAIRED_KEY_ENCRYPTION', '2': 3},
    const {'1': 'PAIRED_KEY_RESULT', '2': 4},
    const {'1': 'CERTIFICATE_INFO', '2': 5},
    const {'1': 'CANCEL', '2': 6},
  ],
};

/// Descriptor for `V1Frame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List v1FrameDescriptor = $convert.base64Decode('CgdWMUZyYW1lEjUKBHR5cGUYASABKA4yIS5zaGFyaW5nLm5lYXJieS5WMUZyYW1lLkZyYW1lVHlwZVIEdHlwZRJFCgxpbnRyb2R1Y3Rpb24YAiABKAsyIS5zaGFyaW5nLm5lYXJieS5JbnRyb2R1Y3Rpb25GcmFtZVIMaW50cm9kdWN0aW9uElgKE2Nvbm5lY3Rpb25fcmVzcG9uc2UYAyABKAsyJy5zaGFyaW5nLm5lYXJieS5Db25uZWN0aW9uUmVzcG9uc2VGcmFtZVISY29ubmVjdGlvblJlc3BvbnNlElwKFXBhaXJlZF9rZXlfZW5jcnlwdGlvbhgEIAEoCzIoLnNoYXJpbmcubmVhcmJ5LlBhaXJlZEtleUVuY3J5cHRpb25GcmFtZVITcGFpcmVkS2V5RW5jcnlwdGlvbhJQChFwYWlyZWRfa2V5X3Jlc3VsdBgFIAEoCzIkLnNoYXJpbmcubmVhcmJ5LlBhaXJlZEtleVJlc3VsdEZyYW1lUg9wYWlyZWRLZXlSZXN1bHQSTwoQY2VydGlmaWNhdGVfaW5mbxgGIAEoCzIkLnNoYXJpbmcubmVhcmJ5LkNlcnRpZmljYXRlSW5mb0ZyYW1lUg9jZXJ0aWZpY2F0ZUluZm8ilwEKCUZyYW1lVHlwZRIWChJVTktOT1dOX0ZSQU1FX1RZUEUQABIQCgxJTlRST0RVQ1RJT04QARIMCghSRVNQT05TRRACEhkKFVBBSVJFRF9LRVlfRU5DUllQVElPThADEhUKEVBBSVJFRF9LRVlfUkVTVUxUEAQSFAoQQ0VSVElGSUNBVEVfSU5GTxAFEgoKBkNBTkNFTBAG');
@$core.Deprecated('Use introductionFrameDescriptor instead')
const IntroductionFrame$json = const {
  '1': 'IntroductionFrame',
  '2': const [
    const {'1': 'file_metadata', '3': 1, '4': 3, '5': 11, '6': '.sharing.nearby.FileMetadata', '10': 'fileMetadata'},
    const {'1': 'text_metadata', '3': 2, '4': 3, '5': 11, '6': '.sharing.nearby.TextMetadata', '10': 'textMetadata'},
    const {'1': 'required_package', '3': 3, '4': 1, '5': 9, '10': 'requiredPackage'},
    const {'1': 'wifi_credentials_metadata', '3': 4, '4': 3, '5': 11, '6': '.sharing.nearby.WifiCredentialsMetadata', '10': 'wifiCredentialsMetadata'},
  ],
};

/// Descriptor for `IntroductionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List introductionFrameDescriptor = $convert.base64Decode('ChFJbnRyb2R1Y3Rpb25GcmFtZRJBCg1maWxlX21ldGFkYXRhGAEgAygLMhwuc2hhcmluZy5uZWFyYnkuRmlsZU1ldGFkYXRhUgxmaWxlTWV0YWRhdGESQQoNdGV4dF9tZXRhZGF0YRgCIAMoCzIcLnNoYXJpbmcubmVhcmJ5LlRleHRNZXRhZGF0YVIMdGV4dE1ldGFkYXRhEikKEHJlcXVpcmVkX3BhY2thZ2UYAyABKAlSD3JlcXVpcmVkUGFja2FnZRJjChl3aWZpX2NyZWRlbnRpYWxzX21ldGFkYXRhGAQgAygLMicuc2hhcmluZy5uZWFyYnkuV2lmaUNyZWRlbnRpYWxzTWV0YWRhdGFSF3dpZmlDcmVkZW50aWFsc01ldGFkYXRh');
@$core.Deprecated('Use connectionResponseFrameDescriptor instead')
const ConnectionResponseFrame$json = const {
  '1': 'ConnectionResponseFrame',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.ConnectionResponseFrame.Status', '10': 'status'},
  ],
  '4': const [ConnectionResponseFrame_Status$json],
};

@$core.Deprecated('Use connectionResponseFrameDescriptor instead')
const ConnectionResponseFrame_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ACCEPT', '2': 1},
    const {'1': 'REJECT', '2': 2},
    const {'1': 'NOT_ENOUGH_SPACE', '2': 3},
    const {'1': 'UNSUPPORTED_ATTACHMENT_TYPE', '2': 4},
    const {'1': 'TIMED_OUT', '2': 5},
  ],
};

/// Descriptor for `ConnectionResponseFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionResponseFrameDescriptor = $convert.base64Decode('ChdDb25uZWN0aW9uUmVzcG9uc2VGcmFtZRJGCgZzdGF0dXMYASABKA4yLi5zaGFyaW5nLm5lYXJieS5Db25uZWN0aW9uUmVzcG9uc2VGcmFtZS5TdGF0dXNSBnN0YXR1cyJzCgZTdGF0dXMSCwoHVU5LTk9XThAAEgoKBkFDQ0VQVBABEgoKBlJFSkVDVBACEhQKEE5PVF9FTk9VR0hfU1BBQ0UQAxIfChtVTlNVUFBPUlRFRF9BVFRBQ0hNRU5UX1RZUEUQBBINCglUSU1FRF9PVVQQBQ==');
@$core.Deprecated('Use pairedKeyEncryptionFrameDescriptor instead')
const PairedKeyEncryptionFrame$json = const {
  '1': 'PairedKeyEncryptionFrame',
  '2': const [
    const {'1': 'signed_data', '3': 1, '4': 1, '5': 12, '10': 'signedData'},
    const {'1': 'secret_id_hash', '3': 2, '4': 1, '5': 12, '10': 'secretIdHash'},
    const {'1': 'optional_signed_data', '3': 3, '4': 1, '5': 12, '10': 'optionalSignedData'},
  ],
};

/// Descriptor for `PairedKeyEncryptionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairedKeyEncryptionFrameDescriptor = $convert.base64Decode('ChhQYWlyZWRLZXlFbmNyeXB0aW9uRnJhbWUSHwoLc2lnbmVkX2RhdGEYASABKAxSCnNpZ25lZERhdGESJAoOc2VjcmV0X2lkX2hhc2gYAiABKAxSDHNlY3JldElkSGFzaBIwChRvcHRpb25hbF9zaWduZWRfZGF0YRgDIAEoDFISb3B0aW9uYWxTaWduZWREYXRh');
@$core.Deprecated('Use pairedKeyResultFrameDescriptor instead')
const PairedKeyResultFrame$json = const {
  '1': 'PairedKeyResultFrame',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.PairedKeyResultFrame.Status', '10': 'status'},
  ],
  '4': const [PairedKeyResultFrame_Status$json],
};

@$core.Deprecated('Use pairedKeyResultFrameDescriptor instead')
const PairedKeyResultFrame_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'SUCCESS', '2': 1},
    const {'1': 'FAIL', '2': 2},
    const {'1': 'UNABLE', '2': 3},
  ],
};

/// Descriptor for `PairedKeyResultFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairedKeyResultFrameDescriptor = $convert.base64Decode('ChRQYWlyZWRLZXlSZXN1bHRGcmFtZRJDCgZzdGF0dXMYASABKA4yKy5zaGFyaW5nLm5lYXJieS5QYWlyZWRLZXlSZXN1bHRGcmFtZS5TdGF0dXNSBnN0YXR1cyI4CgZTdGF0dXMSCwoHVU5LTk9XThAAEgsKB1NVQ0NFU1MQARIICgRGQUlMEAISCgoGVU5BQkxFEAM=');
@$core.Deprecated('Use certificateInfoFrameDescriptor instead')
const CertificateInfoFrame$json = const {
  '1': 'CertificateInfoFrame',
  '2': const [
    const {'1': 'public_certificate', '3': 1, '4': 3, '5': 11, '6': '.sharing.nearby.PublicCertificate', '10': 'publicCertificate'},
  ],
};

/// Descriptor for `CertificateInfoFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateInfoFrameDescriptor = $convert.base64Decode('ChRDZXJ0aWZpY2F0ZUluZm9GcmFtZRJQChJwdWJsaWNfY2VydGlmaWNhdGUYASADKAsyIS5zaGFyaW5nLm5lYXJieS5QdWJsaWNDZXJ0aWZpY2F0ZVIRcHVibGljQ2VydGlmaWNhdGU=');
@$core.Deprecated('Use publicCertificateDescriptor instead')
const PublicCertificate$json = const {
  '1': 'PublicCertificate',
  '2': const [
    const {'1': 'secret_id', '3': 1, '4': 1, '5': 12, '10': 'secretId'},
    const {'1': 'authenticity_key', '3': 2, '4': 1, '5': 12, '10': 'authenticityKey'},
    const {'1': 'public_key', '3': 3, '4': 1, '5': 12, '10': 'publicKey'},
    const {'1': 'start_time', '3': 4, '4': 1, '5': 3, '10': 'startTime'},
    const {'1': 'end_time', '3': 5, '4': 1, '5': 3, '10': 'endTime'},
    const {'1': 'encrypted_metadata_bytes', '3': 6, '4': 1, '5': 12, '10': 'encryptedMetadataBytes'},
    const {'1': 'metadata_encryption_key_tag', '3': 7, '4': 1, '5': 12, '10': 'metadataEncryptionKeyTag'},
  ],
};

/// Descriptor for `PublicCertificate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicCertificateDescriptor = $convert.base64Decode('ChFQdWJsaWNDZXJ0aWZpY2F0ZRIbCglzZWNyZXRfaWQYASABKAxSCHNlY3JldElkEikKEGF1dGhlbnRpY2l0eV9rZXkYAiABKAxSD2F1dGhlbnRpY2l0eUtleRIdCgpwdWJsaWNfa2V5GAMgASgMUglwdWJsaWNLZXkSHQoKc3RhcnRfdGltZRgEIAEoA1IJc3RhcnRUaW1lEhkKCGVuZF90aW1lGAUgASgDUgdlbmRUaW1lEjgKGGVuY3J5cHRlZF9tZXRhZGF0YV9ieXRlcxgGIAEoDFIWZW5jcnlwdGVkTWV0YWRhdGFCeXRlcxI9ChttZXRhZGF0YV9lbmNyeXB0aW9uX2tleV90YWcYByABKAxSGG1ldGFkYXRhRW5jcnlwdGlvbktleVRhZw==');
@$core.Deprecated('Use wifiCredentialsDescriptor instead')
const WifiCredentials$json = const {
  '1': 'WifiCredentials',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'hidden_ssid', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'hiddenSsid'},
  ],
};

/// Descriptor for `WifiCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCredentialsDescriptor = $convert.base64Decode('Cg9XaWZpQ3JlZGVudGlhbHMSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3JkEiYKC2hpZGRlbl9zc2lkGAIgASgIOgVmYWxzZVIKaGlkZGVuU3NpZA==');
