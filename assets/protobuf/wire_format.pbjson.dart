//
//  Generated code. Do not modify.
//  source: wire_format.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fileMetadataDescriptor instead')
const FileMetadata$json = {
  '1': 'FileMetadata',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.sharing.nearby.FileMetadata.Type', '7': 'UNKNOWN', '10': 'type'},
    {'1': 'payload_id', '3': 3, '4': 1, '5': 3, '10': 'payloadId'},
    {'1': 'size', '3': 4, '4': 1, '5': 3, '10': 'size'},
    {'1': 'mime_type', '3': 5, '4': 1, '5': 9, '7': 'application/octet-stream', '10': 'mimeType'},
    {'1': 'id', '3': 6, '4': 1, '5': 3, '10': 'id'},
  ],
  '4': [FileMetadata_Type$json],
};

@$core.Deprecated('Use fileMetadataDescriptor instead')
const FileMetadata_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'IMAGE', '2': 1},
    {'1': 'VIDEO', '2': 2},
    {'1': 'APP', '2': 3},
    {'1': 'AUDIO', '2': 4},
  ],
};

/// Descriptor for `FileMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileMetadataDescriptor = $convert.base64Decode(
    'CgxGaWxlTWV0YWRhdGESEgoEbmFtZRgBIAEoCVIEbmFtZRI+CgR0eXBlGAIgASgOMiEuc2hhcm'
    'luZy5uZWFyYnkuRmlsZU1ldGFkYXRhLlR5cGU6B1VOS05PV05SBHR5cGUSHQoKcGF5bG9hZF9p'
    'ZBgDIAEoA1IJcGF5bG9hZElkEhIKBHNpemUYBCABKANSBHNpemUSNQoJbWltZV90eXBlGAUgAS'
    'gJOhhhcHBsaWNhdGlvbi9vY3RldC1zdHJlYW1SCG1pbWVUeXBlEg4KAmlkGAYgASgDUgJpZCI9'
    'CgRUeXBlEgsKB1VOS05PV04QABIJCgVJTUFHRRABEgkKBVZJREVPEAISBwoDQVBQEAMSCQoFQV'
    'VESU8QBA==');

@$core.Deprecated('Use textMetadataDescriptor instead')
const TextMetadata$json = {
  '1': 'TextMetadata',
  '2': [
    {'1': 'text_title', '3': 2, '4': 1, '5': 9, '10': 'textTitle'},
    {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.sharing.nearby.TextMetadata.Type', '7': 'UNKNOWN', '10': 'type'},
    {'1': 'payload_id', '3': 4, '4': 1, '5': 3, '10': 'payloadId'},
    {'1': 'size', '3': 5, '4': 1, '5': 3, '10': 'size'},
    {'1': 'id', '3': 6, '4': 1, '5': 3, '10': 'id'},
  ],
  '4': [TextMetadata_Type$json],
};

@$core.Deprecated('Use textMetadataDescriptor instead')
const TextMetadata_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'TEXT', '2': 1},
    {'1': 'URL', '2': 2},
    {'1': 'ADDRESS', '2': 3},
    {'1': 'PHONE_NUMBER', '2': 4},
  ],
};

/// Descriptor for `TextMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textMetadataDescriptor = $convert.base64Decode(
    'CgxUZXh0TWV0YWRhdGESHQoKdGV4dF90aXRsZRgCIAEoCVIJdGV4dFRpdGxlEj4KBHR5cGUYAy'
    'ABKA4yIS5zaGFyaW5nLm5lYXJieS5UZXh0TWV0YWRhdGEuVHlwZToHVU5LTk9XTlIEdHlwZRId'
    'CgpwYXlsb2FkX2lkGAQgASgDUglwYXlsb2FkSWQSEgoEc2l6ZRgFIAEoA1IEc2l6ZRIOCgJpZB'
    'gGIAEoA1ICaWQiRQoEVHlwZRILCgdVTktOT1dOEAASCAoEVEVYVBABEgcKA1VSTBACEgsKB0FE'
    'RFJFU1MQAxIQCgxQSE9ORV9OVU1CRVIQBA==');

