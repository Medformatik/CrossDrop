///
//  Generated code. Do not modify.
//  source: securegcm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use appleDeviceDiagonalMilsDescriptor instead')
const AppleDeviceDiagonalMils$json = const {
  '1': 'AppleDeviceDiagonalMils',
  '2': const [
    const {'1': 'APPLE_PHONE', '2': 4000},
    const {'1': 'APPLE_PAD', '2': 7900},
  ],
};

/// Descriptor for `AppleDeviceDiagonalMils`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List appleDeviceDiagonalMilsDescriptor = $convert.base64Decode('ChdBcHBsZURldmljZURpYWdvbmFsTWlscxIQCgtBUFBMRV9QSE9ORRCgHxIOCglBUFBMRV9QQUQQ3D0=');
@$core.Deprecated('Use deviceTypeDescriptor instead')
const DeviceType$json = const {
  '1': 'DeviceType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ANDROID', '2': 1},
    const {'1': 'CHROME', '2': 2},
    const {'1': 'IOS', '2': 3},
    const {'1': 'BROWSER', '2': 4},
    const {'1': 'OSX', '2': 5},
  ],
};

/// Descriptor for `DeviceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceTypeDescriptor = $convert.base64Decode('CgpEZXZpY2VUeXBlEgsKB1VOS05PV04QABILCgdBTkRST0lEEAESCgoGQ0hST01FEAISBwoDSU9TEAMSCwoHQlJPV1NFUhAEEgcKA09TWBAF');
@$core.Deprecated('Use softwareFeatureDescriptor instead')
const SoftwareFeature$json = const {
  '1': 'SoftwareFeature',
  '2': const [
    const {'1': 'UNKNOWN_FEATURE', '2': 0},
    const {'1': 'BETTER_TOGETHER_HOST', '2': 1},
    const {'1': 'BETTER_TOGETHER_CLIENT', '2': 2},
    const {'1': 'EASY_UNLOCK_HOST', '2': 3},
    const {'1': 'EASY_UNLOCK_CLIENT', '2': 4},
    const {'1': 'MAGIC_TETHER_HOST', '2': 5},
    const {'1': 'MAGIC_TETHER_CLIENT', '2': 6},
    const {'1': 'SMS_CONNECT_HOST', '2': 7},
    const {'1': 'SMS_CONNECT_CLIENT', '2': 8},
  ],
};

/// Descriptor for `SoftwareFeature`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List softwareFeatureDescriptor = $convert.base64Decode('Cg9Tb2Z0d2FyZUZlYXR1cmUSEwoPVU5LTk9XTl9GRUFUVVJFEAASGAoUQkVUVEVSX1RPR0VUSEVSX0hPU1QQARIaChZCRVRURVJfVE9HRVRIRVJfQ0xJRU5UEAISFAoQRUFTWV9VTkxPQ0tfSE9TVBADEhYKEkVBU1lfVU5MT0NLX0NMSUVOVBAEEhUKEU1BR0lDX1RFVEhFUl9IT1NUEAUSFwoTTUFHSUNfVEVUSEVSX0NMSUVOVBAGEhQKEFNNU19DT05ORUNUX0hPU1QQBxIWChJTTVNfQ09OTkVDVF9DTElFTlQQCA==');
@$core.Deprecated('Use invocationReasonDescriptor instead')
const InvocationReason$json = const {
  '1': 'InvocationReason',
  '2': const [
    const {'1': 'REASON_UNKNOWN', '2': 0},
    const {'1': 'REASON_INITIALIZATION', '2': 1},
    const {'1': 'REASON_PERIODIC', '2': 2},
    const {'1': 'REASON_SLOW_PERIODIC', '2': 3},
    const {'1': 'REASON_FAST_PERIODIC', '2': 4},
    const {'1': 'REASON_EXPIRATION', '2': 5},
    const {'1': 'REASON_FAILURE_RECOVERY', '2': 6},
    const {'1': 'REASON_NEW_ACCOUNT', '2': 7},
    const {'1': 'REASON_CHANGED_ACCOUNT', '2': 8},
    const {'1': 'REASON_FEATURE_TOGGLED', '2': 9},
    const {'1': 'REASON_SERVER_INITIATED', '2': 10},
    const {'1': 'REASON_ADDRESS_CHANGE', '2': 11},
    const {'1': 'REASON_SOFTWARE_UPDATE', '2': 12},
    const {'1': 'REASON_MANUAL', '2': 13},
    const {'1': 'REASON_CUSTOM_KEY_INVALIDATION', '2': 14},
    const {'1': 'REASON_PROXIMITY_PERIODIC', '2': 15},
  ],
};

