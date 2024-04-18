//
//  Generated code. Do not modify.
//  source: securegcm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use appleDeviceDiagonalMilsDescriptor instead')
const AppleDeviceDiagonalMils$json = {
  '1': 'AppleDeviceDiagonalMils',
  '2': [
    {'1': 'APPLE_PHONE', '2': 4000},
    {'1': 'APPLE_PAD', '2': 7900},
  ],
};

/// Descriptor for `AppleDeviceDiagonalMils`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List appleDeviceDiagonalMilsDescriptor = $convert.base64Decode(
    'ChdBcHBsZURldmljZURpYWdvbmFsTWlscxIQCgtBUFBMRV9QSE9ORRCgHxIOCglBUFBMRV9QQU'
    'QQ3D0=');

@$core.Deprecated('Use deviceTypeDescriptor instead')
const DeviceType$json = {
  '1': 'DeviceType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ANDROID', '2': 1},
    {'1': 'CHROME', '2': 2},
    {'1': 'IOS', '2': 3},
    {'1': 'BROWSER', '2': 4},
    {'1': 'OSX', '2': 5},
  ],
};

/// Descriptor for `DeviceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceTypeDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VUeXBlEgsKB1VOS05PV04QABILCgdBTkRST0lEEAESCgoGQ0hST01FEAISBwoDSU'
    '9TEAMSCwoHQlJPV1NFUhAEEgcKA09TWBAF');

@$core.Deprecated('Use softwareFeatureDescriptor instead')
const SoftwareFeature$json = {
  '1': 'SoftwareFeature',
  '2': [
    {'1': 'UNKNOWN_FEATURE', '2': 0},
    {'1': 'BETTER_TOGETHER_HOST', '2': 1},
    {'1': 'BETTER_TOGETHER_CLIENT', '2': 2},
    {'1': 'EASY_UNLOCK_HOST', '2': 3},
    {'1': 'EASY_UNLOCK_CLIENT', '2': 4},
    {'1': 'MAGIC_TETHER_HOST', '2': 5},
    {'1': 'MAGIC_TETHER_CLIENT', '2': 6},
    {'1': 'SMS_CONNECT_HOST', '2': 7},
    {'1': 'SMS_CONNECT_CLIENT', '2': 8},
  ],
};

/// Descriptor for `SoftwareFeature`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List softwareFeatureDescriptor = $convert.base64Decode(
    'Cg9Tb2Z0d2FyZUZlYXR1cmUSEwoPVU5LTk9XTl9GRUFUVVJFEAASGAoUQkVUVEVSX1RPR0VUSE'
    'VSX0hPU1QQARIaChZCRVRURVJfVE9HRVRIRVJfQ0xJRU5UEAISFAoQRUFTWV9VTkxPQ0tfSE9T'
    'VBADEhYKEkVBU1lfVU5MT0NLX0NMSUVOVBAEEhUKEU1BR0lDX1RFVEhFUl9IT1NUEAUSFwoTTU'
    'FHSUNfVEVUSEVSX0NMSUVOVBAGEhQKEFNNU19DT05ORUNUX0hPU1QQBxIWChJTTVNfQ09OTkVD'
    'VF9DTElFTlQQCA==');

@$core.Deprecated('Use invocationReasonDescriptor instead')
const InvocationReason$json = {
  '1': 'InvocationReason',
  '2': [
    {'1': 'REASON_UNKNOWN', '2': 0},
    {'1': 'REASON_INITIALIZATION', '2': 1},
    {'1': 'REASON_PERIODIC', '2': 2},
    {'1': 'REASON_SLOW_PERIODIC', '2': 3},
    {'1': 'REASON_FAST_PERIODIC', '2': 4},
    {'1': 'REASON_EXPIRATION', '2': 5},
    {'1': 'REASON_FAILURE_RECOVERY', '2': 6},
    {'1': 'REASON_NEW_ACCOUNT', '2': 7},
    {'1': 'REASON_CHANGED_ACCOUNT', '2': 8},
    {'1': 'REASON_FEATURE_TOGGLED', '2': 9},
    {'1': 'REASON_SERVER_INITIATED', '2': 10},
    {'1': 'REASON_ADDRESS_CHANGE', '2': 11},
    {'1': 'REASON_SOFTWARE_UPDATE', '2': 12},
    {'1': 'REASON_MANUAL', '2': 13},
    {'1': 'REASON_CUSTOM_KEY_INVALIDATION', '2': 14},
    {'1': 'REASON_PROXIMITY_PERIODIC', '2': 15},
  ],
};