@$core.Deprecated('Use wifiCredentialsMetadataDescriptor instead')
const WifiCredentialsMetadata$json = {
  '1': 'WifiCredentialsMetadata',
  '2': [
    {'1': 'ssid', '3': 2, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'security_type', '3': 3, '4': 1, '5': 14, '6': '.sharing.nearby.WifiCredentialsMetadata.SecurityType', '7': 'UNKNOWN_SECURITY_TYPE', '10': 'securityType'},
    {'1': 'payload_id', '3': 4, '4': 1, '5': 3, '10': 'payloadId'},
    {'1': 'id', '3': 5, '4': 1, '5': 3, '10': 'id'},
  ],
  '4': [WifiCredentialsMetadata_SecurityType$json],
};

@$core.Deprecated('Use wifiCredentialsMetadataDescriptor instead')
const WifiCredentialsMetadata_SecurityType$json = {
  '1': 'SecurityType',
  '2': [
    {'1': 'UNKNOWN_SECURITY_TYPE', '2': 0},
    {'1': 'OPEN', '2': 1},
    {'1': 'WPA_PSK', '2': 2},
    {'1': 'WEP', '2': 3},
  ],
};

/// Descriptor for `WifiCredentialsMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCredentialsMetadataDescriptor = $convert.base64Decode(
    'ChdXaWZpQ3JlZGVudGlhbHNNZXRhZGF0YRISCgRzc2lkGAIgASgJUgRzc2lkEnAKDXNlY3VyaX'
    'R5X3R5cGUYAyABKA4yNC5zaGFyaW5nLm5lYXJieS5XaWZpQ3JlZGVudGlhbHNNZXRhZGF0YS5T'
    'ZWN1cml0eVR5cGU6FVVOS05PV05fU0VDVVJJVFlfVFlQRVIMc2VjdXJpdHlUeXBlEh0KCnBheW'
    'xvYWRfaWQYBCABKANSCXBheWxvYWRJZBIOCgJpZBgFIAEoA1ICaWQiSQoMU2VjdXJpdHlUeXBl'
    'EhkKFVVOS05PV05fU0VDVVJJVFlfVFlQRRAAEggKBE9QRU4QARILCgdXUEFfUFNLEAISBwoDV0'
    'VQEAM=');

@$core.Deprecated('Use frameDescriptor instead')
const Frame$json = {
  '1': 'Frame',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.Frame.Version', '10': 'version'},
    {'1': 'v1', '3': 2, '4': 1, '5': 11, '6': '.sharing.nearby.V1Frame', '10': 'v1'},
  ],
  '4': [Frame_Version$json],
};

@$core.Deprecated('Use frameDescriptor instead')
const Frame_Version$json = {
  '1': 'Version',
  '2': [
    {'1': 'UNKNOWN_VERSION', '2': 0},
    {'1': 'V1', '2': 1},
  ],
};

/// Descriptor for `Frame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List frameDescriptor = $convert.base64Decode(
    'CgVGcmFtZRI3Cgd2ZXJzaW9uGAEgASgOMh0uc2hhcmluZy5uZWFyYnkuRnJhbWUuVmVyc2lvbl'
    'IHdmVyc2lvbhInCgJ2MRgCIAEoCzIXLnNoYXJpbmcubmVhcmJ5LlYxRnJhbWVSAnYxIiYKB1Zl'
    'cnNpb24SEwoPVU5LTk9XTl9WRVJTSU9OEAASBgoCVjEQAQ==');

@$core.Deprecated('Use v1FrameDescriptor instead')
const V1Frame$json = {
  '1': 'V1Frame',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.V1Frame.FrameType', '10': 'type'},
    {'1': 'introduction', '3': 2, '4': 1, '5': 11, '6': '.sharing.nearby.IntroductionFrame', '10': 'introduction'},
    {'1': 'connection_response', '3': 3, '4': 1, '5': 11, '6': '.sharing.nearby.ConnectionResponseFrame', '10': 'connectionResponse'},
    {'1': 'paired_key_encryption', '3': 4, '4': 1, '5': 11, '6': '.sharing.nearby.PairedKeyEncryptionFrame', '10': 'pairedKeyEncryption'},
    {'1': 'paired_key_result', '3': 5, '4': 1, '5': 11, '6': '.sharing.nearby.PairedKeyResultFrame', '10': 'pairedKeyResult'},
    {'1': 'certificate_info', '3': 6, '4': 1, '5': 11, '6': '.sharing.nearby.CertificateInfoFrame', '10': 'certificateInfo'},
  ],
  '4': [V1Frame_FrameType$json],
};