/// Descriptor for `InvocationReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List invocationReasonDescriptor = $convert.base64Decode('ChBJbnZvY2F0aW9uUmVhc29uEhIKDlJFQVNPTl9VTktOT1dOEAASGQoVUkVBU09OX0lOSVRJQUxJWkFUSU9OEAESEwoPUkVBU09OX1BFUklPRElDEAISGAoUUkVBU09OX1NMT1dfUEVSSU9ESUMQAxIYChRSRUFTT05fRkFTVF9QRVJJT0RJQxAEEhUKEVJFQVNPTl9FWFBJUkFUSU9OEAUSGwoXUkVBU09OX0ZBSUxVUkVfUkVDT1ZFUlkQBhIWChJSRUFTT05fTkVXX0FDQ09VTlQQBxIaChZSRUFTT05fQ0hBTkdFRF9BQ0NPVU5UEAgSGgoWUkVBU09OX0ZFQVRVUkVfVE9HR0xFRBAJEhsKF1JFQVNPTl9TRVJWRVJfSU5JVElBVEVEEAoSGQoVUkVBU09OX0FERFJFU1NfQ0hBTkdFEAsSGgoWUkVBU09OX1NPRlRXQVJFX1VQREFURRAMEhEKDVJFQVNPTl9NQU5VQUwQDRIiCh5SRUFTT05fQ1VTVE9NX0tFWV9JTlZBTElEQVRJT04QDhIdChlSRUFTT05fUFJPWElNSVRZX1BFUklPRElDEA8=');
@$core.Deprecated('Use typeDescriptor instead')
const Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'ENROLLMENT', '2': 0},
    const {'1': 'TICKLE', '2': 1},
    const {'1': 'TX_REQUEST', '2': 2},
    const {'1': 'TX_REPLY', '2': 3},
    const {'1': 'TX_SYNC_REQUEST', '2': 4},
    const {'1': 'TX_SYNC_RESPONSE', '2': 5},
    const {'1': 'TX_PING', '2': 6},
    const {'1': 'DEVICE_INFO_UPDATE', '2': 7},
    const {'1': 'TX_CANCEL_REQUEST', '2': 8},
    const {'1': 'PROXIMITYAUTH_PAIRING', '2': 10},
    const {'1': 'GCMV1_IDENTITY_ASSERTION', '2': 11},
    const {'1': 'DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD', '2': 12},
    const {'1': 'DEVICE_TO_DEVICE_MESSAGE', '2': 13},
    const {'1': 'DEVICE_PROXIMITY_CALLBACK', '2': 14},
    const {'1': 'UNLOCK_KEY_SIGNED_CHALLENGE', '2': 15},
    const {'1': 'LOGIN_NOTIFICATION', '2': 101},
  ],
};