/// Descriptor for `InvocationReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List invocationReasonDescriptor = $convert.base64Decode(
    'ChBJbnZvY2F0aW9uUmVhc29uEhIKDlJFQVNPTl9VTktOT1dOEAASGQoVUkVBU09OX0lOSVRJQU'
    'xJWkFUSU9OEAESEwoPUkVBU09OX1BFUklPRElDEAISGAoUUkVBU09OX1NMT1dfUEVSSU9ESUMQ'
    'AxIYChRSRUFTT05fRkFTVF9QRVJJT0RJQxAEEhUKEVJFQVNPTl9FWFBJUkFUSU9OEAUSGwoXUk'
    'VBU09OX0ZBSUxVUkVfUkVDT1ZFUlkQBhIWChJSRUFTT05fTkVXX0FDQ09VTlQQBxIaChZSRUFT'
    'T05fQ0hBTkdFRF9BQ0NPVU5UEAgSGgoWUkVBU09OX0ZFQVRVUkVfVE9HR0xFRBAJEhsKF1JFQV'
    'NPTl9TRVJWRVJfSU5JVElBVEVEEAoSGQoVUkVBU09OX0FERFJFU1NfQ0hBTkdFEAsSGgoWUkVB'
    'U09OX1NPRlRXQVJFX1VQREFURRAMEhEKDVJFQVNPTl9NQU5VQUwQDRIiCh5SRUFTT05fQ1VTVE'
    '9NX0tFWV9JTlZBTElEQVRJT04QDhIdChlSRUFTT05fUFJPWElNSVRZX1BFUklPRElDEA8=');

@$core.Deprecated('Use typeDescriptor instead')
const Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'ENROLLMENT', '2': 0},
    {'1': 'TICKLE', '2': 1},
    {'1': 'TX_REQUEST', '2': 2},
    {'1': 'TX_REPLY', '2': 3},
    {'1': 'TX_SYNC_REQUEST', '2': 4},
    {'1': 'TX_SYNC_RESPONSE', '2': 5},
    {'1': 'TX_PING', '2': 6},
    {'1': 'DEVICE_INFO_UPDATE', '2': 7},
    {'1': 'TX_CANCEL_REQUEST', '2': 8},
    {'1': 'PROXIMITYAUTH_PAIRING', '2': 10},
    {'1': 'GCMV1_IDENTITY_ASSERTION', '2': 11},
    {'1': 'DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD', '2': 12},
    {'1': 'DEVICE_TO_DEVICE_MESSAGE', '2': 13},
    {'1': 'DEVICE_PROXIMITY_CALLBACK', '2': 14},
    {'1': 'UNLOCK_KEY_SIGNED_CHALLENGE', '2': 15},
    {'1': 'LOGIN_NOTIFICATION', '2': 101},
  ],
};