@$core.Deprecated('Use v1FrameDescriptor instead')
const V1Frame_FrameType$json = {
  '1': 'FrameType',
  '2': [
    {'1': 'UNKNOWN_FRAME_TYPE', '2': 0},
    {'1': 'INTRODUCTION', '2': 1},
    {'1': 'RESPONSE', '2': 2},
    {'1': 'PAIRED_KEY_ENCRYPTION', '2': 3},
    {'1': 'PAIRED_KEY_RESULT', '2': 4},
    {'1': 'CERTIFICATE_INFO', '2': 5},
    {'1': 'CANCEL', '2': 6},
  ],
};

/// Descriptor for `V1Frame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List v1FrameDescriptor = $convert.base64Decode(
    'CgdWMUZyYW1lEjUKBHR5cGUYASABKA4yIS5zaGFyaW5nLm5lYXJieS5WMUZyYW1lLkZyYW1lVH'
    'lwZVIEdHlwZRJFCgxpbnRyb2R1Y3Rpb24YAiABKAsyIS5zaGFyaW5nLm5lYXJieS5JbnRyb2R1'
    'Y3Rpb25GcmFtZVIMaW50cm9kdWN0aW9uElgKE2Nvbm5lY3Rpb25fcmVzcG9uc2UYAyABKAsyJy'
    '5zaGFyaW5nLm5lYXJieS5Db25uZWN0aW9uUmVzcG9uc2VGcmFtZVISY29ubmVjdGlvblJlc3Bv'
    'bnNlElwKFXBhaXJlZF9rZXlfZW5jcnlwdGlvbhgEIAEoCzIoLnNoYXJpbmcubmVhcmJ5LlBhaX'
    'JlZEtleUVuY3J5cHRpb25GcmFtZVITcGFpcmVkS2V5RW5jcnlwdGlvbhJQChFwYWlyZWRfa2V5'
    'X3Jlc3VsdBgFIAEoCzIkLnNoYXJpbmcubmVhcmJ5LlBhaXJlZEtleVJlc3VsdEZyYW1lUg9wYW'
    'lyZWRLZXlSZXN1bHQSTwoQY2VydGlmaWNhdGVfaW5mbxgGIAEoCzIkLnNoYXJpbmcubmVhcmJ5'
    'LkNlcnRpZmljYXRlSW5mb0ZyYW1lUg9jZXJ0aWZpY2F0ZUluZm8ilwEKCUZyYW1lVHlwZRIWCh'
    'JVTktOT1dOX0ZSQU1FX1RZUEUQABIQCgxJTlRST0RVQ1RJT04QARIMCghSRVNQT05TRRACEhkK'
    'FVBBSVJFRF9LRVlfRU5DUllQVElPThADEhUKEVBBSVJFRF9LRVlfUkVTVUxUEAQSFAoQQ0VSVE'
    'lGSUNBVEVfSU5GTxAFEgoKBkNBTkNFTBAG');

@$core.Deprecated('Use introductionFrameDescriptor instead')
const IntroductionFrame$json = {
  '1': 'IntroductionFrame',
  '2': [
    {'1': 'file_metadata', '3': 1, '4': 3, '5': 11, '6': '.sharing.nearby.FileMetadata', '10': 'fileMetadata'},
    {'1': 'text_metadata', '3': 2, '4': 3, '5': 11, '6': '.sharing.nearby.TextMetadata', '10': 'textMetadata'},
    {'1': 'required_package', '3': 3, '4': 1, '5': 9, '10': 'requiredPackage'},
    {'1': 'wifi_credentials_metadata', '3': 4, '4': 3, '5': 11, '6': '.sharing.nearby.WifiCredentialsMetadata', '10': 'wifiCredentialsMetadata'},
  ],
};

