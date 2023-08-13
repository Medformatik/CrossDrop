//
//  Generated code. Do not modify.
//  source: device_to_device_messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'device_to_device_messages.pbenum.dart';
import 'securemessage.pb.dart' as $0;

export 'device_to_device_messages.pbenum.dart';

class DeviceToDeviceMessage extends $pb.GeneratedMessage {
  factory DeviceToDeviceMessage() => create();
  DeviceToDeviceMessage._() : super();
  factory DeviceToDeviceMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceToDeviceMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceToDeviceMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'message', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sequenceNumber', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceToDeviceMessage clone() => DeviceToDeviceMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceToDeviceMessage copyWith(void Function(DeviceToDeviceMessage) updates) => super.copyWith((message) => updates(message as DeviceToDeviceMessage)) as DeviceToDeviceMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceToDeviceMessage create() => DeviceToDeviceMessage._();
  DeviceToDeviceMessage createEmptyInstance() => create();
  static $pb.PbList<DeviceToDeviceMessage> createRepeated() => $pb.PbList<DeviceToDeviceMessage>();
  @$core.pragma('dart2js:noInline')
  static DeviceToDeviceMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceToDeviceMessage>(create);
  static DeviceToDeviceMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get message => $_getN(0);
  @$pb.TagNumber(1)
  set message($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sequenceNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set sequenceNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequenceNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequenceNumber() => clearField(2);
}

class InitiatorHello extends $pb.GeneratedMessage {
  factory InitiatorHello() => create();
  InitiatorHello._() : super();
  factory InitiatorHello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiatorHello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitiatorHello', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..aOM<$0.GenericPublicKey>(1, _omitFieldNames ? '' : 'publicDhKey', subBuilder: $0.GenericPublicKey.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'protocolVersion', $pb.PbFieldType.O3)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiatorHello clone() => InitiatorHello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiatorHello copyWith(void Function(InitiatorHello) updates) => super.copyWith((message) => updates(message as InitiatorHello)) as InitiatorHello;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitiatorHello create() => InitiatorHello._();
  InitiatorHello createEmptyInstance() => create();
  static $pb.PbList<InitiatorHello> createRepeated() => $pb.PbList<InitiatorHello>();
  @$core.pragma('dart2js:noInline')
  static InitiatorHello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiatorHello>(create);
  static InitiatorHello? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GenericPublicKey get publicDhKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicDhKey($0.GenericPublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicDhKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicDhKey() => clearField(1);
  @$pb.TagNumber(1)
  $0.GenericPublicKey ensurePublicDhKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get protocolVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocolVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolVersion() => clearField(2);
}

class ResponderHello extends $pb.GeneratedMessage {
  factory ResponderHello() => create();
  ResponderHello._() : super();
  factory ResponderHello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponderHello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResponderHello', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..aOM<$0.GenericPublicKey>(1, _omitFieldNames ? '' : 'publicDhKey', subBuilder: $0.GenericPublicKey.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'protocolVersion', $pb.PbFieldType.O3)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponderHello clone() => ResponderHello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponderHello copyWith(void Function(ResponderHello) updates) => super.copyWith((message) => updates(message as ResponderHello)) as ResponderHello;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponderHello create() => ResponderHello._();
  ResponderHello createEmptyInstance() => create();
  static $pb.PbList<ResponderHello> createRepeated() => $pb.PbList<ResponderHello>();
  @$core.pragma('dart2js:noInline')
  static ResponderHello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponderHello>(create);
  static ResponderHello? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GenericPublicKey get publicDhKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicDhKey($0.GenericPublicKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicDhKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicDhKey() => clearField(1);
  @$pb.TagNumber(1)
  $0.GenericPublicKey ensurePublicDhKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get protocolVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocolVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolVersion() => clearField(2);
}

class EcPoint extends $pb.GeneratedMessage {
  factory EcPoint() => create();
  EcPoint._() : super();
  factory EcPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EcPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..e<Curve>(1, _omitFieldNames ? '' : 'curve', $pb.PbFieldType.QE, defaultOrMaker: Curve.ED_25519, valueOf: Curve.valueOf, enumValues: Curve.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'x', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'y', $pb.PbFieldType.QY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EcPoint clone() => EcPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EcPoint copyWith(void Function(EcPoint) updates) => super.copyWith((message) => updates(message as EcPoint)) as EcPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EcPoint create() => EcPoint._();
  EcPoint createEmptyInstance() => create();
  static $pb.PbList<EcPoint> createRepeated() => $pb.PbList<EcPoint>();
  @$core.pragma('dart2js:noInline')
  static EcPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcPoint>(create);
  static EcPoint? _defaultInstance;

  @$pb.TagNumber(1)
  Curve get curve => $_getN(0);
  @$pb.TagNumber(1)
  set curve(Curve v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurve() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurve() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get x => $_getN(1);
  @$pb.TagNumber(2)
  set x($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get y => $_getN(2);
  @$pb.TagNumber(3)
  set y($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => clearField(3);
}

class SpakeHandshakeMessage extends $pb.GeneratedMessage {
  factory SpakeHandshakeMessage() => create();
  SpakeHandshakeMessage._() : super();
  factory SpakeHandshakeMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpakeHandshakeMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpakeHandshakeMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'flowNumber', $pb.PbFieldType.O3)
    ..aOM<EcPoint>(2, _omitFieldNames ? '' : 'ecPoint', subBuilder: EcPoint.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'hashValue', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'payload', $pb.PbFieldType.OY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpakeHandshakeMessage clone() => SpakeHandshakeMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpakeHandshakeMessage copyWith(void Function(SpakeHandshakeMessage) updates) => super.copyWith((message) => updates(message as SpakeHandshakeMessage)) as SpakeHandshakeMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpakeHandshakeMessage create() => SpakeHandshakeMessage._();
  SpakeHandshakeMessage createEmptyInstance() => create();
  static $pb.PbList<SpakeHandshakeMessage> createRepeated() => $pb.PbList<SpakeHandshakeMessage>();
  @$core.pragma('dart2js:noInline')
  static SpakeHandshakeMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpakeHandshakeMessage>(create);
  static SpakeHandshakeMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get flowNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set flowNumber($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlowNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlowNumber() => clearField(1);

  @$pb.TagNumber(2)
  EcPoint get ecPoint => $_getN(1);
  @$pb.TagNumber(2)
  set ecPoint(EcPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEcPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearEcPoint() => clearField(2);
  @$pb.TagNumber(2)
  EcPoint ensureEcPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get hashValue => $_getN(2);
  @$pb.TagNumber(3)
  set hashValue($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHashValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearHashValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get payload => $_getN(3);
  @$pb.TagNumber(4)
  set payload($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayload() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