/// Descriptor for `Type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List typeDescriptor = $convert.base64Decode('CgRUeXBlEg4KCkVOUk9MTE1FTlQQABIKCgZUSUNLTEUQARIOCgpUWF9SRVFVRVNUEAISDAoIVFhfUkVQTFkQAxITCg9UWF9TWU5DX1JFUVVFU1QQBBIUChBUWF9TWU5DX1JFU1BPTlNFEAUSCwoHVFhfUElORxAGEhYKEkRFVklDRV9JTkZPX1VQREFURRAHEhUKEVRYX0NBTkNFTF9SRVFVRVNUEAgSGQoVUFJPWElNSVRZQVVUSF9QQUlSSU5HEAoSHAoYR0NNVjFfSURFTlRJVFlfQVNTRVJUSU9OEAsSLAooREVWSUNFX1RPX0RFVklDRV9SRVNQT05ERVJfSEVMTE9fUEFZTE9BRBAMEhwKGERFVklDRV9UT19ERVZJQ0VfTUVTU0FHRRANEh0KGURFVklDRV9QUk9YSU1JVFlfQ0FMTEJBQ0sQDhIfChtVTkxPQ0tfS0VZX1NJR05FRF9DSEFMTEVOR0UQDxIWChJMT0dJTl9OT1RJRklDQVRJT04QZQ==');
@$core.Deprecated('Use gcmDeviceInfoDescriptor instead')
const GcmDeviceInfo$json = const {
  '1': 'GcmDeviceInfo',
  '2': const [
    const {'1': 'android_device_id', '3': 1, '4': 1, '5': 6, '10': 'androidDeviceId'},
    const {'1': 'gcm_registration_id', '3': 102, '4': 1, '5': 12, '10': 'gcmRegistrationId'},
    const {'1': 'apn_registration_id', '3': 202, '4': 1, '5': 12, '10': 'apnRegistrationId'},
    const {'1': 'notification_enabled', '3': 203, '4': 1, '5': 8, '7': 'true', '10': 'notificationEnabled'},
    const {'1': 'bluetooth_mac_address', '3': 302, '4': 1, '5': 9, '10': 'bluetoothMacAddress'},
    const {'1': 'device_master_key_hash', '3': 103, '4': 1, '5': 12, '10': 'deviceMasterKeyHash'},
    const {'1': 'user_public_key', '3': 4, '4': 2, '5': 12, '10': 'userPublicKey'},
    const {'1': 'device_model', '3': 7, '4': 1, '5': 9, '10': 'deviceModel'},
    const {'1': 'locale', '3': 8, '4': 1, '5': 9, '10': 'locale'},
    const {'1': 'key_handle', '3': 9, '4': 1, '5': 12, '10': 'keyHandle'},
    const {'1': 'counter', '3': 12, '4': 1, '5': 3, '7': '0', '10': 'counter'},
    const {'1': 'device_os_version', '3': 13, '4': 1, '5': 9, '10': 'deviceOsVersion'},
    const {'1': 'device_os_version_code', '3': 14, '4': 1, '5': 3, '10': 'deviceOsVersionCode'},
    const {'1': 'device_os_release', '3': 15, '4': 1, '5': 9, '10': 'deviceOsRelease'},
    const {'1': 'device_os_codename', '3': 16, '4': 1, '5': 9, '10': 'deviceOsCodename'},
    const {'1': 'device_software_version', '3': 17, '4': 1, '5': 9, '10': 'deviceSoftwareVersion'},
    const {'1': 'device_software_version_code', '3': 18, '4': 1, '5': 3, '10': 'deviceSoftwareVersionCode'},
    const {'1': 'device_software_package', '3': 19, '4': 1, '5': 9, '10': 'deviceSoftwarePackage'},
    const {'1': 'device_display_diagonal_mils', '3': 22, '4': 1, '5': 5, '10': 'deviceDisplayDiagonalMils'},
    const {'1': 'device_authzen_version', '3': 24, '4': 1, '5': 5, '10': 'deviceAuthzenVersion'},
    const {'1': 'long_device_id', '3': 29, '4': 1, '5': 12, '10': 'longDeviceId'},
    const {'1': 'device_manufacturer', '3': 31, '4': 1, '5': 9, '10': 'deviceManufacturer'},
    const {'1': 'device_type', '3': 32, '4': 1, '5': 14, '6': '.securegcm.DeviceType', '7': 'ANDROID', '10': 'deviceType'},
    const {'1': 'using_secure_screenlock', '3': 400, '4': 1, '5': 8, '7': 'false', '10': 'usingSecureScreenlock'},
    const {'1': 'auto_unlock_screenlock_supported', '3': 401, '4': 1, '5': 8, '7': 'false', '10': 'autoUnlockScreenlockSupported'},
    const {'1': 'auto_unlock_screenlock_enabled', '3': 402, '4': 1, '5': 8, '7': 'false', '10': 'autoUnlockScreenlockEnabled'},
    const {'1': 'bluetooth_radio_supported', '3': 403, '4': 1, '5': 8, '7': 'false', '10': 'bluetoothRadioSupported'},
    const {'1': 'bluetooth_radio_enabled', '3': 404, '4': 1, '5': 8, '7': 'false', '10': 'bluetoothRadioEnabled'},
    const {'1': 'mobile_data_supported', '3': 405, '4': 1, '5': 8, '7': 'false', '10': 'mobileDataSupported'},
    const {'1': 'tethering_supported', '3': 406, '4': 1, '5': 8, '7': 'false', '10': 'tetheringSupported'},
    const {'1': 'ble_radio_supported', '3': 407, '4': 1, '5': 8, '7': 'false', '10': 'bleRadioSupported'},
    const {'1': 'pixel_experience', '3': 408, '4': 1, '5': 8, '7': 'false', '10': 'pixelExperience'},
    const {'1': 'arc_plus_plus', '3': 409, '4': 1, '5': 8, '7': 'false', '10': 'arcPlusPlus'},
    const {'1': 'is_screenlock_state_flaky', '3': 410, '4': 1, '5': 8, '7': 'false', '10': 'isScreenlockStateFlaky'},
    const {'1': 'supported_software_features', '3': 411, '4': 3, '5': 14, '6': '.securegcm.SoftwareFeature', '10': 'supportedSoftwareFeatures'},
    const {'1': 'enabled_software_features', '3': 412, '4': 3, '5': 14, '6': '.securegcm.SoftwareFeature', '10': 'enabledSoftwareFeatures'},
    const {'1': 'enrollment_session_id', '3': 1000, '4': 1, '5': 12, '10': 'enrollmentSessionId'},
    const {'1': 'oauth_token', '3': 1001, '4': 1, '5': 9, '10': 'oauthToken'},
  ],
};