/// Descriptor for `IntroductionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List introductionFrameDescriptor = $convert.base64Decode(
    'ChFJbnRyb2R1Y3Rpb25GcmFtZRJBCg1maWxlX21ldGFkYXRhGAEgAygLMhwuc2hhcmluZy5uZW'
    'FyYnkuRmlsZU1ldGFkYXRhUgxmaWxlTWV0YWRhdGESQQoNdGV4dF9tZXRhZGF0YRgCIAMoCzIc'
    'LnNoYXJpbmcubmVhcmJ5LlRleHRNZXRhZGF0YVIMdGV4dE1ldGFkYXRhEikKEHJlcXVpcmVkX3'
    'BhY2thZ2UYAyABKAlSD3JlcXVpcmVkUGFja2FnZRJjChl3aWZpX2NyZWRlbnRpYWxzX21ldGFk'
    'YXRhGAQgAygLMicuc2hhcmluZy5uZWFyYnkuV2lmaUNyZWRlbnRpYWxzTWV0YWRhdGFSF3dpZm'
    'lDcmVkZW50aWFsc01ldGFkYXRh');

@$core.Deprecated('Use connectionResponseFrameDescriptor instead')
const ConnectionResponseFrame$json = {
  '1': 'ConnectionResponseFrame',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.ConnectionResponseFrame.Status', '10': 'status'},
  ],
  '4': [ConnectionResponseFrame_Status$json],
};

@$core.Deprecated('Use connectionResponseFrameDescriptor instead')
const ConnectionResponseFrame_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ACCEPT', '2': 1},
    {'1': 'REJECT', '2': 2},
    {'1': 'NOT_ENOUGH_SPACE', '2': 3},
    {'1': 'UNSUPPORTED_ATTACHMENT_TYPE', '2': 4},
    {'1': 'TIMED_OUT', '2': 5},
  ],
};

/// Descriptor for `ConnectionResponseFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionResponseFrameDescriptor = $convert.base64Decode(
    'ChdDb25uZWN0aW9uUmVzcG9uc2VGcmFtZRJGCgZzdGF0dXMYASABKA4yLi5zaGFyaW5nLm5lYX'
    'JieS5Db25uZWN0aW9uUmVzcG9uc2VGcmFtZS5TdGF0dXNSBnN0YXR1cyJzCgZTdGF0dXMSCwoH'
    'VU5LTk9XThAAEgoKBkFDQ0VQVBABEgoKBlJFSkVDVBACEhQKEE5PVF9FTk9VR0hfU1BBQ0UQAx'
    'IfChtVTlNVUFBPUlRFRF9BVFRBQ0hNRU5UX1RZUEUQBBINCglUSU1FRF9PVVQQBQ==');

@$core.Deprecated('Use pairedKeyEncryptionFrameDescriptor instead')
const PairedKeyEncryptionFrame$json = {
  '1': 'PairedKeyEncryptionFrame',
  '2': [
    {'1': 'signed_data', '3': 1, '4': 1, '5': 12, '10': 'signedData'},
    {'1': 'secret_id_hash', '3': 2, '4': 1, '5': 12, '10': 'secretIdHash'},
    {'1': 'optional_signed_data', '3': 3, '4': 1, '5': 12, '10': 'optionalSignedData'},
  ],
};

/// Descriptor for `PairedKeyEncryptionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairedKeyEncryptionFrameDescriptor = $convert.base64Decode(
    'ChhQYWlyZWRLZXlFbmNyeXB0aW9uRnJhbWUSHwoLc2lnbmVkX2RhdGEYASABKAxSCnNpZ25lZE'
    'RhdGESJAoOc2VjcmV0X2lkX2hhc2gYAiABKAxSDHNlY3JldElkSGFzaBIwChRvcHRpb25hbF9z'
    'aWduZWRfZGF0YRgDIAEoDFISb3B0aW9uYWxTaWduZWREYXRh');

@$core.Deprecated('Use pairedKeyResultFrameDescriptor instead')
const PairedKeyResultFrame$json = {
  '1': 'PairedKeyResultFrame',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.sharing.nearby.PairedKeyResultFrame.Status', '10': 'status'},
  ],
  '4': [PairedKeyResultFrame_Status$json],
};

@$core.Deprecated('Use pairedKeyResultFrameDescriptor instead')
const PairedKeyResultFrame_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'SUCCESS', '2': 1},
    {'1': 'FAIL', '2': 2},
    {'1': 'UNABLE', '2': 3},
  ],
};

