///
//  Generated code. Do not modify.
//  source: securegcm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AppleDeviceDiagonalMils extends $pb.ProtobufEnum {
  static const AppleDeviceDiagonalMils APPLE_PHONE = AppleDeviceDiagonalMils._(4000, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPLE_PHONE');
  static const AppleDeviceDiagonalMils APPLE_PAD = AppleDeviceDiagonalMils._(7900, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPLE_PAD');

  static const $core.List<AppleDeviceDiagonalMils> values = <AppleDeviceDiagonalMils> [
    APPLE_PHONE,
    APPLE_PAD,
  ];

  static final $core.Map<$core.int, AppleDeviceDiagonalMils> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AppleDeviceDiagonalMils? valueOf($core.int value) => _byValue[value];

  const AppleDeviceDiagonalMils._($core.int v, $core.String n) : super(v, n);
}

class DeviceType extends $pb.ProtobufEnum {
  static const DeviceType UNKNOWN = DeviceType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const DeviceType ANDROID = DeviceType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID');
  static const DeviceType CHROME = DeviceType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHROME');
  static const DeviceType IOS = DeviceType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IOS');
  static const DeviceType BROWSER = DeviceType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BROWSER');
  static const DeviceType OSX = DeviceType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OSX');

  static const $core.List<DeviceType> values = <DeviceType> [
    UNKNOWN,
    ANDROID,
    CHROME,
    IOS,
    BROWSER,
    OSX,
  ];

  static final $core.Map<$core.int, DeviceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceType? valueOf($core.int value) => _byValue[value];

  const DeviceType._($core.int v, $core.String n) : super(v, n);
}

class SoftwareFeature extends $pb.ProtobufEnum {
  static const SoftwareFeature UNKNOWN_FEATURE = SoftwareFeature._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_FEATURE');
  static const SoftwareFeature BETTER_TOGETHER_HOST = SoftwareFeature._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BETTER_TOGETHER_HOST');
  static const SoftwareFeature BETTER_TOGETHER_CLIENT = SoftwareFeature._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BETTER_TOGETHER_CLIENT');
  static const SoftwareFeature EASY_UNLOCK_HOST = SoftwareFeature._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EASY_UNLOCK_HOST');
  static const SoftwareFeature EASY_UNLOCK_CLIENT = SoftwareFeature._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EASY_UNLOCK_CLIENT');
  static const SoftwareFeature MAGIC_TETHER_HOST = SoftwareFeature._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAGIC_TETHER_HOST');
  static const SoftwareFeature MAGIC_TETHER_CLIENT = SoftwareFeature._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAGIC_TETHER_CLIENT');
  static const SoftwareFeature SMS_CONNECT_HOST = SoftwareFeature._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SMS_CONNECT_HOST');
  static const SoftwareFeature SMS_CONNECT_CLIENT = SoftwareFeature._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SMS_CONNECT_CLIENT');

  static const $core.List<SoftwareFeature> values = <SoftwareFeature> [
    UNKNOWN_FEATURE,
    BETTER_TOGETHER_HOST,
    BETTER_TOGETHER_CLIENT,
    EASY_UNLOCK_HOST,
    EASY_UNLOCK_CLIENT,
    MAGIC_TETHER_HOST,
    MAGIC_TETHER_CLIENT,
    SMS_CONNECT_HOST,
    SMS_CONNECT_CLIENT,
  ];

  static final $core.Map<$core.int, SoftwareFeature> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SoftwareFeature? valueOf($core.int value) => _byValue[value];

  const SoftwareFeature._($core.int v, $core.String n) : super(v, n);
}

class InvocationReason extends $pb.ProtobufEnum {
  static const InvocationReason REASON_UNKNOWN = InvocationReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_UNKNOWN');
  static const InvocationReason REASON_INITIALIZATION = InvocationReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_INITIALIZATION');
  static const InvocationReason REASON_PERIODIC = InvocationReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_PERIODIC');
  static const InvocationReason REASON_SLOW_PERIODIC = InvocationReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_SLOW_PERIODIC');
  static const InvocationReason REASON_FAST_PERIODIC = InvocationReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_FAST_PERIODIC');
  static const InvocationReason REASON_EXPIRATION = InvocationReason._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_EXPIRATION');
  static const InvocationReason REASON_FAILURE_RECOVERY = InvocationReason._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_FAILURE_RECOVERY');
  static const InvocationReason REASON_NEW_ACCOUNT = InvocationReason._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_NEW_ACCOUNT');
  static const InvocationReason REASON_CHANGED_ACCOUNT = InvocationReason._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_CHANGED_ACCOUNT');
  static const InvocationReason REASON_FEATURE_TOGGLED = InvocationReason._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_FEATURE_TOGGLED');
  static const InvocationReason REASON_SERVER_INITIATED = InvocationReason._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_SERVER_INITIATED');
  static const InvocationReason REASON_ADDRESS_CHANGE = InvocationReason._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_ADDRESS_CHANGE');
  static const InvocationReason REASON_SOFTWARE_UPDATE = InvocationReason._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_SOFTWARE_UPDATE');
  static const InvocationReason REASON_MANUAL = InvocationReason._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_MANUAL');
  static const InvocationReason REASON_CUSTOM_KEY_INVALIDATION = InvocationReason._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_CUSTOM_KEY_INVALIDATION');
  static const InvocationReason REASON_PROXIMITY_PERIODIC = InvocationReason._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_PROXIMITY_PERIODIC');

  static const $core.List<InvocationReason> values = <InvocationReason> [
    REASON_UNKNOWN,
    REASON_INITIALIZATION,
    REASON_PERIODIC,
    REASON_SLOW_PERIODIC,
    REASON_FAST_PERIODIC,
    REASON_EXPIRATION,
    REASON_FAILURE_RECOVERY,
    REASON_NEW_ACCOUNT,
    REASON_CHANGED_ACCOUNT,
    REASON_FEATURE_TOGGLED,
    REASON_SERVER_INITIATED,
    REASON_ADDRESS_CHANGE,
    REASON_SOFTWARE_UPDATE,
    REASON_MANUAL,
    REASON_CUSTOM_KEY_INVALIDATION,
    REASON_PROXIMITY_PERIODIC,
  ];

  static final $core.Map<$core.int, InvocationReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InvocationReason? valueOf($core.int value) => _byValue[value];

  const InvocationReason._($core.int v, $core.String n) : super(v, n);
}

class Type extends $pb.ProtobufEnum {
  static const Type ENROLLMENT = Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENROLLMENT');
  static const Type TICKLE = Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TICKLE');
  static const Type TX_REQUEST = Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_REQUEST');
  static const Type TX_REPLY = Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_REPLY');
  static const Type TX_SYNC_REQUEST = Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_SYNC_REQUEST');
  static const Type TX_SYNC_RESPONSE = Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_SYNC_RESPONSE');
  static const Type TX_PING = Type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_PING');
  static const Type DEVICE_INFO_UPDATE = Type._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEVICE_INFO_UPDATE');
  static const Type TX_CANCEL_REQUEST = Type._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TX_CANCEL_REQUEST');
  static const Type PROXIMITYAUTH_PAIRING = Type._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROXIMITYAUTH_PAIRING');
  static const Type GCMV1_IDENTITY_ASSERTION = Type._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GCMV1_IDENTITY_ASSERTION');
  static const Type DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD = Type._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD');
  static const Type DEVICE_TO_DEVICE_MESSAGE = Type._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEVICE_TO_DEVICE_MESSAGE');
  static const Type DEVICE_PROXIMITY_CALLBACK = Type._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEVICE_PROXIMITY_CALLBACK');
  static const Type UNLOCK_KEY_SIGNED_CHALLENGE = Type._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNLOCK_KEY_SIGNED_CHALLENGE');
  static const Type LOGIN_NOTIFICATION = Type._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOGIN_NOTIFICATION');

  static const $core.List<Type> values = <Type> [
    ENROLLMENT,
    TICKLE,
    TX_REQUEST,
    TX_REPLY,
    TX_SYNC_REQUEST,
    TX_SYNC_RESPONSE,
    TX_PING,
    DEVICE_INFO_UPDATE,
    TX_CANCEL_REQUEST,
    PROXIMITYAUTH_PAIRING,
    GCMV1_IDENTITY_ASSERTION,
    DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD,
    DEVICE_TO_DEVICE_MESSAGE,
    DEVICE_PROXIMITY_CALLBACK,
    UNLOCK_KEY_SIGNED_CHALLENGE,
    LOGIN_NOTIFICATION,
  ];

  static final $core.Map<$core.int, Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Type? valueOf($core.int value) => _byValue[value];

  const Type._($core.int v, $core.String n) : super(v, n);
}