/// Descriptor for `Type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List typeDescriptor = $convert.base64Decode(
    'CgRUeXBlEg4KCkVOUk9MTE1FTlQQABIKCgZUSUNLTEUQARIOCgpUWF9SRVFVRVNUEAISDAoIVF'
    'hfUkVQTFkQAxITCg9UWF9TWU5DX1JFUVVFU1QQBBIUChBUWF9TWU5DX1JFU1BPTlNFEAUSCwoH'
    'VFhfUElORxAGEhYKEkRFVklDRV9JTkZPX1VQREFURRAHEhUKEVRYX0NBTkNFTF9SRVFVRVNUEA'
    'gSGQoVUFJPWElNSVRZQVVUSF9QQUlSSU5HEAoSHAoYR0NNVjFfSURFTlRJVFlfQVNTRVJUSU9O'
    'EAsSLAooREVWSUNFX1RPX0RFVklDRV9SRVNQT05ERVJfSEVMTE9fUEFZTE9BRBAMEhwKGERFVk'
    'lDRV9UT19ERVZJQ0VfTUVTU0FHRRANEh0KGURFVklDRV9QUk9YSU1JVFlfQ0FMTEJBQ0sQDhIf'
    'ChtVTkxPQ0tfS0VZX1NJR05FRF9DSEFMTEVOR0UQDxIWChJMT0dJTl9OT1RJRklDQVRJT04QZQ'
    '==');

@$core.Deprecated('Use gcmDeviceInfoDescriptor instead')
const GcmDeviceInfo$json = {
  '1': 'GcmDeviceInfo',
  '2': [
    {'1': 'android_device_id', '3': 1, '4': 1, '5': 6, '10': 'androidDeviceId'},
    {'1': 'gcm_registration_id', '3': 102, '4': 1, '5': 12, '10': 'gcmRegistrationId'},
    {'1': 'apn_registration_id', '3': 202, '4': 1, '5': 12, '10': 'apnRegistrationId'},
    {'1': 'notification_enabled', '3': 203, '4': 1, '5': 8, '7': 'true', '10': 'notificationEnabled'},
    {'1': 'bluetooth_mac_address', '3': 302, '4': 1, '5': 9, '10': 'bluetoothMacAddress'},
    {'1': 'device_master_key_hash', '3': 103, '4': 1, '5': 12, '10': 'deviceMasterKeyHash'},
    {'1': 'user_public_key', '3': 4, '4': 2, '5': 12, '10': 'userPublicKey'},
    {'1': 'device_model', '3': 7, '4': 1, '5': 9, '10': 'deviceModel'},
    {'1': 'locale', '3': 8, '4': 1, '5': 9, '10': 'locale'},
    {'1': 'key_handle', '3': 9, '4': 1, '5': 12, '10': 'keyHandle'},
    {'1': 'counter', '3': 12, '4': 1, '5': 3, '7': '0', '10': 'counter'},
    {'1': 'device_os_version', '3': 13, '4': 1, '5': 9, '10': 'deviceOsVersion'},
    {'1': 'device_os_version_code', '3': 14, '4': 1, '5': 3, '10': 'deviceOsVersionCode'},
    {'1': 'device_os_release', '3': 15, '4': 1, '5': 9, '10': 'deviceOsRelease'},
    {'1': 'device_os_codename', '3': 16, '4': 1, '5': 9, '10': 'deviceOsCodename'},
    {'1': 'device_software_version', '3': 17, '4': 1, '5': 9, '10': 'deviceSoftwareVersion'},
    {'1': 'device_software_version_code', '3': 18, '4': 1, '5': 3, '10': 'deviceSoftwareVersionCode'},
    {'1': 'device_software_package', '3': 19, '4': 1, '5': 9, '10': 'deviceSoftwarePackage'},
    {'1': 'device_display_diagonal_mils', '3': 22, '4': 1, '5': 5, '10': 'deviceDisplayDiagonalMils'},
    {'1': 'device_authzen_version', '3': 24, '4': 1, '5': 5, '10': 'deviceAuthzenVersion'},
    {'1': 'long_device_id', '3': 29, '4': 1, '5': 12, '10': 'longDeviceId'},
    {'1': 'device_manufacturer', '3': 31, '4': 1, '5': 9, '10': 'deviceManufacturer'},
    {'1': 'device_type', '3': 32, '4': 1, '5': 14, '6': '.securegcm.DeviceType', '7': 'ANDROID', '10': 'deviceType'},
    {'1': 'using_secure_screenlock', '3': 400, '4': 1, '5': 8, '7': 'false', '10': 'usingSecureScreenlock'},
    {'1': 'auto_unlock_screenlock_supported', '3': 401, '4': 1, '5': 8, '7': 'false', '10': 'autoUnlockScreenlockSupported'},
    {'1': 'auto_unlock_screenlock_enabled', '3': 402, '4': 1, '5': 8, '7': 'false', '10': 'autoUnlockScreenlockEnabled'},
    {'1': 'bluetooth_radio_supported', '3': 403, '4': 1, '5': 8, '7': 'false', '10': 'bluetoothRadioSupported'},
    {'1': 'bluetooth_radio_enabled', '3': 404, '4': 1, '5': 8, '7': 'false', '10': 'bluetoothRadioEnabled'},
    {'1': 'mobile_data_supported', '3': 405, '4': 1, '5': 8, '7': 'false', '10': 'mobileDataSupported'},
    {'1': 'tethering_supported', '3': 406, '4': 1, '5': 8, '7': 'false', '10': 'tetheringSupported'},
    {'1': 'ble_radio_supported', '3': 407, '4': 1, '5': 8, '7': 'false', '10': 'bleRadioSupported'},
    {'1': 'pixel_experience', '3': 408, '4': 1, '5': 8, '7': 'false', '10': 'pixelExperience'},
    {'1': 'arc_plus_plus', '3': 409, '4': 1, '5': 8, '7': 'false', '10': 'arcPlusPlus'},
    {'1': 'is_screenlock_state_flaky', '3': 410, '4': 1, '5': 8, '7': 'false', '10': 'isScreenlockStateFlaky'},
    {'1': 'supported_software_features', '3': 411, '4': 3, '5': 14, '6': '.securegcm.SoftwareFeature', '10': 'supportedSoftwareFeatures'},
    {'1': 'enabled_software_features', '3': 412, '4': 3, '5': 14, '6': '.securegcm.SoftwareFeature', '10': 'enabledSoftwareFeatures'},
    {'1': 'enrollment_session_id', '3': 1000, '4': 1, '5': 12, '10': 'enrollmentSessionId'},
    {'1': 'oauth_token', '3': 1001, '4': 1, '5': 9, '10': 'oauthToken'},
  ],
};