/// Descriptor for `GcmDeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gcmDeviceInfoDescriptor = $convert.base64Decode('Cg1HY21EZXZpY2VJbmZvEioKEWFuZHJvaWRfZGV2aWNlX2lkGAEgASgGUg9hbmRyb2lkRGV2aWNlSWQSLgoTZ2NtX3JlZ2lzdHJhdGlvbl9pZBhmIAEoDFIRZ2NtUmVnaXN0cmF0aW9uSWQSLwoTYXBuX3JlZ2lzdHJhdGlvbl9pZBjKASABKAxSEWFwblJlZ2lzdHJhdGlvbklkEjgKFG5vdGlmaWNhdGlvbl9lbmFibGVkGMsBIAEoCDoEdHJ1ZVITbm90aWZpY2F0aW9uRW5hYmxlZBIzChVibHVldG9vdGhfbWFjX2FkZHJlc3MYrgIgASgJUhNibHVldG9vdGhNYWNBZGRyZXNzEjMKFmRldmljZV9tYXN0ZXJfa2V5X2hhc2gYZyABKAxSE2RldmljZU1hc3RlcktleUhhc2gSJgoPdXNlcl9wdWJsaWNfa2V5GAQgAigMUg11c2VyUHVibGljS2V5EiEKDGRldmljZV9tb2RlbBgHIAEoCVILZGV2aWNlTW9kZWwSFgoGbG9jYWxlGAggASgJUgZsb2NhbGUSHQoKa2V5X2hhbmRsZRgJIAEoDFIJa2V5SGFuZGxlEhsKB2NvdW50ZXIYDCABKAM6ATBSB2NvdW50ZXISKgoRZGV2aWNlX29zX3ZlcnNpb24YDSABKAlSD2RldmljZU9zVmVyc2lvbhIzChZkZXZpY2Vfb3NfdmVyc2lvbl9jb2RlGA4gASgDUhNkZXZpY2VPc1ZlcnNpb25Db2RlEioKEWRldmljZV9vc19yZWxlYXNlGA8gASgJUg9kZXZpY2VPc1JlbGVhc2USLAoSZGV2aWNlX29zX2NvZGVuYW1lGBAgASgJUhBkZXZpY2VPc0NvZGVuYW1lEjYKF2RldmljZV9zb2Z0d2FyZV92ZXJzaW9uGBEgASgJUhVkZXZpY2VTb2Z0d2FyZVZlcnNpb24SPwocZGV2aWNlX3NvZnR3YXJlX3ZlcnNpb25fY29kZRgSIAEoA1IZZGV2aWNlU29mdHdhcmVWZXJzaW9uQ29kZRI2ChdkZXZpY2Vfc29mdHdhcmVfcGFja2FnZRgTIAEoCVIVZGV2aWNlU29mdHdhcmVQYWNrYWdlEj8KHGRldmljZV9kaXNwbGF5X2RpYWdvbmFsX21pbHMYFiABKAVSGWRldmljZURpc3BsYXlEaWFnb25hbE1pbHMSNAoWZGV2aWNlX2F1dGh6ZW5fdmVyc2lvbhgYIAEoBVIUZGV2aWNlQXV0aHplblZlcnNpb24SJAoObG9uZ19kZXZpY2VfaWQYHSABKAxSDGxvbmdEZXZpY2VJZBIvChNkZXZpY2VfbWFudWZhY3R1cmVyGB8gASgJUhJkZXZpY2VNYW51ZmFjdHVyZXISPwoLZGV2aWNlX3R5cGUYICABKA4yFS5zZWN1cmVnY20uRGV2aWNlVHlwZToHQU5EUk9JRFIKZGV2aWNlVHlwZRI+Chd1c2luZ19zZWN1cmVfc2NyZWVubG9jaxiQAyABKAg6BWZhbHNlUhV1c2luZ1NlY3VyZVNjcmVlbmxvY2sSTwogYXV0b191bmxvY2tfc2NyZWVubG9ja19zdXBwb3J0ZWQYkQMgASgIOgVmYWxzZVIdYXV0b1VubG9ja1NjcmVlbmxvY2tTdXBwb3J0ZWQSSwoeYXV0b191bmxvY2tfc2NyZWVubG9ja19lbmFibGVkGJIDIAEoCDoFZmFsc2VSG2F1dG9VbmxvY2tTY3JlZW5sb2NrRW5hYmxlZBJCChlibHVldG9vdGhfcmFkaW9fc3VwcG9ydGVkGJMDIAEoCDoFZmFsc2VSF2JsdWV0b290aFJhZGlvU3VwcG9ydGVkEj4KF2JsdWV0b290aF9yYWRpb19lbmFibGVkGJQDIAEoCDoFZmFsc2VSFWJsdWV0b290aFJhZGlvRW5hYmxlZBI6ChVtb2JpbGVfZGF0YV9zdXBwb3J0ZWQYlQMgASgIOgVmYWxzZVITbW9iaWxlRGF0YVN1cHBvcnRlZBI3ChN0ZXRoZXJpbmdfc3VwcG9ydGVkGJYDIAEoCDoFZmFsc2VSEnRldGhlcmluZ1N1cHBvcnRlZBI2ChNibGVfcmFkaW9fc3VwcG9ydGVkGJcDIAEoCDoFZmFsc2VSEWJsZVJhZGlvU3VwcG9ydGVkEjEKEHBpeGVsX2V4cGVyaWVuY2UYmAMgASgIOgVmYWxzZVIPcGl4ZWxFeHBlcmllbmNlEioKDWFyY19wbHVzX3BsdXMYmQMgASgIOgVmYWxzZVILYXJjUGx1c1BsdXMSQQoZaXNfc2NyZWVubG9ja19zdGF0ZV9mbGFreRiaAyABKAg6BWZhbHNlUhZpc1NjcmVlbmxvY2tTdGF0ZUZsYWt5ElsKG3N1cHBvcnRlZF9zb2Z0d2FyZV9mZWF0dXJlcxibAyADKA4yGi5zZWN1cmVnY20uU29mdHdhcmVGZWF0dXJlUhlzdXBwb3J0ZWRTb2Z0d2FyZUZlYXR1cmVzElcKGWVuYWJsZWRfc29mdHdhcmVfZmVhdHVyZXMYnAMgAygOMhouc2VjdXJlZ2NtLlNvZnR3YXJlRmVhdHVyZVIXZW5hYmxlZFNvZnR3YXJlRmVhdHVyZXMSMwoVZW5yb2xsbWVudF9zZXNzaW9uX2lkGOgHIAEoDFITZW5yb2xsbWVudFNlc3Npb25JZBIgCgtvYXV0aF90b2tlbhjpByABKAlSCm9hdXRoVG9rZW4=');
@$core.Deprecated('Use gcmMetadataDescriptor instead')
const GcmMetadata$json = const {
  '1': 'GcmMetadata',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 14, '6': '.securegcm.Type', '10': 'type'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '7': '0', '10': 'version'},
  ],
};

