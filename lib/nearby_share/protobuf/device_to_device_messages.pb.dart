//
//  Generated code. Do not modify.
//  source: device_to_device_messages.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'device_to_device_messages.pbenum.dart';
import 'securemessage.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'device_to_device_messages.pbenum.dart';

/// Used by protocols between devices
class DeviceToDeviceMessage extends $pb.GeneratedMessage {
  factory DeviceToDeviceMessage({
    $core.List<$core.int>? message,
    $core.int? sequenceNumber,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (sequenceNumber != null) {
      $result.sequenceNumber = sequenceNumber;
    }
    return $result;
  }
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

  /// the payload of the message
  @$pb.TagNumber(1)
  $core.List<$core.int> get message => $_getN(0);
  @$pb.TagNumber(1)
  set message($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  /// the sequence number of the message - must be increasing.
  @$pb.TagNumber(2)
  $core.int get sequenceNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set sequenceNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequenceNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequenceNumber() => $_clearField(2);
}

/// sent as the first message from initiator to responder
/// in an unauthenticated Diffie-Hellman Key Exchange
class InitiatorHello extends $pb.GeneratedMessage {
  factory InitiatorHello({
    $0.GenericPublicKey? publicDhKey,
    $core.int? protocolVersion,
  }) {
    final $result = create();
    if (publicDhKey != null) {
      $result.publicDhKey = publicDhKey;
    }
    if (protocolVersion != null) {
      $result.protocolVersion = protocolVersion;
    }
    return $result;
  }
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

  /// The session public key to send to the responder
  @$pb.TagNumber(1)
  $0.GenericPublicKey get publicDhKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicDhKey($0.GenericPublicKey v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicDhKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicDhKey() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GenericPublicKey ensurePublicDhKey() => $_ensure(0);

  /// The protocol version
  @$pb.TagNumber(2)
  $core.int get protocolVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocolVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolVersion() => $_clearField(2);
}

/// sent inside the header of the first message from the responder to the
/// initiator in an unauthenticated Diffie-Hellman Key Exchange
class ResponderHello extends $pb.GeneratedMessage {
  factory ResponderHello({
    $0.GenericPublicKey? publicDhKey,
    $core.int? protocolVersion,
  }) {
    final $result = create();
    if (publicDhKey != null) {
      $result.publicDhKey = publicDhKey;
    }
    if (protocolVersion != null) {
      $result.protocolVersion = protocolVersion;
    }
    return $result;
  }
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

  /// The session public key to send to the initiator
  @$pb.TagNumber(1)
  $0.GenericPublicKey get publicDhKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicDhKey($0.GenericPublicKey v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicDhKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicDhKey() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GenericPublicKey ensurePublicDhKey() => $_ensure(0);

  /// The protocol version
  @$pb.TagNumber(2)
  $core.int get protocolVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocolVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolVersion() => $_clearField(2);
}

/// A convenience proto for encoding curve points in affine representation
class EcPoint extends $pb.GeneratedMessage {
  factory EcPoint({
    Curve? curve,
    $core.List<$core.int>? x,
    $core.List<$core.int>? y,
  }) {
    final $result = create();
    if (curve != null) {
      $result.curve = curve;
    }
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
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
  set curve(Curve v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurve() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurve() => $_clearField(1);

  /// x and y are encoded in big-endian two's complement
  /// client MUST verify (x,y) is a valid point on the specified curve
  @$pb.TagNumber(2)
  $core.List<$core.int> get x => $_getN(1);
  @$pb.TagNumber(2)
  set x($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get y => $_getN(2);
  @$pb.TagNumber(3)
  set y($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => $_clearField(3);
}

class SpakeHandshakeMessage extends $pb.GeneratedMessage {
  factory SpakeHandshakeMessage({
    $core.int? flowNumber,
    EcPoint? ecPoint,
    $core.List<$core.int>? hashValue,
    $core.List<$core.int>? payload,
  }) {
    final $result = create();
    if (flowNumber != null) {
      $result.flowNumber = flowNumber;
    }
    if (ecPoint != null) {
      $result.ecPoint = ecPoint;
    }
    if (hashValue != null) {
      $result.hashValue = hashValue;
    }
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
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

  /// Each flow in the protocol bumps this counter
  @$pb.TagNumber(1)
  $core.int get flowNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set flowNumber($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlowNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlowNumber() => $_clearField(1);

  /// Some (but not all) SPAKE flows send a point on an elliptic curve
  @$pb.TagNumber(2)
  EcPoint get ecPoint => $_getN(1);
  @$pb.TagNumber(2)
  set ecPoint(EcPoint v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEcPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearEcPoint() => $_clearField(2);
  @$pb.TagNumber(2)
  EcPoint ensureEcPoint() => $_ensure(1);

  /// Some (but not all) SPAKE flows send a hash value
  @$pb.TagNumber(3)
  $core.List<$core.int> get hashValue => $_getN(2);
  @$pb.TagNumber(3)
  set hashValue($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHashValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearHashValue() => $_clearField(3);

  /// The last flow of a SPAKE protocol can send an optional payload,
  /// since the key exchange is already complete on the sender's side.
  @$pb.TagNumber(4)
  $core.List<$core.int> get payload => $_getN(3);
  @$pb.TagNumber(4)
  set payload($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayload() => $_clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