/// Descriptor for `PairedKeyResultFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairedKeyResultFrameDescriptor = $convert.base64Decode(
    'ChRQYWlyZWRLZXlSZXN1bHRGcmFtZRJDCgZzdGF0dXMYASABKA4yKy5zaGFyaW5nLm5lYXJieS'
    '5QYWlyZWRLZXlSZXN1bHRGcmFtZS5TdGF0dXNSBnN0YXR1cyI4CgZTdGF0dXMSCwoHVU5LTk9X'
    'ThAAEgsKB1NVQ0NFU1MQARIICgRGQUlMEAISCgoGVU5BQkxFEAM=');

@$core.Deprecated('Use certificateInfoFrameDescriptor instead')
const CertificateInfoFrame$json = {
  '1': 'CertificateInfoFrame',
  '2': [
    {'1': 'public_certificate', '3': 1, '4': 3, '5': 11, '6': '.sharing.nearby.PublicCertificate', '10': 'publicCertificate'},
  ],
};

/// Descriptor for `CertificateInfoFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateInfoFrameDescriptor = $convert.base64Decode(
    'ChRDZXJ0aWZpY2F0ZUluZm9GcmFtZRJQChJwdWJsaWNfY2VydGlmaWNhdGUYASADKAsyIS5zaG'
    'FyaW5nLm5lYXJieS5QdWJsaWNDZXJ0aWZpY2F0ZVIRcHVibGljQ2VydGlmaWNhdGU=');

@$core.Deprecated('Use publicCertificateDescriptor instead')
const PublicCertificate$json = {
  '1': 'PublicCertificate',
  '2': [
    {'1': 'secret_id', '3': 1, '4': 1, '5': 12, '10': 'secretId'},
    {'1': 'authenticity_key', '3': 2, '4': 1, '5': 12, '10': 'authenticityKey'},
    {'1': 'public_key', '3': 3, '4': 1, '5': 12, '10': 'publicKey'},
    {'1': 'start_time', '3': 4, '4': 1, '5': 3, '10': 'startTime'},
    {'1': 'end_time', '3': 5, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'encrypted_metadata_bytes', '3': 6, '4': 1, '5': 12, '10': 'encryptedMetadataBytes'},
    {'1': 'metadata_encryption_key_tag', '3': 7, '4': 1, '5': 12, '10': 'metadataEncryptionKeyTag'},
  ],
};

/// Descriptor for `PublicCertificate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicCertificateDescriptor = $convert.base64Decode(
    'ChFQdWJsaWNDZXJ0aWZpY2F0ZRIbCglzZWNyZXRfaWQYASABKAxSCHNlY3JldElkEikKEGF1dG'
    'hlbnRpY2l0eV9rZXkYAiABKAxSD2F1dGhlbnRpY2l0eUtleRIdCgpwdWJsaWNfa2V5GAMgASgM'
    'UglwdWJsaWNLZXkSHQoKc3RhcnRfdGltZRgEIAEoA1IJc3RhcnRUaW1lEhkKCGVuZF90aW1lGA'
    'UgASgDUgdlbmRUaW1lEjgKGGVuY3J5cHRlZF9tZXRhZGF0YV9ieXRlcxgGIAEoDFIWZW5jcnlw'
    'dGVkTWV0YWRhdGFCeXRlcxI9ChttZXRhZGF0YV9lbmNyeXB0aW9uX2tleV90YWcYByABKAxSGG'
    '1ldGFkYXRhRW5jcnlwdGlvbktleVRhZw==');

@$core.Deprecated('Use wifiCredentialsDescriptor instead')
const WifiCredentials$json = {
  '1': 'WifiCredentials',
  '2': [
    {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
    {'1': 'hidden_ssid', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'hiddenSsid'},
  ],
};

/// Descriptor for `WifiCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiCredentialsDescriptor = $convert.base64Decode(
    'Cg9XaWZpQ3JlZGVudGlhbHMSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3JkEiYKC2hpZGRlbl'
    '9zc2lkGAIgASgIOgVmYWxzZVIKaGlkZGVuU3NpZA==');

