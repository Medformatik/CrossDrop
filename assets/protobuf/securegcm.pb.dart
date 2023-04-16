///
//  Generated code. Do not modify.
//  source: securegcm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'securegcm.pbenum.dart';

export 'securegcm.pbenum.dart';

class GcmDeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GcmDeviceInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'androidDeviceId', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPublicKey', $pb.PbFieldType.QY)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceModel')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locale')
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyHandle', $pb.PbFieldType.OY)
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'counter')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceOsVersion')
    ..aInt64(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceOsVersionCode')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceOsRelease')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceOsCodename')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceSoftwareVersion')
    ..aInt64(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceSoftwareVersionCode')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceSoftwarePackage')
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceDisplayDiagonalMils', $pb.PbFieldType.O3)
    ..a<$core.int>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceAuthzenVersion', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longDeviceId', $pb.PbFieldType.OY)
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceManufacturer')
    ..e<DeviceType>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceType', $pb.PbFieldType.OE, defaultOrMaker: DeviceType.ANDROID, valueOf: DeviceType.valueOf, enumValues: DeviceType.values)
    ..a<$core.List<$core.int>>(102, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gcmRegistrationId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(103, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceMasterKeyHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(202, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apnRegistrationId', $pb.PbFieldType.OY)
    ..a<$core.bool>(203, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationEnabled', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..aOS(302, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bluetoothMacAddress')
    ..aOB(400, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usingSecureScreenlock')
    ..aOB(401, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoUnlockScreenlockSupported')
    ..aOB(402, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoUnlockScreenlockEnabled')
    ..aOB(403, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bluetoothRadioSupported')
    ..aOB(404, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bluetoothRadioEnabled')
    ..aOB(405, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobileDataSupported')
    ..aOB(406, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tetheringSupported')
    ..aOB(407, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bleRadioSupported')
    ..aOB(408, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pixelExperience')
    ..aOB(409, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arcPlusPlus')
    ..aOB(410, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isScreenlockStateFlaky')
    ..pc<SoftwareFeature>(411, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportedSoftwareFeatures', $pb.PbFieldType.PE, valueOf: SoftwareFeature.valueOf, enumValues: SoftwareFeature.values, defaultEnumValue: SoftwareFeature.UNKNOWN_FEATURE)
    ..pc<SoftwareFeature>(412, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabledSoftwareFeatures', $pb.PbFieldType.PE, valueOf: SoftwareFeature.valueOf, enumValues: SoftwareFeature.values, defaultEnumValue: SoftwareFeature.UNKNOWN_FEATURE)
    ..a<$core.List<$core.int>>(1000, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enrollmentSessionId', $pb.PbFieldType.OY)
    ..aOS(1001, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oauthToken')
  ;

  GcmDeviceInfo._() : super();
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
    final _result = create();
    if (androidDeviceId != null) {
      _result.androidDeviceId = androidDeviceId;
    }
    if (userPublicKey != null) {
      _result.userPublicKey = userPublicKey;
    }
    if (deviceModel != null) {
      _result.deviceModel = deviceModel;
    }
    if (locale != null) {
      _result.locale = locale;
    }
    if (keyHandle != null) {
      _result.keyHandle = keyHandle;
    }
    if (counter != null) {
      _result.counter = counter;
    }
    if (deviceOsVersion != null) {
      _result.deviceOsVersion = deviceOsVersion;
    }
    if (deviceOsVersionCode != null) {
      _result.deviceOsVersionCode = deviceOsVersionCode;
    }
    if (deviceOsRelease != null) {
      _result.deviceOsRelease = deviceOsRelease;
    }
    if (deviceOsCodename != null) {
      _result.deviceOsCodename = deviceOsCodename;
    }
    if (deviceSoftwareVersion != null) {
      _result.deviceSoftwareVersion = deviceSoftwareVersion;
    }
    if (deviceSoftwareVersionCode != null) {
      _result.deviceSoftwareVersionCode = deviceSoftwareVersionCode;
    }
    if (deviceSoftwarePackage != null) {
      _result.deviceSoftwarePackage = deviceSoftwarePackage;
    }
    if (deviceDisplayDiagonalMils != null) {
      _result.deviceDisplayDiagonalMils = deviceDisplayDiagonalMils;
    }
    if (deviceAuthzenVersion != null) {
      _result.deviceAuthzenVersion = deviceAuthzenVersion;
    }
    if (longDeviceId != null) {
      _result.longDeviceId = longDeviceId;
    }
    if (deviceManufacturer != null) {
      _result.deviceManufacturer = deviceManufacturer;
    }
    if (deviceType != null) {
      _result.deviceType = deviceType;
    }
    if (gcmRegistrationId != null) {
      _result.gcmRegistrationId = gcmRegistrationId;
    }
    if (deviceMasterKeyHash != null) {
      _result.deviceMasterKeyHash = deviceMasterKeyHash;
    }
    if (apnRegistrationId != null) {
      _result.apnRegistrationId = apnRegistrationId;
    }
    if (notificationEnabled != null) {
      _result.notificationEnabled = notificationEnabled;
    }
    if (bluetoothMacAddress != null) {
      _result.bluetoothMacAddress = bluetoothMacAddress;
    }
    if (usingSecureScreenlock != null) {
      _result.usingSecureScreenlock = usingSecureScreenlock;
    }
    if (autoUnlockScreenlockSupported != null) {
      _result.autoUnlockScreenlockSupported = autoUnlockScreenlockSupported;
    }
    if (autoUnlockScreenlockEnabled != null) {
      _result.autoUnlockScreenlockEnabled = autoUnlockScreenlockEnabled;
    }
    if (bluetoothRadioSupported != null) {
      _result.bluetoothRadioSupported = bluetoothRadioSupported;
    }
    if (bluetoothRadioEnabled != null) {
      _result.bluetoothRadioEnabled = bluetoothRadioEnabled;
    }
    if (mobileDataSupported != null) {
      _result.mobileDataSupported = mobileDataSupported;
    }
    if (tetheringSupported != null) {
      _result.tetheringSupported = tetheringSupported;
    }
    if (bleRadioSupported != null) {
      _result.bleRadioSupported = bleRadioSupported;
    }
    if (pixelExperience != null) {
      _result.pixelExperience = pixelExperience;
    }
    if (arcPlusPlus != null) {
      _result.arcPlusPlus = arcPlusPlus;
    }
    if (isScreenlockStateFlaky != null) {
      _result.isScreenlockStateFlaky = isScreenlockStateFlaky;
    }
    if (supportedSoftwareFeatures != null) {
      _result.supportedSoftwareFeatures.addAll(supportedSoftwareFeatures);
    }
    if (enabledSoftwareFeatures != null) {
      _result.enabledSoftwareFeatures.addAll(enabledSoftwareFeatures);
    }
    if (enrollmentSessionId != null) {
      _result.enrollmentSessionId = enrollmentSessionId;
    }
    if (oauthToken != null) {
      _result.oauthToken = oauthToken;
    }
    return _result;
  }
  factory GcmDeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GcmDeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GcmDeviceInfo clone() => GcmDeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GcmDeviceInfo copyWith(void Function(GcmDeviceInfo) updates) => super.copyWith((message) => updates(message as GcmDeviceInfo)) as GcmDeviceInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GcmDeviceInfo create() => GcmDeviceInfo._();
  GcmDeviceInfo createEmptyInstance() => create();
  static $pb.PbList<GcmDeviceInfo> createRepeated() => $pb.PbList<GcmDeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static GcmDeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GcmDeviceInfo>(create);
  static GcmDeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get androidDeviceId => $_getI64(0);
  @$pb.TagNumber(1)
  set androidDeviceId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAndroidDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAndroidDeviceId() => clearField(1);

  @$pb.TagNumber(4)
  $core.List<$core.int> get userPublicKey => $_getN(1);
  @$pb.TagNumber(4)
  set userPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserPublicKey() => $_has(1);
  @$pb.TagNumber(4)
  void clearUserPublicKey() => clearField(4);

  @$pb.TagNumber(7)
  $core.String get deviceModel => $_getSZ(2);
  @$pb.TagNumber(7)
  set deviceModel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviceModel() => $_has(2);
  @$pb.TagNumber(7)
  void clearDeviceModel() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get locale => $_getSZ(3);
  @$pb.TagNumber(8)
  set locale($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(8)
  $core.bool hasLocale() => $_has(3);
  @$pb.TagNumber(8)
  void clearLocale() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get keyHandle => $_getN(4);
  @$pb.TagNumber(9)
  set keyHandle($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(9)
  $core.bool hasKeyHandle() => $_has(4);
  @$pb.TagNumber(9)
  void clearKeyHandle() => clearField(9);

  @$pb.TagNumber(12)
  $fixnum.Int64 get counter => $_getI64(5);
  @$pb.TagNumber(12)
  set counter($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(12)
  $core.bool hasCounter() => $_has(5);
  @$pb.TagNumber(12)
  void clearCounter() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get deviceOsVersion => $_getSZ(6);
  @$pb.TagNumber(13)
  set deviceOsVersion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(13)
  $core.bool hasDeviceOsVersion() => $_has(6);
  @$pb.TagNumber(13)
  void clearDeviceOsVersion() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get deviceOsVersionCode => $_getI64(7);
  @$pb.TagNumber(14)
  set deviceOsVersionCode($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(14)
  $core.bool hasDeviceOsVersionCode() => $_has(7);
  @$pb.TagNumber(14)
  void clearDeviceOsVersionCode() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get deviceOsRelease => $_getSZ(8);
  @$pb.TagNumber(15)
  set deviceOsRelease($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeviceOsRelease() => $_has(8);
  @$pb.TagNumber(15)
  void clearDeviceOsRelease() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get deviceOsCodename => $_getSZ(9);
  @$pb.TagNumber(16)
  set deviceOsCodename($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(16)
  $core.bool hasDeviceOsCodename() => $_has(9);
  @$pb.TagNumber(16)
  void clearDeviceOsCodename() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get deviceSoftwareVersion => $_getSZ(10);
  @$pb.TagNumber(17)
  set deviceSoftwareVersion($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(17)
  $core.bool hasDeviceSoftwareVersion() => $_has(10);
  @$pb.TagNumber(17)
  void clearDeviceSoftwareVersion() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get deviceSoftwareVersionCode => $_getI64(11);
  @$pb.TagNumber(18)
  set deviceSoftwareVersionCode($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(18)
  $core.bool hasDeviceSoftwareVersionCode() => $_has(11);
  @$pb.TagNumber(18)
  void clearDeviceSoftwareVersionCode() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get deviceSoftwarePackage => $_getSZ(12);
  @$pb.TagNumber(19)
  set deviceSoftwarePackage($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(19)
  $core.bool hasDeviceSoftwarePackage() => $_has(12);
  @$pb.TagNumber(19)
  void clearDeviceSoftwarePackage() => clearField(19);

  @$pb.TagNumber(22)
  $core.int get deviceDisplayDiagonalMils => $_getIZ(13);
  @$pb.TagNumber(22)
  set deviceDisplayDiagonalMils($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(22)
  $core.bool hasDeviceDisplayDiagonalMils() => $_has(13);
  @$pb.TagNumber(22)
  void clearDeviceDisplayDiagonalMils() => clearField(22);

  @$pb.TagNumber(24)
  $core.int get deviceAuthzenVersion => $_getIZ(14);
  @$pb.TagNumber(24)
  set deviceAuthzenVersion($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(24)
  $core.bool hasDeviceAuthzenVersion() => $_has(14);
  @$pb.TagNumber(24)
  void clearDeviceAuthzenVersion() => clearField(24);

  @$pb.TagNumber(29)
  $core.List<$core.int> get longDeviceId => $_getN(15);
  @$pb.TagNumber(29)
  set longDeviceId($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(29)
  $core.bool hasLongDeviceId() => $_has(15);
  @$pb.TagNumber(29)
  void clearLongDeviceId() => clearField(29);

  @$pb.TagNumber(31)
  $core.String get deviceManufacturer => $_getSZ(16);
  @$pb.TagNumber(31)
  set deviceManufacturer($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(31)
  $core.bool hasDeviceManufacturer() => $_has(16);
  @$pb.TagNumber(31)
  void clearDeviceManufacturer() => clearField(31);

  @$pb.TagNumber(32)
  DeviceType get deviceType => $_getN(17);
  @$pb.TagNumber(32)
  set deviceType(DeviceType v) { setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasDeviceType() => $_has(17);
  @$pb.TagNumber(32)
  void clearDeviceType() => clearField(32);

  @$pb.TagNumber(102)
  $core.List<$core.int> get gcmRegistrationId => $_getN(18);
  @$pb.TagNumber(102)
  set gcmRegistrationId($core.List<$core.int> v) { $_setBytes(18, v); }
  @$pb.TagNumber(102)
  $core.bool hasGcmRegistrationId() => $_has(18);
  @$pb.TagNumber(102)
  void clearGcmRegistrationId() => clearField(102);

  @$pb.TagNumber(103)
  $core.List<$core.int> get deviceMasterKeyHash => $_getN(19);
  @$pb.TagNumber(103)
  set deviceMasterKeyHash($core.List<$core.int> v) { $_setBytes(19, v); }
  @$pb.TagNumber(103)
  $core.bool hasDeviceMasterKeyHash() => $_has(19);
  @$pb.TagNumber(103)
  void clearDeviceMasterKeyHash() => clearField(103);

  @$pb.TagNumber(202)
  $core.List<$core.int> get apnRegistrationId => $_getN(20);
  @$pb.TagNumber(202)
  set apnRegistrationId($core.List<$core.int> v) { $_setBytes(20, v); }
  @$pb.TagNumber(202)
  $core.bool hasApnRegistrationId() => $_has(20);
  @$pb.TagNumber(202)
  void clearApnRegistrationId() => clearField(202);

  @$pb.TagNumber(203)
  $core.bool get notificationEnabled => $_getB(21, true);
  @$pb.TagNumber(203)
  set notificationEnabled($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(203)
  $core.bool hasNotificationEnabled() => $_has(21);
  @$pb.TagNumber(203)
  void clearNotificationEnabled() => clearField(203);

  @$pb.TagNumber(302)
  $core.String get bluetoothMacAddress => $_getSZ(22);
  @$pb.TagNumber(302)
  set bluetoothMacAddress($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(302)
  $core.bool hasBluetoothMacAddress() => $_has(22);
  @$pb.TagNumber(302)
  void clearBluetoothMacAddress() => clearField(302);

  @$pb.TagNumber(400)
  $core.bool get usingSecureScreenlock => $_getBF(23);
  @$pb.TagNumber(400)
  set usingSecureScreenlock($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(400)
  $core.bool hasUsingSecureScreenlock() => $_has(23);
  @$pb.TagNumber(400)
  void clearUsingSecureScreenlock() => clearField(400);

  @$pb.TagNumber(401)
  $core.bool get autoUnlockScreenlockSupported => $_getBF(24);
  @$pb.TagNumber(401)
  set autoUnlockScreenlockSupported($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(401)
  $core.bool hasAutoUnlockScreenlockSupported() => $_has(24);
  @$pb.TagNumber(401)
  void clearAutoUnlockScreenlockSupported() => clearField(401);

  @$pb.TagNumber(402)
  $core.bool get autoUnlockScreenlockEnabled => $_getBF(25);
  @$pb.TagNumber(402)
  set autoUnlockScreenlockEnabled($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(402)
  $core.bool hasAutoUnlockScreenlockEnabled() => $_has(25);
  @$pb.TagNumber(402)
  void clearAutoUnlockScreenlockEnabled() => clearField(402);

  @$pb.TagNumber(403)
  $core.bool get bluetoothRadioSupported => $_getBF(26);
  @$pb.TagNumber(403)
  set bluetoothRadioSupported($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(403)
  $core.bool hasBluetoothRadioSupported() => $_has(26);
  @$pb.TagNumber(403)
  void clearBluetoothRadioSupported() => clearField(403);

  @$pb.TagNumber(404)
  $core.bool get bluetoothRadioEnabled => $_getBF(27);
  @$pb.TagNumber(404)
  set bluetoothRadioEnabled($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(404)
  $core.bool hasBluetoothRadioEnabled() => $_has(27);
  @$pb.TagNumber(404)
  void clearBluetoothRadioEnabled() => clearField(404);

  @$pb.TagNumber(405)
  $core.bool get mobileDataSupported => $_getBF(28);
  @$pb.TagNumber(405)
  set mobileDataSupported($core.bool v) { $_setBool(28, v); }
  @$pb.TagNumber(405)
  $core.bool hasMobileDataSupported() => $_has(28);
  @$pb.TagNumber(405)
  void clearMobileDataSupported() => clearField(405);

  @$pb.TagNumber(406)
  $core.bool get tetheringSupported => $_getBF(29);
  @$pb.TagNumber(406)
  set tetheringSupported($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(406)
  $core.bool hasTetheringSupported() => $_has(29);
  @$pb.TagNumber(406)
  void clearTetheringSupported() => clearField(406);

  @$pb.TagNumber(407)
  $core.bool get bleRadioSupported => $_getBF(30);
  @$pb.TagNumber(407)
  set bleRadioSupported($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(407)
  $core.bool hasBleRadioSupported() => $_has(30);
  @$pb.TagNumber(407)
  void clearBleRadioSupported() => clearField(407);

  @$pb.TagNumber(408)
  $core.bool get pixelExperience => $_getBF(31);
  @$pb.TagNumber(408)
  set pixelExperience($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(408)
  $core.bool hasPixelExperience() => $_has(31);
  @$pb.TagNumber(408)
  void clearPixelExperience() => clearField(408);

  @$pb.TagNumber(409)
  $core.bool get arcPlusPlus => $_getBF(32);
  @$pb.TagNumber(409)
  set arcPlusPlus($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(409)
  $core.bool hasArcPlusPlus() => $_has(32);
  @$pb.TagNumber(409)
  void clearArcPlusPlus() => clearField(409);

  @$pb.TagNumber(410)
  $core.bool get isScreenlockStateFlaky => $_getBF(33);
  @$pb.TagNumber(410)
  set isScreenlockStateFlaky($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(410)
  $core.bool hasIsScreenlockStateFlaky() => $_has(33);
  @$pb.TagNumber(410)
  void clearIsScreenlockStateFlaky() => clearField(410);

  @$pb.TagNumber(411)
  $core.List<SoftwareFeature> get supportedSoftwareFeatures => $_getList(34);

  @$pb.TagNumber(412)
  $core.List<SoftwareFeature> get enabledSoftwareFeatures => $_getList(35);

  @$pb.TagNumber(1000)
  $core.List<$core.int> get enrollmentSessionId => $_getN(36);
  @$pb.TagNumber(1000)
  set enrollmentSessionId($core.List<$core.int> v) { $_setBytes(36, v); }
  @$pb.TagNumber(1000)
  $core.bool hasEnrollmentSessionId() => $_has(36);
  @$pb.TagNumber(1000)
  void clearEnrollmentSessionId() => clearField(1000);

  @$pb.TagNumber(1001)
  $core.String get oauthToken => $_getSZ(37);
  @$pb.TagNumber(1001)
  set oauthToken($core.String v) { $_setString(37, v); }
  @$pb.TagNumber(1001)
  $core.bool hasOauthToken() => $_has(37);
  @$pb.TagNumber(1001)
  void clearOauthToken() => clearField(1001);
}

class GcmMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GcmMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securegcm'), createEmptyInstance: create)
    ..e<Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: Type.ENROLLMENT, valueOf: Type.valueOf, enumValues: Type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
  ;

  GcmMetadata._() : super();
  factory GcmMetadata({
    Type? type,
    $core.int? version,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory GcmMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GcmMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GcmMetadata clone() => GcmMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GcmMetadata copyWith(void Function(GcmMetadata) updates) => super.copyWith((message) => updates(message as GcmMetadata)) as GcmMetadata; // ignore: deprecated_member_use
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
  set type(Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class Tickle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Tickle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryTime', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Tickle._() : super();
  factory Tickle({
    $fixnum.Int64? expiryTime,
  }) {
    final _result = create();
    if (expiryTime != null) {
      _result.expiryTime = expiryTime;
    }
    return _result;
  }
  factory Tickle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tickle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tickle clone() => Tickle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tickle copyWith(void Function(Tickle) updates) => super.copyWith((message) => updates(message as Tickle)) as Tickle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tickle create() => Tickle._();
  Tickle createEmptyInstance() => create();
  static $pb.PbList<Tickle> createRepeated() => $pb.PbList<Tickle>();
  @$core.pragma('dart2js:noInline')
  static Tickle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tickle>(create);
  static Tickle? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get expiryTime => $_getI64(0);
  @$pb.TagNumber(1)
  set expiryTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpiryTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpiryTime() => clearField(1);
}

class LoginNotificationInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginNotificationInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creationTime', $pb.PbFieldType.OF6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'host')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType')
    ..hasRequiredFields = false
  ;

  LoginNotificationInfo._() : super();
  factory LoginNotificationInfo({
    $fixnum.Int64? creationTime,
    $core.String? email,
    $core.String? host,
    $core.String? source,
    $core.String? eventType,
  }) {
    final _result = create();
    if (creationTime != null) {
      _result.creationTime = creationTime;
    }
    if (email != null) {
      _result.email = email;
    }
    if (host != null) {
      _result.host = host;
    }
    if (source != null) {
      _result.source = source;
    }
    if (eventType != null) {
      _result.eventType = eventType;
    }
    return _result;
  }
  factory LoginNotificationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginNotificationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginNotificationInfo clone() => LoginNotificationInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginNotificationInfo copyWith(void Function(LoginNotificationInfo) updates) => super.copyWith((message) => updates(message as LoginNotificationInfo)) as LoginNotificationInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginNotificationInfo create() => LoginNotificationInfo._();
  LoginNotificationInfo createEmptyInstance() => create();
  static $pb.PbList<LoginNotificationInfo> createRepeated() => $pb.PbList<LoginNotificationInfo>();
  @$core.pragma('dart2js:noInline')
  static LoginNotificationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginNotificationInfo>(create);
  static LoginNotificationInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get creationTime => $_getI64(0);
  @$pb.TagNumber(2)
  set creationTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreationTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearCreationTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get host => $_getSZ(2);
  @$pb.TagNumber(4)
  set host($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasHost() => $_has(2);
  @$pb.TagNumber(4)
  void clearHost() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get source => $_getSZ(3);
  @$pb.TagNumber(5)
  set source($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(5)
  void clearSource() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get eventType => $_getSZ(4);
  @$pb.TagNumber(6)
  set eventType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventType() => $_has(4);
  @$pb.TagNumber(6)
  void clearEventType() => clearField(6);
}