/// Descriptor for `GcmDeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gcmDeviceInfoDescriptor = $convert.base64Decode(
    'Cg1HY21EZXZpY2VJbmZvEioKEWFuZHJvaWRfZGV2aWNlX2lkGAEgASgGUg9hbmRyb2lkRGV2aW'
    'NlSWQSLgoTZ2NtX3JlZ2lzdHJhdGlvbl9pZBhmIAEoDFIRZ2NtUmVnaXN0cmF0aW9uSWQSLwoT'
    'YXBuX3JlZ2lzdHJhdGlvbl9pZBjKASABKAxSEWFwblJlZ2lzdHJhdGlvbklkEjgKFG5vdGlmaW'
    'NhdGlvbl9lbmFibGVkGMsBIAEoCDoEdHJ1ZVITbm90aWZpY2F0aW9uRW5hYmxlZBIzChVibHVl'
    'dG9vdGhfbWFjX2FkZHJlc3MYrgIgASgJUhNibHVldG9vdGhNYWNBZGRyZXNzEjMKFmRldmljZV'
    '9tYXN0ZXJfa2V5X2hhc2gYZyABKAxSE2RldmljZU1hc3RlcktleUhhc2gSJgoPdXNlcl9wdWJs'
    'aWNfa2V5GAQgAigMUg11c2VyUHVibGljS2V5EiEKDGRldmljZV9tb2RlbBgHIAEoCVILZGV2aW'
    'NlTW9kZWwSFgoGbG9jYWxlGAggASgJUgZsb2NhbGUSHQoKa2V5X2hhbmRsZRgJIAEoDFIJa2V5'
    'SGFuZGxlEhsKB2NvdW50ZXIYDCABKAM6ATBSB2NvdW50ZXISKgoRZGV2aWNlX29zX3ZlcnNpb2'
    '4YDSABKAlSD2RldmljZU9zVmVyc2lvbhIzChZkZXZpY2Vfb3NfdmVyc2lvbl9jb2RlGA4gASgD'
    'UhNkZXZpY2VPc1ZlcnNpb25Db2RlEioKEWRldmljZV9vc19yZWxlYXNlGA8gASgJUg9kZXZpY2'
    'VPc1JlbGVhc2USLAoSZGV2aWNlX29zX2NvZGVuYW1lGBAgASgJUhBkZXZpY2VPc0NvZGVuYW1l'
    'EjYKF2RldmljZV9zb2Z0d2FyZV92ZXJzaW9uGBEgASgJUhVkZXZpY2VTb2Z0d2FyZVZlcnNpb2'
    '4SPwocZGV2aWNlX3NvZnR3YXJlX3ZlcnNpb25fY29kZRgSIAEoA1IZZGV2aWNlU29mdHdhcmVW'
    'ZXJzaW9uQ29kZRI2ChdkZXZpY2Vfc29mdHdhcmVfcGFja2FnZRgTIAEoCVIVZGV2aWNlU29mdH'
    'dhcmVQYWNrYWdlEj8KHGRldmljZV9kaXNwbGF5X2RpYWdvbmFsX21pbHMYFiABKAVSGWRldmlj'
    'ZURpc3BsYXlEaWFnb25hbE1pbHMSNAoWZGV2aWNlX2F1dGh6ZW5fdmVyc2lvbhgYIAEoBVIUZG'
    'V2aWNlQXV0aHplblZlcnNpb24SJAoObG9uZ19kZXZpY2VfaWQYHSABKAxSDGxvbmdEZXZpY2VJ'
    'ZBIvChNkZXZpY2VfbWFudWZhY3R1cmVyGB8gASgJUhJkZXZpY2VNYW51ZmFjdHVyZXISPwoLZG'
    'V2aWNlX3R5cGUYICABKA4yFS5zZWN1cmVnY20uRGV2aWNlVHlwZToHQU5EUk9JRFIKZGV2aWNl'
    'VHlwZRI+Chd1c2luZ19zZWN1cmVfc2NyZWVubG9jaxiQAyABKAg6BWZhbHNlUhV1c2luZ1NlY3'
    'VyZVNjcmVlbmxvY2sSTwogYXV0b191bmxvY2tfc2NyZWVubG9ja19zdXBwb3J0ZWQYkQMgASgI'
    'OgVmYWxzZVIdYXV0b1VubG9ja1NjcmVlbmxvY2tTdXBwb3J0ZWQSSwoeYXV0b191bmxvY2tfc2'
    'NyZWVubG9ja19lbmFibGVkGJIDIAEoCDoFZmFsc2VSG2F1dG9VbmxvY2tTY3JlZW5sb2NrRW5h'
    'YmxlZBJCChlibHVldG9vdGhfcmFkaW9fc3VwcG9ydGVkGJMDIAEoCDoFZmFsc2VSF2JsdWV0b2'
    '90aFJhZGlvU3VwcG9ydGVkEj4KF2JsdWV0b290aF9yYWRpb19lbmFibGVkGJQDIAEoCDoFZmFs'
    'c2VSFWJsdWV0b290aFJhZGlvRW5hYmxlZBI6ChVtb2JpbGVfZGF0YV9zdXBwb3J0ZWQYlQMgAS'
    'gIOgVmYWxzZVITbW9iaWxlRGF0YVN1cHBvcnRlZBI3ChN0ZXRoZXJpbmdfc3VwcG9ydGVkGJYD'
    'IAEoCDoFZmFsc2VSEnRldGhlcmluZ1N1cHBvcnRlZBI2ChNibGVfcmFkaW9fc3VwcG9ydGVkGJ'
    'cDIAEoCDoFZmFsc2VSEWJsZVJhZGlvU3VwcG9ydGVkEjEKEHBpeGVsX2V4cGVyaWVuY2UYmAMg'
    'ASgIOgVmYWxzZVIPcGl4ZWxFeHBlcmllbmNlEioKDWFyY19wbHVzX3BsdXMYmQMgASgIOgVmYW'
    'xzZVILYXJjUGx1c1BsdXMSQQoZaXNfc2NyZWVubG9ja19zdGF0ZV9mbGFreRiaAyABKAg6BWZh'
    'bHNlUhZpc1NjcmVlbmxvY2tTdGF0ZUZsYWt5ElsKG3N1cHBvcnRlZF9zb2Z0d2FyZV9mZWF0dX'
    'JlcxibAyADKA4yGi5zZWN1cmVnY20uU29mdHdhcmVGZWF0dXJlUhlzdXBwb3J0ZWRTb2Z0d2Fy'
    'ZUZlYXR1cmVzElcKGWVuYWJsZWRfc29mdHdhcmVfZmVhdHVyZXMYnAMgAygOMhouc2VjdXJlZ2'
    'NtLlNvZnR3YXJlRmVhdHVyZVIXZW5hYmxlZFNvZnR3YXJlRmVhdHVyZXMSMwoVZW5yb2xsbWVu'
    'dF9zZXNzaW9uX2lkGOgHIAEoDFITZW5yb2xsbWVudFNlc3Npb25JZBIgCgtvYXV0aF90b2tlbh'
    'jpByABKAlSCm9hdXRoVG9rZW4=');

