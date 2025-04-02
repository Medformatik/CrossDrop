//
//  Generated code. Do not modify.
//  source: securegcm.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// This enum is used by iOS devices as values for device_display_diagonal_mils
/// in GcmDeviceInfo. There is no good way to calculate it on those devices.
class AppleDeviceDiagonalMils extends $pb.ProtobufEnum {
  /// This is the mils diagonal on an iPhone 5.
  static const AppleDeviceDiagonalMils APPLE_PHONE = AppleDeviceDiagonalMils._(4000, _omitEnumNames ? '' : 'APPLE_PHONE');
  /// This is the mils diagonal on an iPad mini.
  static const AppleDeviceDiagonalMils APPLE_PAD = AppleDeviceDiagonalMils._(7900, _omitEnumNames ? '' : 'APPLE_PAD');

  static const $core.List<AppleDeviceDiagonalMils> values = <AppleDeviceDiagonalMils> [
    APPLE_PHONE,
    APPLE_PAD,
  ];

  static final $core.Map<$core.int, AppleDeviceDiagonalMils> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AppleDeviceDiagonalMils? valueOf($core.int value) => _byValue[value];

  const AppleDeviceDiagonalMils._(super.v, super.n);
}

/// This should be kept in sync with DeviceType in:
/// java/com/google/security/cryptauth/backend/services/common/common_enums.proto
class DeviceType extends $pb.ProtobufEnum {
  static const DeviceType UNKNOWN = DeviceType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const DeviceType ANDROID = DeviceType._(1, _omitEnumNames ? '' : 'ANDROID');
  static const DeviceType CHROME = DeviceType._(2, _omitEnumNames ? '' : 'CHROME');
  static const DeviceType IOS = DeviceType._(3, _omitEnumNames ? '' : 'IOS');
  static const DeviceType BROWSER = DeviceType._(4, _omitEnumNames ? '' : 'BROWSER');
  static const DeviceType OSX = DeviceType._(5, _omitEnumNames ? '' : 'OSX');

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

  const DeviceType._(super.v, super.n);
}

/// MultiDevice features which may be supported and enabled on a device. See
class SoftwareFeature extends $pb.ProtobufEnum {
  static const SoftwareFeature UNKNOWN_FEATURE = SoftwareFeature._(0, _omitEnumNames ? '' : 'UNKNOWN_FEATURE');
  static const SoftwareFeature BETTER_TOGETHER_HOST = SoftwareFeature._(1, _omitEnumNames ? '' : 'BETTER_TOGETHER_HOST');
  static const SoftwareFeature BETTER_TOGETHER_CLIENT = SoftwareFeature._(2, _omitEnumNames ? '' : 'BETTER_TOGETHER_CLIENT');
  static const SoftwareFeature EASY_UNLOCK_HOST = SoftwareFeature._(3, _omitEnumNames ? '' : 'EASY_UNLOCK_HOST');
  static const SoftwareFeature EASY_UNLOCK_CLIENT = SoftwareFeature._(4, _omitEnumNames ? '' : 'EASY_UNLOCK_CLIENT');
  static const SoftwareFeature MAGIC_TETHER_HOST = SoftwareFeature._(5, _omitEnumNames ? '' : 'MAGIC_TETHER_HOST');
  static const SoftwareFeature MAGIC_TETHER_CLIENT = SoftwareFeature._(6, _omitEnumNames ? '' : 'MAGIC_TETHER_CLIENT');
  static const SoftwareFeature SMS_CONNECT_HOST = SoftwareFeature._(7, _omitEnumNames ? '' : 'SMS_CONNECT_HOST');
  static const SoftwareFeature SMS_CONNECT_CLIENT = SoftwareFeature._(8, _omitEnumNames ? '' : 'SMS_CONNECT_CLIENT');

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

  const SoftwareFeature._(super.v, super.n);
}

