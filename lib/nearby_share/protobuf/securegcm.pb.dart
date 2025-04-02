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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'securegcm.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'securegcm.pbenum.dart';

/// Message used only during enrollment
/// Field numbers should be kept in sync with DeviceInfo in:
///   java/com/google/security/cryptauth/backend/services/common/common.proto
class GcmDeviceInfo extends $pb.GeneratedMessage {
  factory GcmDeviceInfo({
    $fixnum.Int64? androidDeviceId,
    $core.List<$core.int>? userPublicKey,
    $core.String? deviceModel,
    $core.String? locale,
    $core.List<$core.int>? keyHandle,
    $fixnum.Int64? counter,
    $core.String? deviceOsVersion,
    $fixnum.Int64? deviceOsVersionCode,
    $core.String? deviceOsRelease,
    $core.String? deviceOsCodename,
    $core.String? deviceSoftwareVersion,
    $fixnum.Int64? deviceSoftwareVersionCode,
    $core.String? deviceSoftwarePackage,
    $core.int? deviceDisplayDiagonalMils,
    $core.int? deviceAuthzenVersion,
    $core.List<$core.int>? longDeviceId,
    $core.String? deviceManufacturer,
    DeviceType? deviceType,
    $core.List<$core.int>? gcmRegistrationId,
    $core.List<$core.int>? deviceMasterKeyHash,
    $core.List<$core.int>? apnRegistrationId,
    $core.bool? notificationEnabled,
    $core.String? bluetoothMacAddress,
    $core.bool? usingSecureScreenlock,
    $core.bool? autoUnlockScreenlockSupported,
    $core.bool? autoUnlockScreenlockEnabled,
    $core.bool? bluetoothRadioSupported,
    $core.bool? bluetoothRadioEnabled,
    $core.bool? mobileDataSupported,
    $core.bool? tetheringSupported,
    $core.bool? bleRadioSupported,
    $core.bool? pixelExperience,
    $core.bool? arcPlusPlus,
    $core.bool? isScreenlockStateFlaky,
    $core.Iterable<SoftwareFeature>? supportedSoftwareFeatures,
    $core.Iterable<SoftwareFeature>? enabledSoftwareFeatures,
    $core.List<$core.int>? enrollmentSessionId,
    $core.String? oauthToken,
  }) {
    final $result = create();
    if (androidDeviceId != null) {
      $result.androidDeviceId = androidDeviceId;
    }
    if (userPublicKey != null) {
      $result.userPublicKey = userPublicKey;
    }
    if (deviceModel != null) {
      $result.deviceModel = deviceModel;
    }
    if (locale != null) {
      $result.locale = locale;
    }
    if (keyHandle != null) {
      $result.keyHandle = keyHandle;
    }
    if (counter != null) {
      $result.counter = counter;
    }
    if (deviceOsVersion != null) {
      $result.deviceOsVersion = deviceOsVersion;
    }
    if (deviceOsVersionCode != null) {
      $result.deviceOsVersionCode = deviceOsVersionCode;
    }
    if (deviceOsRelease != null) {
      $result.deviceOsRelease = deviceOsRelease;
    }
    if (deviceOsCodename != null) {
      $result.deviceOsCodename = deviceOsCodename;
    }
    if (deviceSoftwareVersion != null) {
      $result.deviceSoftwareVersion = deviceSoftwareVersion;
    }
    if (deviceSoftwareVersionCode != null) {
      $result.deviceSoftwareVersionCode = deviceSoftwareVersionCode;
    }
    if (deviceSoftwarePackage != null) {
      $result.deviceSoftwarePackage = deviceSoftwarePackage;
    }
    if (deviceDisplayDiagonalMils != null) {
      $result.deviceDisplayDiagonalMils = deviceDisplayDiagonalMils;
    }
    if (deviceAuthzenVersion != null) {
      $result.deviceAuthzenVersion = deviceAuthzenVersion;
    }
    if (longDeviceId != null) {
      $result.longDeviceId = longDeviceId;
    }
    if (deviceManufacturer != null) {
      $result.deviceManufacturer = deviceManufacturer;
    }
    if (deviceType != null) {
      $result.deviceType = deviceType;
    }
    if (gcmRegistrationId != null) {
      $result.gcmRegistrationId = gcmRegistrationId;
    }
    if (deviceMasterKeyHash != null) {
      $result.deviceMasterKeyHash = deviceMasterKeyHash;
    }
    if (apnRegistrationId != null) {
      $result.apnRegistrationId = apnRegistrationId;
    }
    if (notificationEnabled != null) {
      $result.notificationEnabled = notificationEnabled;
    }
    if (bluetoothMacAddress != null) {
      $result.bluetoothMacAddress = bluetoothMacAddress;
    }
    if (usingSecureScreenlock != null) {
      $result.usingSecureScreenlock = usingSecureScreenlock;
    }
    if (autoUnlockScreenlockSupported != null) {
      $result.autoUnlockScreenlockSupported = autoUnlockScreenlockSupported;
    }
    if (autoUnlockScreenlockEnabled != null) {
      $result.autoUnlockScreenlockEnabled = autoUnlockScreenlockEnabled;
    }
    if (bluetoothRadioSupported != null) {
      $result.bluetoothRadioSupported = bluetoothRadioSupported;
    }
    if (bluetoothRadioEnabled != null) {
      $result.bluetoothRadioEnabled = bluetoothRadioEnabled;
    }
    if (mobileDataSupported != null) {
      $result.mobileDataSupported = mobileDataSupported;
    }
    if (tetheringSupported != null) {
      $result.tetheringSupported = tetheringSupported;
    }
    if (bleRadioSupported != null) {
      $result.bleRadioSupported = bleRadioSupported;
    }
    if (pixelExperience != null) {
      $result.pixelExperience = pixelExperience;
    }
    if (arcPlusPlus != null) {
      $result.arcPlusPlus = arcPlusPlus;
    }
    if (isScreenlockStateFlaky != null) {
      $result.isScreenlockStateFlaky = isScreenlockStateFlaky;
    }
    if (supportedSoftwareFeatures != null) {
      $result.supportedSoftwareFeatures.addAll(supportedSoftwareFeatures);
    }
    if (enabledSoftwareFeatures != null) {
      $result.enabledSoftwareFeatures.addAll(enabledSoftwareFeatures);
    }
    if (enrollmentSessionId != null) {
      $result.enrollmentSessionId = enrollmentSessionId;
    }
    if (oauthToken != null) {
      $result.oauthToken = oauthToken;
    }
    return $result;
  }
  GcmDeviceInfo._() : super();
  factory GcmDeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GcmDeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GcmDeviceInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'androidDeviceId', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'userPublicKey', $pb.PbFieldType.QY)
    ..aOS(7, _omitFieldNames ? '' : 'deviceModel')
    ..aOS(8, _omitFieldNames ? '' : 'locale')
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'keyHandle', $pb.PbFieldType.OY)
    ..aInt64(12, _omitFieldNames ? '' : 'counter')
    ..aOS(13, _omitFieldNames ? '' : 'deviceOsVersion')
    ..aInt64(14, _omitFieldNames ? '' : 'deviceOsVersionCode')
    ..aOS(15, _omitFieldNames ? '' : 'deviceOsRelease')
    ..aOS(16, _omitFieldNames ? '' : 'deviceOsCodename')
    ..aOS(17, _omitFieldNames ? '' : 'deviceSoftwareVersion')
    ..aInt64(18, _omitFieldNames ? '' : 'deviceSoftwareVersionCode')
    ..aOS(19, _omitFieldNames ? '' : 'deviceSoftwarePackage')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'deviceDisplayDiagonalMils', $pb.PbFieldType.O3)
    ..a<$core.int>(24, _omitFieldNames ? '' : 'deviceAuthzenVersion', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(29, _omitFieldNames ? '' : 'longDeviceId', $pb.PbFieldType.OY)
    ..aOS(31, _omitFieldNames ? '' : 'deviceManufacturer')
    ..e<DeviceType>(32, _omitFieldNames ? '' : 'deviceType', $pb.PbFieldType.OE, defaultOrMaker: DeviceType.ANDROID, valueOf: DeviceType.valueOf, enumValues: DeviceType.values)
    ..a<$core.List<$core.int>>(102, _omitFieldNames ? '' : 'gcmRegistrationId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(103, _omitFieldNames ? '' : 'deviceMasterKeyHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(202, _omitFieldNames ? '' : 'apnRegistrationId', $pb.PbFieldType.OY)
    ..a<$core.bool>(203, _omitFieldNames ? '' : 'notificationEnabled', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..aOS(302, _omitFieldNames ? '' : 'bluetoothMacAddress')
    ..aOB(400, _omitFieldNames ? '' : 'usingSecureScreenlock')
    ..aOB(401, _omitFieldNames ? '' : 'autoUnlockScreenlockSupported')
    ..aOB(402, _omitFieldNames ? '' : 'autoUnlockScreenlockEnabled')
    ..aOB(403, _omitFieldNames ? '' : 'bluetoothRadioSupported')
    ..aOB(404, _omitFieldNames ? '' : 'bluetoothRadioEnabled')
    ..aOB(405, _omitFieldNames ? '' : 'mobileDataSupported')
    ..aOB(406, _omitFieldNames ? '' : 'tetheringSupported')
    ..aOB(407, _omitFieldNames ? '' : 'bleRadioSupported')
    ..aOB(408, _omitFieldNames ? '' : 'pixelExperience')
    ..aOB(409, _omitFieldNames ? '' : 'arcPlusPlus')
    ..aOB(410, _omitFieldNames ? '' : 'isScreenlockStateFlaky')
    ..pc<SoftwareFeature>(411, _omitFieldNames ? '' : 'supportedSoftwareFeatures', $pb.PbFieldType.PE, valueOf: SoftwareFeature.valueOf, enumValues: SoftwareFeature.values, defaultEnumValue: SoftwareFeature.UNKNOWN_FEATURE)
    ..pc<SoftwareFeature>(412, _omitFieldNames ? '' : 'enabledSoftwareFeatures', $pb.PbFieldType.PE, valueOf: SoftwareFeature.valueOf, enumValues: SoftwareFeature.values, defaultEnumValue: SoftwareFeature.UNKNOWN_FEATURE)
    ..a<$core.List<$core.int>>(1000, _omitFieldNames ? '' : 'enrollmentSessionId', $pb.PbFieldType.OY)
    ..aOS(1001, _omitFieldNames ? '' : 'oauthToken')
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GcmDeviceInfo clone() => GcmDeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GcmDeviceInfo copyWith(void Function(GcmDeviceInfo) updates) => super.copyWith((message) => updates(message as GcmDeviceInfo)) as GcmDeviceInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GcmDeviceInfo create() => GcmDeviceInfo._();
  GcmDeviceInfo createEmptyInstance() => create();
  static $pb.PbList<GcmDeviceInfo> createRepeated() => $pb.PbList<GcmDeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static GcmDeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GcmDeviceInfo>(create);
  static GcmDeviceInfo? _defaultInstance;

  /// This field's name does not match the one in DeviceInfo for legacy reasons.
  /// Consider using long_device_id and device_type instead when enrolling
  /// non-android devices.
  @$pb.TagNumber(1)
  $fixnum.Int64 get androidDeviceId => $_getI64(0);
  @$pb.TagNumber(1)
  set androidDeviceId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAndroidDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAndroidDeviceId() => $_clearField(1);

  /// A SecureMessage.EcP256PublicKey
  @$pb.TagNumber(4)
  $core.List<$core.int> get userPublicKey => $_getN(1);
  @$pb.TagNumber(4)
  set userPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserPublicKey() => $_has(1);
  @$pb.TagNumber(4)
  void clearUserPublicKey() => $_clearField(4);

  /// device's model name
  /// (e.g., an android.os.Build.MODEL or UIDevice.model)
  @$pb.TagNumber(7)
  $core.String get deviceModel => $_getSZ(2);
  @$pb.TagNumber(7)
  set deviceModel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviceModel() => $_has(2);
  @$pb.TagNumber(7)
  void clearDeviceModel() => $_clearField(7);

  /// device's locale
  @$pb.TagNumber(8)
  $core.String get locale => $_getSZ(3);
  @$pb.TagNumber(8)
  set locale($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(8)
  $core.bool hasLocale() => $_has(3);
  @$pb.TagNumber(8)
  void clearLocale() => $_clearField(8);

  /// The handle for user_public_key (and implicitly, a master key)
  @$pb.TagNumber(9)
  $core.List<$core.int> get keyHandle => $_getN(4);
  @$pb.TagNumber(9)
  set keyHandle($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(9)
  $core.bool hasKeyHandle() => $_has(4);
  @$pb.TagNumber(9)
  void clearKeyHandle() => $_clearField(9);

  /// The initial counter value for the device, sent by the device
  @$pb.TagNumber(12)
  $fixnum.Int64 get counter => $_getI64(5);
  @$pb.TagNumber(12)
  set counter($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(12)
  $core.bool hasCounter() => $_has(5);
  @$pb.TagNumber(12)
  void clearCounter() => $_clearField(12);

  /// The Operating System version on the device
  /// (e.g., an android.os.Build.DISPLAY or UIDevice.systemVersion)
  @$pb.TagNumber(13)
  $core.String get deviceOsVersion => $_getSZ(6);
  @$pb.TagNumber(13)
  set deviceOsVersion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(13)
  $core.bool hasDeviceOsVersion() => $_has(6);
  @$pb.TagNumber(13)
  void clearDeviceOsVersion() => $_clearField(13);

  /// The Operating System version number on the device
  /// (e.g., an android.os.Build.VERSION.SDK_INT)
  @$pb.TagNumber(14)
  $fixnum.Int64 get deviceOsVersionCode => $_getI64(7);
  @$pb.TagNumber(14)
  set deviceOsVersionCode($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(14)
  $core.bool hasDeviceOsVersionCode() => $_has(7);
  @$pb.TagNumber(14)
  void clearDeviceOsVersionCode() => $_clearField(14);

  /// The Operating System release on the device
  /// (e.g., an android.os.Build.VERSION.RELEASE)
  @$pb.TagNumber(15)
  $core.String get deviceOsRelease => $_getSZ(8);
  @$pb.TagNumber(15)
  set deviceOsRelease($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeviceOsRelease() => $_has(8);
  @$pb.TagNumber(15)
  void clearDeviceOsRelease() => $_clearField(15);

  /// The Operating System codename on the device
  /// (e.g., an android.os.Build.VERSION.CODENAME or UIDevice.systemName)
  @$pb.TagNumber(16)
  $core.String get deviceOsCodename => $_getSZ(9);
  @$pb.TagNumber(16)
  set deviceOsCodename($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(16)
  $core.bool hasDeviceOsCodename() => $_has(9);
  @$pb.TagNumber(16)
  void clearDeviceOsCodename() => $_clearField(16);

  /// The software version running on the device
  /// (e.g., Authenticator app version string)
  @$pb.TagNumber(17)
  $core.String get deviceSoftwareVersion => $_getSZ(10);
  @$pb.TagNumber(17)
  set deviceSoftwareVersion($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(17)
  $core.bool hasDeviceSoftwareVersion() => $_has(10);
  @$pb.TagNumber(17)
  void clearDeviceSoftwareVersion() => $_clearField(17);

  /// The software version number running on the device
  /// (e.g., Authenticator app version code)
  @$pb.TagNumber(18)
  $fixnum.Int64 get deviceSoftwareVersionCode => $_getI64(11);
  @$pb.TagNumber(18)
  set deviceSoftwareVersionCode($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(18)
  $core.bool hasDeviceSoftwareVersionCode() => $_has(11);
  @$pb.TagNumber(18)
  void clearDeviceSoftwareVersionCode() => $_clearField(18);

  /// Software package information if applicable
  /// (e.g., com.google.android.apps.authenticator2)
  @$pb.TagNumber(19)
  $core.String get deviceSoftwarePackage => $_getSZ(12);
  @$pb.TagNumber(19)
  set deviceSoftwarePackage($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(19)
  $core.bool hasDeviceSoftwarePackage() => $_has(12);
  @$pb.TagNumber(19)
  void clearDeviceSoftwarePackage() => $_clearField(19);

  /// Size of the display in thousandths of an inch (e.g., 7000 mils = 7 in)
  @$pb.TagNumber(22)
  $core.int get deviceDisplayDiagonalMils => $_getIZ(13);
  @$pb.TagNumber(22)
  set deviceDisplayDiagonalMils($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(22)
  $core.bool hasDeviceDisplayDiagonalMils() => $_has(13);
  @$pb.TagNumber(22)
  void clearDeviceDisplayDiagonalMils() => $_clearField(22);

  /// For Authzen capable devices, their Authzen protocol version
  @$pb.TagNumber(24)
  $core.int get deviceAuthzenVersion => $_getIZ(14);
  @$pb.TagNumber(24)
  set deviceAuthzenVersion($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(24)
  $core.bool hasDeviceAuthzenVersion() => $_has(14);
  @$pb.TagNumber(24)
  void clearDeviceAuthzenVersion() => $_clearField(24);

  /// Not all devices have device identifiers that fit in 64 bits.
  @$pb.TagNumber(29)
  $core.List<$core.int> get longDeviceId => $_getN(15);
  @$pb.TagNumber(29)
  set longDeviceId($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(29)
  $core.bool hasLongDeviceId() => $_has(15);
  @$pb.TagNumber(29)
  void clearLongDeviceId() => $_clearField(29);

  /// The device manufacturer name
  /// (e.g., android.os.Build.MANUFACTURER)
  @$pb.TagNumber(31)
  $core.String get deviceManufacturer => $_getSZ(16);
  @$pb.TagNumber(31)
  set deviceManufacturer($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(31)
  $core.bool hasDeviceManufacturer() => $_has(16);
  @$pb.TagNumber(31)
  void clearDeviceManufacturer() => $_clearField(31);

  /// Used to indicate which type of device this is.
  @$pb.TagNumber(32)
  DeviceType get deviceType => $_getN(17);
  @$pb.TagNumber(32)
  set deviceType(DeviceType v) { $_setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasDeviceType() => $_has(17);
  @$pb.TagNumber(32)
  void clearDeviceType() => $_clearField(32);

  /// Used for device_address of DeviceInfo field 2, but for GCM capable devices.
  @$pb.TagNumber(102)
  $core.List<$core.int> get gcmRegistrationId => $_getN(18);
  @$pb.TagNumber(102)
  set gcmRegistrationId($core.List<$core.int> v) { $_setBytes(18, v); }
  @$pb.TagNumber(102)
  $core.bool hasGcmRegistrationId() => $_has(18);
  @$pb.TagNumber(102)
  void clearGcmRegistrationId() => $_clearField(102);

  /// SHA-256 hash of the device master key (from the key exchange).
  /// Differs from DeviceInfo field 3, which contains the actual master key.
  @$pb.TagNumber(103)
  $core.List<$core.int> get deviceMasterKeyHash => $_getN(19);
  @$pb.TagNumber(103)
  set deviceMasterKeyHash($core.List<$core.int> v) { $_setBytes(19, v); }
  @$pb.TagNumber(103)
  $core.bool hasDeviceMasterKeyHash() => $_has(19);
  @$pb.TagNumber(103)
  void clearDeviceMasterKeyHash() => $_clearField(103);

  /// Used for device_address of DeviceInfo field 2, but for iOS devices.
  @$pb.TagNumber(202)
  $core.List<$core.int> get apnRegistrationId => $_getN(20);
  @$pb.TagNumber(202)
  set apnRegistrationId($core.List<$core.int> v) { $_setBytes(20, v); }
  @$pb.TagNumber(202)
  $core.bool hasApnRegistrationId() => $_has(20);
  @$pb.TagNumber(202)
  void clearApnRegistrationId() => $_clearField(202);

  /// Does the user have notifications enabled for the given device address.
  @$pb.TagNumber(203)
  $core.bool get notificationEnabled => $_getB(21, true);
  @$pb.TagNumber(203)
  set notificationEnabled($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(203)
  $core.bool hasNotificationEnabled() => $_has(21);
  @$pb.TagNumber(203)
  void clearNotificationEnabled() => $_clearField(203);

  /// Used for device_address of DeviceInfo field 2, a Bluetooth Mac address for
  /// the device (e.g., to be used with EasyUnlock)
  @$pb.TagNumber(302)
  $core.String get bluetoothMacAddress => $_getSZ(22);
  @$pb.TagNumber(302)
  set bluetoothMacAddress($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(302)
  $core.bool hasBluetoothMacAddress() => $_has(22);
  @$pb.TagNumber(302)
  void clearBluetoothMacAddress() => $_clearField(302);

  /// Is this device using  a secure screenlock (e.g., pattern or pin unlock)
  @$pb.TagNumber(400)
  $core.bool get usingSecureScreenlock => $_getBF(23);
  @$pb.TagNumber(400)
  set usingSecureScreenlock($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(400)
  $core.bool hasUsingSecureScreenlock() => $_has(23);
  @$pb.TagNumber(400)
  void clearUsingSecureScreenlock() => $_clearField(400);

  /// Is auto-unlocking the screenlock (e.g., when at "home") supported?
  @$pb.TagNumber(401)
  $core.bool get autoUnlockScreenlockSupported => $_getBF(24);
  @$pb.TagNumber(401)
  set autoUnlockScreenlockSupported($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(401)
  $core.bool hasAutoUnlockScreenlockSupported() => $_has(24);
  @$pb.TagNumber(401)
  void clearAutoUnlockScreenlockSupported() => $_clearField(401);

  /// Is auto-unlocking the screenlock (e.g., when at "home") enabled?
  @$pb.TagNumber(402)
  $core.bool get autoUnlockScreenlockEnabled => $_getBF(25);
  @$pb.TagNumber(402)
  set autoUnlockScreenlockEnabled($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(402)
  $core.bool hasAutoUnlockScreenlockEnabled() => $_has(25);
  @$pb.TagNumber(402)
  void clearAutoUnlockScreenlockEnabled() => $_clearField(402);

  /// Does the device have a Bluetooth (classic) radio?
  @$pb.TagNumber(403)
  $core.bool get bluetoothRadioSupported => $_getBF(26);
  @$pb.TagNumber(403)
  set bluetoothRadioSupported($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(403)
  $core.bool hasBluetoothRadioSupported() => $_has(26);
  @$pb.TagNumber(403)
  void clearBluetoothRadioSupported() => $_clearField(403);

  /// Is the Bluetooth (classic) radio on?
  @$pb.TagNumber(404)
  $core.bool get bluetoothRadioEnabled => $_getBF(27);
  @$pb.TagNumber(404)
  set bluetoothRadioEnabled($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(404)
  $core.bool hasBluetoothRadioEnabled() => $_has(27);
  @$pb.TagNumber(404)
  void clearBluetoothRadioEnabled() => $_clearField(404);

  /// Does the device hardware support a mobile data connection?
  @$pb.TagNumber(405)
  $core.bool get mobileDataSupported => $_getBF(28);
  @$pb.TagNumber(405)
  set mobileDataSupported($core.bool v) { $_setBool(28, v); }
  @$pb.TagNumber(405)
  $core.bool hasMobileDataSupported() => $_has(28);
  @$pb.TagNumber(405)
  void clearMobileDataSupported() => $_clearField(405);

  /// Does the device support tethering?
  @$pb.TagNumber(406)
  $core.bool get tetheringSupported => $_getBF(29);
  @$pb.TagNumber(406)
  set tetheringSupported($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(406)
  $core.bool hasTetheringSupported() => $_has(29);
  @$pb.TagNumber(406)
  void clearTetheringSupported() => $_clearField(406);

  /// Does the device have a BLE radio?
  @$pb.TagNumber(407)
  $core.bool get bleRadioSupported => $_getBF(30);
  @$pb.TagNumber(407)
  set bleRadioSupported($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(407)
  $core.bool hasBleRadioSupported() => $_has(30);
  @$pb.TagNumber(407)
  void clearBleRadioSupported() => $_clearField(407);

  /// Is the device a "Pixel Experience" Android device?
  @$pb.TagNumber(408)
  $core.bool get pixelExperience => $_getBF(31);
  @$pb.TagNumber(408)
  set pixelExperience($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(408)
  $core.bool hasPixelExperience() => $_has(31);
  @$pb.TagNumber(408)
  void clearPixelExperience() => $_clearField(408);

  /// Is the device running in the ARC++ container on a chromebook?
  @$pb.TagNumber(409)
  $core.bool get arcPlusPlus => $_getBF(32);
  @$pb.TagNumber(409)
  set arcPlusPlus($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(409)
  $core.bool hasArcPlusPlus() => $_has(32);
  @$pb.TagNumber(409)
  void clearArcPlusPlus() => $_clearField(409);

  /// Is the value set in |using_secure_screenlock| reliable? On some Android
  /// devices, the platform API to get the screenlock state is not trustworthy.
  /// See b/32212161.
  @$pb.TagNumber(410)
  $core.bool get isScreenlockStateFlaky => $_getBF(33);
  @$pb.TagNumber(410)
  set isScreenlockStateFlaky($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(410)
  $core.bool hasIsScreenlockStateFlaky() => $_has(33);
  @$pb.TagNumber(410)
  void clearIsScreenlockStateFlaky() => $_clearField(410);

  /// A list of multi-device software features supported by the device.
  @$pb.TagNumber(411)
  $pb.PbList<SoftwareFeature> get supportedSoftwareFeatures => $_getList(34);

  /// A list of multi-device software features currently enabled (active) on the
  /// device.
  @$pb.TagNumber(412)
  $pb.PbList<SoftwareFeature> get enabledSoftwareFeatures => $_getList(35);

  /// The enrollment session id this is sent with
  @$pb.TagNumber(1000)
  $core.List<$core.int> get enrollmentSessionId => $_getN(36);
  @$pb.TagNumber(1000)
  set enrollmentSessionId($core.List<$core.int> v) { $_setBytes(36, v); }
  @$pb.TagNumber(1000)
  $core.bool hasEnrollmentSessionId() => $_has(36);
  @$pb.TagNumber(1000)
  void clearEnrollmentSessionId() => $_clearField(1000);

  /// A copy of the user's OAuth token
  @$pb.TagNumber(1001)
  $core.String get oauthToken => $_getSZ(37);
  @$pb.TagNumber(1001)
  set oauthToken($core.String v) { $_setString(37, v); }
  @$pb.TagNumber(1001)
  $core.bool hasOauthToken() => $_has(37);
  @$pb.TagNumber(1001)
  void clearOauthToken() => $_clearField(1001);
}

class GcmMetadata extends $pb.GeneratedMessage {
  factory GcmMetadata({
    Type? type,
    $core.int? version,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  GcmMetadata._() : super();
  factory GcmMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GcmMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GcmMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..e<Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: Type.ENROLLMENT, valueOf: Type.valueOf, enumValues: Type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GcmMetadata clone() => GcmMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GcmMetadata copyWith(void Function(GcmMetadata) updates) => super.copyWith((message) => updates(message as GcmMetadata)) as GcmMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GcmMetadata create() => GcmMetadata._();
  GcmMetadata createEmptyInstance() => create();
  static $pb.PbList<GcmMetadata> createRepeated() => $pb.PbList<GcmMetadata>();
  @$core.pragma('dart2js:noInline')
  static GcmMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GcmMetadata>(create);
  static GcmMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Type v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

class Tickle extends $pb.GeneratedMessage {
  factory Tickle({
    $fixnum.Int64? expiryTime,
  }) {
    final $result = create();
    if (expiryTime != null) {
      $result.expiryTime = expiryTime;
    }
    return $result;
  }
  Tickle._() : super();
  factory Tickle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tickle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Tickle', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'expiryTime', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tickle clone() => Tickle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tickle copyWith(void Function(Tickle) updates) => super.copyWith((message) => updates(message as Tickle)) as Tickle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Tickle create() => Tickle._();
  Tickle createEmptyInstance() => create();
  static $pb.PbList<Tickle> createRepeated() => $pb.PbList<Tickle>();
  @$core.pragma('dart2js:noInline')
  static Tickle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tickle>(create);
  static Tickle? _defaultInstance;

  /// Time after which this tickle should expire
  @$pb.TagNumber(1)
  $fixnum.Int64 get expiryTime => $_getI64(0);
  @$pb.TagNumber(1)
  set expiryTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpiryTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpiryTime() => $_clearField(1);
}

class LoginNotificationInfo extends $pb.GeneratedMessage {
  factory LoginNotificationInfo({
    $fixnum.Int64? creationTime,
    $core.String? email,
    $core.String? host,
    $core.String? source,
    $core.String? eventType,
  }) {
    final $result = create();
    if (creationTime != null) {
      $result.creationTime = creationTime;
    }
    if (email != null) {
      $result.email = email;
    }
    if (host != null) {
      $result.host = host;
    }
    if (source != null) {
      $result.source = source;
    }
    if (eventType != null) {
      $result.eventType = eventType;
    }
    return $result;
  }
  LoginNotificationInfo._() : super();
  factory LoginNotificationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginNotificationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginNotificationInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'creationTime', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'host')
    ..aOS(5, _omitFieldNames ? '' : 'source')
    ..aOS(6, _omitFieldNames ? '' : 'eventType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginNotificationInfo clone() => LoginNotificationInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginNotificationInfo copyWith(void Function(LoginNotificationInfo) updates) => super.copyWith((message) => updates(message as LoginNotificationInfo)) as LoginNotificationInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginNotificationInfo create() => LoginNotificationInfo._();
  LoginNotificationInfo createEmptyInstance() => create();
  static $pb.PbList<LoginNotificationInfo> createRepeated() => $pb.PbList<LoginNotificationInfo>();
  @$core.pragma('dart2js:noInline')
  static LoginNotificationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginNotificationInfo>(create);
  static LoginNotificationInfo? _defaultInstance;

  /// Time at which the server received the login notification request.
  @$pb.TagNumber(2)
  $fixnum.Int64 get creationTime => $_getI64(0);
  @$pb.TagNumber(2)
  set creationTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreationTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearCreationTime() => $_clearField(2);

  /// Must correspond to user_id in LoginNotificationRequest, if set.
  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);

  /// Host where the user's credentials were used to login, if meaningful.
  @$pb.TagNumber(4)
  $core.String get host => $_getSZ(2);
  @$pb.TagNumber(4)
  set host($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasHost() => $_has(2);
  @$pb.TagNumber(4)
  void clearHost() => $_clearField(4);

  /// Location from where the user's credentials were used, if meaningful.
  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(5)
  void clearSource() => $_clearField(5);

  /// Type of login, e.g. ssh, gnome-screensaver, or web.
  @$pb.TagNumber(6)
  $core.String get eventType => $_getSZ(4);
  @$pb.TagNumber(6)
  set eventType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventType() => $_has(4);
  @$pb.TagNumber(6)
  void clearEventType() => $_clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