@$core.Deprecated('Use gcmMetadataDescriptor instead')
const GcmMetadata$json = {
  '1': 'GcmMetadata',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 14, '6': '.securegcm.Type', '10': 'type'},
    {'1': 'version', '3': 2, '4': 1, '5': 5, '7': '0', '10': 'version'},
  ],
};

/// Descriptor for `GcmMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gcmMetadataDescriptor = $convert.base64Decode(
    'CgtHY21NZXRhZGF0YRIjCgR0eXBlGAEgAigOMg8uc2VjdXJlZ2NtLlR5cGVSBHR5cGUSGwoHdm'
    'Vyc2lvbhgCIAEoBToBMFIHdmVyc2lvbg==');

@$core.Deprecated('Use tickleDescriptor instead')
const Tickle$json = {
  '1': 'Tickle',
  '2': [
    {'1': 'expiry_time', '3': 1, '4': 1, '5': 6, '10': 'expiryTime'},
  ],
};

/// Descriptor for `Tickle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tickleDescriptor = $convert.base64Decode(
    'CgZUaWNrbGUSHwoLZXhwaXJ5X3RpbWUYASABKAZSCmV4cGlyeVRpbWU=');

@$core.Deprecated('Use loginNotificationInfoDescriptor instead')
const LoginNotificationInfo$json = {
  '1': 'LoginNotificationInfo',
  '2': [
    {'1': 'creation_time', '3': 2, '4': 1, '5': 6, '10': 'creationTime'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'host', '3': 4, '4': 1, '5': 9, '10': 'host'},
    {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    {'1': 'event_type', '3': 6, '4': 1, '5': 9, '10': 'eventType'},
  ],
};

/// Descriptor for `LoginNotificationInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginNotificationInfoDescriptor = $convert.base64Decode(
    'ChVMb2dpbk5vdGlmaWNhdGlvbkluZm8SIwoNY3JlYXRpb25fdGltZRgCIAEoBlIMY3JlYXRpb2'
    '5UaW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBISCgRob3N0GAQgASgJUgRob3N0EhYKBnNvdXJj'
    'ZRgFIAEoCVIGc291cmNlEh0KCmV2ZW50X3R5cGUYBiABKAlSCWV2ZW50VHlwZQ==');