/// A list of "reasons" that can be provided for calling server-side APIs.
/// This is particularly important for calls that can be triggered by different
/// kinds of events. Please try to keep reasons as generic as possible, so that
/// codes can be re-used by various callers in a sensible fashion.
class InvocationReason extends $pb.ProtobufEnum {
  static const InvocationReason REASON_UNKNOWN = InvocationReason._(0, _omitEnumNames ? '' : 'REASON_UNKNOWN');
  /// First run of the software package invoking this call
  static const InvocationReason REASON_INITIALIZATION = InvocationReason._(1, _omitEnumNames ? '' : 'REASON_INITIALIZATION');
  /// Ordinary periodic actions (e.g. monthly master key rotation)
  static const InvocationReason REASON_PERIODIC = InvocationReason._(2, _omitEnumNames ? '' : 'REASON_PERIODIC');
  /// Slow-cycle periodic action (e.g. yearly keypair rotation???)
  static const InvocationReason REASON_SLOW_PERIODIC = InvocationReason._(3, _omitEnumNames ? '' : 'REASON_SLOW_PERIODIC');
  /// Fast-cycle periodic action (e.g. daily sync for Smart Lock users)
  static const InvocationReason REASON_FAST_PERIODIC = InvocationReason._(4, _omitEnumNames ? '' : 'REASON_FAST_PERIODIC');
  /// Expired state (e.g. expired credentials, or cached entries) was detected
  static const InvocationReason REASON_EXPIRATION = InvocationReason._(5, _omitEnumNames ? '' : 'REASON_EXPIRATION');
  /// An unexpected protocol failure occurred (so attempting to repair state)
  static const InvocationReason REASON_FAILURE_RECOVERY = InvocationReason._(6, _omitEnumNames ? '' : 'REASON_FAILURE_RECOVERY');
  /// A new account has been added to the device
  static const InvocationReason REASON_NEW_ACCOUNT = InvocationReason._(7, _omitEnumNames ? '' : 'REASON_NEW_ACCOUNT');
  /// An existing account on the device has been changed
  static const InvocationReason REASON_CHANGED_ACCOUNT = InvocationReason._(8, _omitEnumNames ? '' : 'REASON_CHANGED_ACCOUNT');
  /// The user toggled the state of a feature (e.g. Smart Lock enabled via BT)
  static const InvocationReason REASON_FEATURE_TOGGLED = InvocationReason._(9, _omitEnumNames ? '' : 'REASON_FEATURE_TOGGLED');
  /// A "push" from the server caused this action (e.g. a sync tickle)
  static const InvocationReason REASON_SERVER_INITIATED = InvocationReason._(10, _omitEnumNames ? '' : 'REASON_SERVER_INITIATED');
  /// A local address change triggered this (e.g. GCM registration id changed)
  static const InvocationReason REASON_ADDRESS_CHANGE = InvocationReason._(11, _omitEnumNames ? '' : 'REASON_ADDRESS_CHANGE');
  /// A software update has triggered this
  static const InvocationReason REASON_SOFTWARE_UPDATE = InvocationReason._(12, _omitEnumNames ? '' : 'REASON_SOFTWARE_UPDATE');
  /// A manual action by the user triggered this (e.g. commands sent via adb)
  static const InvocationReason REASON_MANUAL = InvocationReason._(13, _omitEnumNames ? '' : 'REASON_MANUAL');
  /// A custom key has been invalidated on the device (e.g. screen lock is
  /// disabled).
  static const InvocationReason REASON_CUSTOM_KEY_INVALIDATION = InvocationReason._(14, _omitEnumNames ? '' : 'REASON_CUSTOM_KEY_INVALIDATION');
  /// Periodic action triggered by auth_proximity
  static const InvocationReason REASON_PROXIMITY_PERIODIC = InvocationReason._(15, _omitEnumNames ? '' : 'REASON_PROXIMITY_PERIODIC');

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

  const InvocationReason._(super.v, super.n);
}

class Type extends $pb.ProtobufEnum {
  static const Type ENROLLMENT = Type._(0, _omitEnumNames ? '' : 'ENROLLMENT');
  static const Type TICKLE = Type._(1, _omitEnumNames ? '' : 'TICKLE');
  static const Type TX_REQUEST = Type._(2, _omitEnumNames ? '' : 'TX_REQUEST');
  static const Type TX_REPLY = Type._(3, _omitEnumNames ? '' : 'TX_REPLY');
  static const Type TX_SYNC_REQUEST = Type._(4, _omitEnumNames ? '' : 'TX_SYNC_REQUEST');
  static const Type TX_SYNC_RESPONSE = Type._(5, _omitEnumNames ? '' : 'TX_SYNC_RESPONSE');
  static const Type TX_PING = Type._(6, _omitEnumNames ? '' : 'TX_PING');
  static const Type DEVICE_INFO_UPDATE = Type._(7, _omitEnumNames ? '' : 'DEVICE_INFO_UPDATE');
  static const Type TX_CANCEL_REQUEST = Type._(8, _omitEnumNames ? '' : 'TX_CANCEL_REQUEST');
  /// DEPRECATED (can be re-used after Aug 2015)
  static const Type PROXIMITYAUTH_PAIRING = Type._(10, _omitEnumNames ? '' : 'PROXIMITYAUTH_PAIRING');
  /// The kind of identity assertion generated by a "GCM V1" device (i.e.,
  /// an Android phone that has registered with us a public and a symmetric
  /// key)
  static const Type GCMV1_IDENTITY_ASSERTION = Type._(11, _omitEnumNames ? '' : 'GCMV1_IDENTITY_ASSERTION');
  /// Device-to-device communications are protected by an unauthenticated
  /// Diffie-Hellman exchange. The InitiatorHello message is simply the
  /// initiator's public DH key, and is not encoded as a SecureMessage, so
  /// it doesn't have a tag.
  /// The ResponderHello message (which is sent by the responder
  /// to the initiator), on the other hand, carries a payload that is protected
  /// by the derived shared key. It also contains the responder's
  /// public DH key. ResponderHelloAndPayload messages have the
  /// DEVICE_TO_DEVICE_RESPONDER_HELLO tag.
  static const Type DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD = Type._(12, _omitEnumNames ? '' : 'DEVICE_TO_DEVICE_RESPONDER_HELLO_PAYLOAD');
  /// Device-to-device communications are protected by an unauthenticated
  /// Diffie-Hellman exchange. Once the initiator and responder
  /// agree on a shared key (through Diffie-Hellman), they will use messages
  /// tagged with DEVICE_TO_DEVICE_MESSAGE to exchange data.
  static const Type DEVICE_TO_DEVICE_MESSAGE = Type._(13, _omitEnumNames ? '' : 'DEVICE_TO_DEVICE_MESSAGE');
  /// Notification to let a device know it should contact a nearby device.
  static const Type DEVICE_PROXIMITY_CALLBACK = Type._(14, _omitEnumNames ? '' : 'DEVICE_PROXIMITY_CALLBACK');
  /// Device-to-device communications are protected by an unauthenticated
  /// Diffie-Hellman exchange. During device-to-device authentication, the first
  /// message from initiator (the challenge) is signed and put into the payload
  /// of the message sent back to the initiator.
  static const Type UNLOCK_KEY_SIGNED_CHALLENGE = Type._(15, _omitEnumNames ? '' : 'UNLOCK_KEY_SIGNED_CHALLENGE');
  /// Specialty (corp only) features
  static const Type LOGIN_NOTIFICATION = Type._(101, _omitEnumNames ? '' : 'LOGIN_NOTIFICATION');

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

  const Type._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