/// Descriptor for `GcmMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gcmMetadataDescriptor = $convert.base64Decode('CgtHY21NZXRhZGF0YRIjCgR0eXBlGAEgAigOMg8uc2VjdXJlZ2NtLlR5cGVSBHR5cGUSGwoHdmVyc2lvbhgCIAEoBToBMFIHdmVyc2lvbg==');
@$core.Deprecated('Use tickleDescriptor instead')
const Tickle$json = const {
  '1': 'Tickle',
  '2': const [
    const {'1': 'expiry_time', '3': 1, '4': 1, '5': 6, '10': 'expiryTime'},
  ],
};

/// Descriptor for `Tickle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tickleDescriptor = $convert.base64Decode('CgZUaWNrbGUSHwoLZXhwaXJ5X3RpbWUYASABKAZSCmV4cGlyeVRpbWU=');
@$core.Deprecated('Use loginNotificationInfoDescriptor instead')
const LoginNotificationInfo$json = const {
  '1': 'LoginNotificationInfo',
  '2': const [
    const {'1': 'creation_time', '3': 2, '4': 1, '5': 6, '10': 'creationTime'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'host', '3': 4, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'source', '3': 5, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'event_type', '3': 6, '4': 1, '5': 9, '10': 'eventType'},
  ],
};

/// Descriptor for `LoginNotificationInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginNotificationInfoDescriptor = $convert.base64Decode('ChVMb2dpbk5vdGlmaWNhdGlvbkluZm8SIwoNY3JlYXRpb25fdGltZRgCIAEoBlIMY3JlYXRpb25UaW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBISCgRob3N0GAQgASgJUgRob3N0EhYKBnNvdXJjZRgFIAEoCVIGc291cmNlEh0KCmV2ZW50X3R5cGUYBiABKAlSCWV2ZW50VHlwZQ==');
