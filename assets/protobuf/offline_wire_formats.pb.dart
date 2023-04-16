///
//  Generated code. Do not modify.
//  source: offline_wire_formats.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'offline_wire_formats.pbenum.dart';

export 'offline_wire_formats.pbenum.dart';

class OfflineFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OfflineFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<OfflineFrame_Version>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: OfflineFrame_Version.UNKNOWN_VERSION, valueOf: OfflineFrame_Version.valueOf, enumValues: OfflineFrame_Version.values)
    ..aOM<V1Frame>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: V1Frame.create)
    ..hasRequiredFields = false
  ;

  OfflineFrame._() : super();
  factory OfflineFrame({
    OfflineFrame_Version? version,
    V1Frame? v1,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (v1 != null) {
      _result.v1 = v1;
    }
    return _result;
  }
  factory OfflineFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfflineFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfflineFrame clone() => OfflineFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfflineFrame copyWith(void Function(OfflineFrame) updates) => super.copyWith((message) => updates(message as OfflineFrame)) as OfflineFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OfflineFrame create() => OfflineFrame._();
  OfflineFrame createEmptyInstance() => create();
  static $pb.PbList<OfflineFrame> createRepeated() => $pb.PbList<OfflineFrame>();
  @$core.pragma('dart2js:noInline')
  static OfflineFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfflineFrame>(create);
  static OfflineFrame? _defaultInstance;

  @$pb.TagNumber(1)
  OfflineFrame_Version get version => $_getN(0);
  @$pb.TagNumber(1)
  set version(OfflineFrame_Version v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  V1Frame get v1 => $_getN(1);
  @$pb.TagNumber(2)
  set v1(V1Frame v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasV1() => $_has(1);
  @$pb.TagNumber(2)
  void clearV1() => clearField(2);
  @$pb.TagNumber(2)
  V1Frame ensureV1() => $_ensure(1);
}

class V1Frame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'V1Frame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<V1Frame_FrameType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: V1Frame_FrameType.UNKNOWN_FRAME_TYPE, valueOf: V1Frame_FrameType.valueOf, enumValues: V1Frame_FrameType.values)
    ..aOM<ConnectionRequestFrame>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionRequest', subBuilder: ConnectionRequestFrame.create)
    ..aOM<ConnectionResponseFrame>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionResponse', subBuilder: ConnectionResponseFrame.create)
    ..aOM<PayloadTransferFrame>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadTransfer', subBuilder: PayloadTransferFrame.create)
    ..aOM<BandwidthUpgradeNegotiationFrame>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bandwidthUpgradeNegotiation', subBuilder: BandwidthUpgradeNegotiationFrame.create)
    ..aOM<KeepAliveFrame>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keepAlive', subBuilder: KeepAliveFrame.create)
    ..aOM<DisconnectionFrame>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disconnection', subBuilder: DisconnectionFrame.create)
    ..aOM<PairedKeyEncryptionFrame>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairedKeyEncryption', subBuilder: PairedKeyEncryptionFrame.create)
    ..hasRequiredFields = false
  ;

  V1Frame._() : super();
  factory V1Frame({
    V1Frame_FrameType? type,
    ConnectionRequestFrame? connectionRequest,
    ConnectionResponseFrame? connectionResponse,
    PayloadTransferFrame? payloadTransfer,
    BandwidthUpgradeNegotiationFrame? bandwidthUpgradeNegotiation,
    KeepAliveFrame? keepAlive,
    DisconnectionFrame? disconnection,
    PairedKeyEncryptionFrame? pairedKeyEncryption,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (connectionRequest != null) {
      _result.connectionRequest = connectionRequest;
    }
    if (connectionResponse != null) {
      _result.connectionResponse = connectionResponse;
    }
    if (payloadTransfer != null) {
      _result.payloadTransfer = payloadTransfer;
    }
    if (bandwidthUpgradeNegotiation != null) {
      _result.bandwidthUpgradeNegotiation = bandwidthUpgradeNegotiation;
    }
    if (keepAlive != null) {
      _result.keepAlive = keepAlive;
    }
    if (disconnection != null) {
      _result.disconnection = disconnection;
    }
    if (pairedKeyEncryption != null) {
      _result.pairedKeyEncryption = pairedKeyEncryption;
    }
    return _result;
  }
  factory V1Frame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory V1Frame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  V1Frame clone() => V1Frame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  V1Frame copyWith(void Function(V1Frame) updates) => super.copyWith((message) => updates(message as V1Frame)) as V1Frame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static V1Frame create() => V1Frame._();
  V1Frame createEmptyInstance() => create();
  static $pb.PbList<V1Frame> createRepeated() => $pb.PbList<V1Frame>();
  @$core.pragma('dart2js:noInline')
  static V1Frame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<V1Frame>(create);
  static V1Frame? _defaultInstance;

  @$pb.TagNumber(1)
  V1Frame_FrameType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(V1Frame_FrameType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  ConnectionRequestFrame get connectionRequest => $_getN(1);
  @$pb.TagNumber(2)
  set connectionRequest(ConnectionRequestFrame v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectionRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionRequest() => clearField(2);
  @$pb.TagNumber(2)
  ConnectionRequestFrame ensureConnectionRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  ConnectionResponseFrame get connectionResponse => $_getN(2);
  @$pb.TagNumber(3)
  set connectionResponse(ConnectionResponseFrame v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnectionResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnectionResponse() => clearField(3);
  @$pb.TagNumber(3)
  ConnectionResponseFrame ensureConnectionResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  PayloadTransferFrame get payloadTransfer => $_getN(3);
  @$pb.TagNumber(4)
  set payloadTransfer(PayloadTransferFrame v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayloadTransfer() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayloadTransfer() => clearField(4);
  @$pb.TagNumber(4)
  PayloadTransferFrame ensurePayloadTransfer() => $_ensure(3);

  @$pb.TagNumber(5)
  BandwidthUpgradeNegotiationFrame get bandwidthUpgradeNegotiation => $_getN(4);
  @$pb.TagNumber(5)
  set bandwidthUpgradeNegotiation(BandwidthUpgradeNegotiationFrame v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBandwidthUpgradeNegotiation() => $_has(4);
  @$pb.TagNumber(5)
  void clearBandwidthUpgradeNegotiation() => clearField(5);
  @$pb.TagNumber(5)
  BandwidthUpgradeNegotiationFrame ensureBandwidthUpgradeNegotiation() => $_ensure(4);

  @$pb.TagNumber(6)
  KeepAliveFrame get keepAlive => $_getN(5);
  @$pb.TagNumber(6)
  set keepAlive(KeepAliveFrame v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasKeepAlive() => $_has(5);
  @$pb.TagNumber(6)
  void clearKeepAlive() => clearField(6);
  @$pb.TagNumber(6)
  KeepAliveFrame ensureKeepAlive() => $_ensure(5);

  @$pb.TagNumber(7)
  DisconnectionFrame get disconnection => $_getN(6);
  @$pb.TagNumber(7)
  set disconnection(DisconnectionFrame v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDisconnection() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisconnection() => clearField(7);
  @$pb.TagNumber(7)
  DisconnectionFrame ensureDisconnection() => $_ensure(6);

  @$pb.TagNumber(8)
  PairedKeyEncryptionFrame get pairedKeyEncryption => $_getN(7);
  @$pb.TagNumber(8)
  set pairedKeyEncryption(PairedKeyEncryptionFrame v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPairedKeyEncryption() => $_has(7);
  @$pb.TagNumber(8)
  void clearPairedKeyEncryption() => clearField(8);
  @$pb.TagNumber(8)
  PairedKeyEncryptionFrame ensurePairedKeyEncryption() => $_ensure(7);
}

class ConnectionRequestFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectionRequestFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endpointId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endpointName')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'handshakeData', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.O3)
    ..pc<ConnectionRequestFrame_Medium>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediums', $pb.PbFieldType.PE, valueOf: ConnectionRequestFrame_Medium.valueOf, enumValues: ConnectionRequestFrame_Medium.values, defaultEnumValue: ConnectionRequestFrame_Medium.UNKNOWN_MEDIUM)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endpointInfo', $pb.PbFieldType.OY)
    ..aOM<MediumMetadata>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediumMetadata', subBuilder: MediumMetadata.create)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keepAliveIntervalMillis', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keepAliveTimeoutMillis', $pb.PbFieldType.O3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceType', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceInfo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ConnectionRequestFrame._() : super();
  factory ConnectionRequestFrame({
    $core.String? endpointId,
    $core.String? endpointName,
    $core.List<$core.int>? handshakeData,
    $core.int? nonce,
    $core.Iterable<ConnectionRequestFrame_Medium>? mediums,
    $core.List<$core.int>? endpointInfo,
    MediumMetadata? mediumMetadata,
    $core.int? keepAliveIntervalMillis,
    $core.int? keepAliveTimeoutMillis,
    $core.int? deviceType,
    $core.List<$core.int>? deviceInfo,
  }) {
    final _result = create();
    if (endpointId != null) {
      _result.endpointId = endpointId;
    }
    if (endpointName != null) {
      _result.endpointName = endpointName;
    }
    if (handshakeData != null) {
      _result.handshakeData = handshakeData;
    }
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (mediums != null) {
      _result.mediums.addAll(mediums);
    }
    if (endpointInfo != null) {
      _result.endpointInfo = endpointInfo;
    }
    if (mediumMetadata != null) {
      _result.mediumMetadata = mediumMetadata;
    }
    if (keepAliveIntervalMillis != null) {
      _result.keepAliveIntervalMillis = keepAliveIntervalMillis;
    }
    if (keepAliveTimeoutMillis != null) {
      _result.keepAliveTimeoutMillis = keepAliveTimeoutMillis;
    }
    if (deviceType != null) {
      _result.deviceType = deviceType;
    }
    if (deviceInfo != null) {
      _result.deviceInfo = deviceInfo;
    }
    return _result;
  }
  factory ConnectionRequestFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionRequestFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionRequestFrame clone() => ConnectionRequestFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionRequestFrame copyWith(void Function(ConnectionRequestFrame) updates) => super.copyWith((message) => updates(message as ConnectionRequestFrame)) as ConnectionRequestFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectionRequestFrame create() => ConnectionRequestFrame._();
  ConnectionRequestFrame createEmptyInstance() => create();
  static $pb.PbList<ConnectionRequestFrame> createRepeated() => $pb.PbList<ConnectionRequestFrame>();
  @$core.pragma('dart2js:noInline')
  static ConnectionRequestFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionRequestFrame>(create);
  static ConnectionRequestFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get endpointId => $_getSZ(0);
  @$pb.TagNumber(1)
  set endpointId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndpointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndpointId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get endpointName => $_getSZ(1);
  @$pb.TagNumber(2)
  set endpointName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndpointName() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndpointName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get handshakeData => $_getN(2);
  @$pb.TagNumber(3)
  set handshakeData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHandshakeData() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshakeData() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get nonce => $_getIZ(3);
  @$pb.TagNumber(4)
  set nonce($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonce() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ConnectionRequestFrame_Medium> get mediums => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get endpointInfo => $_getN(5);
  @$pb.TagNumber(6)
  set endpointInfo($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndpointInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndpointInfo() => clearField(6);

  @$pb.TagNumber(7)
  MediumMetadata get mediumMetadata => $_getN(6);
  @$pb.TagNumber(7)
  set mediumMetadata(MediumMetadata v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMediumMetadata() => $_has(6);
  @$pb.TagNumber(7)
  void clearMediumMetadata() => clearField(7);
  @$pb.TagNumber(7)
  MediumMetadata ensureMediumMetadata() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get keepAliveIntervalMillis => $_getIZ(7);
  @$pb.TagNumber(8)
  set keepAliveIntervalMillis($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasKeepAliveIntervalMillis() => $_has(7);
  @$pb.TagNumber(8)
  void clearKeepAliveIntervalMillis() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get keepAliveTimeoutMillis => $_getIZ(8);
  @$pb.TagNumber(9)
  set keepAliveTimeoutMillis($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasKeepAliveTimeoutMillis() => $_has(8);
  @$pb.TagNumber(9)
  void clearKeepAliveTimeoutMillis() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get deviceType => $_getIZ(9);
  @$pb.TagNumber(10)
  set deviceType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeviceType() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeviceType() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get deviceInfo => $_getN(10);
  @$pb.TagNumber(11)
  set deviceInfo($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeviceInfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeviceInfo() => clearField(11);
}

class ConnectionResponseFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectionResponseFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'handshakeData', $pb.PbFieldType.OY)
    ..e<ConnectionResponseFrame_ResponseStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', $pb.PbFieldType.OE, defaultOrMaker: ConnectionResponseFrame_ResponseStatus.UNKNOWN_RESPONSE_STATUS, valueOf: ConnectionResponseFrame_ResponseStatus.valueOf, enumValues: ConnectionResponseFrame_ResponseStatus.values)
    ..aOM<OsInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'osInfo', subBuilder: OsInfo.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiplexSocketBitmask', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nearbyConnectionsVersion', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ConnectionResponseFrame._() : super();
  factory ConnectionResponseFrame({
  @$core.Deprecated('This field is deprecated.')
    $core.int? status,
    $core.List<$core.int>? handshakeData,
    ConnectionResponseFrame_ResponseStatus? response,
    OsInfo? osInfo,
    $core.int? multiplexSocketBitmask,
    $core.int? nearbyConnectionsVersion,
  }) {
    final _result = create();
    if (status != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.status = status;
    }
    if (handshakeData != null) {
      _result.handshakeData = handshakeData;
    }
    if (response != null) {
      _result.response = response;
    }
    if (osInfo != null) {
      _result.osInfo = osInfo;
    }
    if (multiplexSocketBitmask != null) {
      _result.multiplexSocketBitmask = multiplexSocketBitmask;
    }
    if (nearbyConnectionsVersion != null) {
      _result.nearbyConnectionsVersion = nearbyConnectionsVersion;
    }
    return _result;
  }
  factory ConnectionResponseFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionResponseFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionResponseFrame clone() => ConnectionResponseFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionResponseFrame copyWith(void Function(ConnectionResponseFrame) updates) => super.copyWith((message) => updates(message as ConnectionResponseFrame)) as ConnectionResponseFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectionResponseFrame create() => ConnectionResponseFrame._();
  ConnectionResponseFrame createEmptyInstance() => create();
  static $pb.PbList<ConnectionResponseFrame> createRepeated() => $pb.PbList<ConnectionResponseFrame>();
  @$core.pragma('dart2js:noInline')
  static ConnectionResponseFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionResponseFrame>(create);
  static ConnectionResponseFrame? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get handshakeData => $_getN(1);
  @$pb.TagNumber(2)
  set handshakeData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHandshakeData() => $_has(1);
  @$pb.TagNumber(2)
  void clearHandshakeData() => clearField(2);

  @$pb.TagNumber(3)
  ConnectionResponseFrame_ResponseStatus get response => $_getN(2);
  @$pb.TagNumber(3)
  set response(ConnectionResponseFrame_ResponseStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);

  @$pb.TagNumber(4)
  OsInfo get osInfo => $_getN(3);
  @$pb.TagNumber(4)
  set osInfo(OsInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOsInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearOsInfo() => clearField(4);
  @$pb.TagNumber(4)
  OsInfo ensureOsInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get multiplexSocketBitmask => $_getIZ(4);
  @$pb.TagNumber(5)
  set multiplexSocketBitmask($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMultiplexSocketBitmask() => $_has(4);
  @$pb.TagNumber(5)
  void clearMultiplexSocketBitmask() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get nearbyConnectionsVersion => $_getIZ(5);
  @$pb.TagNumber(6)
  set nearbyConnectionsVersion($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNearbyConnectionsVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearNearbyConnectionsVersion() => clearField(6);
}

class PayloadTransferFrame_PayloadHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayloadTransferFrame.PayloadHeader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..e<PayloadTransferFrame_PayloadHeader_PayloadType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: PayloadTransferFrame_PayloadHeader_PayloadType.UNKNOWN_PAYLOAD_TYPE, valueOf: PayloadTransferFrame_PayloadHeader_PayloadType.valueOf, enumValues: PayloadTransferFrame_PayloadHeader_PayloadType.values)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSize')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSensitive')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentFolder')
    ..hasRequiredFields = false
  ;

  PayloadTransferFrame_PayloadHeader._() : super();
  factory PayloadTransferFrame_PayloadHeader({
    $fixnum.Int64? id,
    PayloadTransferFrame_PayloadHeader_PayloadType? type,
    $fixnum.Int64? totalSize,
    $core.bool? isSensitive,
    $core.String? fileName,
    $core.String? parentFolder,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (totalSize != null) {
      _result.totalSize = totalSize;
    }
    if (isSensitive != null) {
      _result.isSensitive = isSensitive;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (parentFolder != null) {
      _result.parentFolder = parentFolder;
    }
    return _result;
  }
  factory PayloadTransferFrame_PayloadHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame_PayloadHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadHeader clone() => PayloadTransferFrame_PayloadHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadHeader copyWith(void Function(PayloadTransferFrame_PayloadHeader) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame_PayloadHeader)) as PayloadTransferFrame_PayloadHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame_PayloadHeader create() => PayloadTransferFrame_PayloadHeader._();
  PayloadTransferFrame_PayloadHeader createEmptyInstance() => create();
  static $pb.PbList<PayloadTransferFrame_PayloadHeader> createRepeated() => $pb.PbList<PayloadTransferFrame_PayloadHeader>();
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame_PayloadHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadTransferFrame_PayloadHeader>(create);
  static PayloadTransferFrame_PayloadHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  PayloadTransferFrame_PayloadHeader_PayloadType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(PayloadTransferFrame_PayloadHeader_PayloadType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalSize => $_getI64(2);
  @$pb.TagNumber(3)
  set totalSize($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isSensitive => $_getBF(3);
  @$pb.TagNumber(4)
  set isSensitive($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsSensitive() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsSensitive() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fileName => $_getSZ(4);
  @$pb.TagNumber(5)
  set fileName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get parentFolder => $_getSZ(5);
  @$pb.TagNumber(6)
  set parentFolder($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasParentFolder() => $_has(5);
  @$pb.TagNumber(6)
  void clearParentFolder() => clearField(6);
}

class PayloadTransferFrame_PayloadChunk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayloadTransferFrame.PayloadChunk', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.O3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PayloadTransferFrame_PayloadChunk._() : super();
  factory PayloadTransferFrame_PayloadChunk({
    $core.int? flags,
    $fixnum.Int64? offset,
    $core.List<$core.int>? body,
  }) {
    final _result = create();
    if (flags != null) {
      _result.flags = flags;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory PayloadTransferFrame_PayloadChunk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame_PayloadChunk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadChunk clone() => PayloadTransferFrame_PayloadChunk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadChunk copyWith(void Function(PayloadTransferFrame_PayloadChunk) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame_PayloadChunk)) as PayloadTransferFrame_PayloadChunk; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame_PayloadChunk create() => PayloadTransferFrame_PayloadChunk._();
  PayloadTransferFrame_PayloadChunk createEmptyInstance() => create();
  static $pb.PbList<PayloadTransferFrame_PayloadChunk> createRepeated() => $pb.PbList<PayloadTransferFrame_PayloadChunk>();
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame_PayloadChunk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadTransferFrame_PayloadChunk>(create);
  static PayloadTransferFrame_PayloadChunk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get flags => $_getIZ(0);
  @$pb.TagNumber(1)
  set flags($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlags() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlags() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get offset => $_getI64(1);
  @$pb.TagNumber(2)
  set offset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get body => $_getN(2);
  @$pb.TagNumber(3)
  set body($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

class PayloadTransferFrame_ControlMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayloadTransferFrame.ControlMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<PayloadTransferFrame_ControlMessage_EventType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', $pb.PbFieldType.OE, defaultOrMaker: PayloadTransferFrame_ControlMessage_EventType.UNKNOWN_EVENT_TYPE, valueOf: PayloadTransferFrame_ControlMessage_EventType.valueOf, enumValues: PayloadTransferFrame_ControlMessage_EventType.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset')
    ..hasRequiredFields = false
  ;

  PayloadTransferFrame_ControlMessage._() : super();
  factory PayloadTransferFrame_ControlMessage({
    PayloadTransferFrame_ControlMessage_EventType? event,
    $fixnum.Int64? offset,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    return _result;
  }
  factory PayloadTransferFrame_ControlMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame_ControlMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_ControlMessage clone() => PayloadTransferFrame_ControlMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_ControlMessage copyWith(void Function(PayloadTransferFrame_ControlMessage) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame_ControlMessage)) as PayloadTransferFrame_ControlMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame_ControlMessage create() => PayloadTransferFrame_ControlMessage._();
  PayloadTransferFrame_ControlMessage createEmptyInstance() => create();
  static $pb.PbList<PayloadTransferFrame_ControlMessage> createRepeated() => $pb.PbList<PayloadTransferFrame_ControlMessage>();
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame_ControlMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadTransferFrame_ControlMessage>(create);
  static PayloadTransferFrame_ControlMessage? _defaultInstance;

  @$pb.TagNumber(1)
  PayloadTransferFrame_ControlMessage_EventType get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(PayloadTransferFrame_ControlMessage_EventType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get offset => $_getI64(1);
  @$pb.TagNumber(2)
  set offset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);
}

class PayloadTransferFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayloadTransferFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<PayloadTransferFrame_PacketType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packetType', $pb.PbFieldType.OE, defaultOrMaker: PayloadTransferFrame_PacketType.UNKNOWN_PACKET_TYPE, valueOf: PayloadTransferFrame_PacketType.valueOf, enumValues: PayloadTransferFrame_PacketType.values)
    ..aOM<PayloadTransferFrame_PayloadHeader>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadHeader', subBuilder: PayloadTransferFrame_PayloadHeader.create)
    ..aOM<PayloadTransferFrame_PayloadChunk>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadChunk', subBuilder: PayloadTransferFrame_PayloadChunk.create)
    ..aOM<PayloadTransferFrame_ControlMessage>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'controlMessage', subBuilder: PayloadTransferFrame_ControlMessage.create)
    ..hasRequiredFields = false
  ;

  PayloadTransferFrame._() : super();
  factory PayloadTransferFrame({
    PayloadTransferFrame_PacketType? packetType,
    PayloadTransferFrame_PayloadHeader? payloadHeader,
    PayloadTransferFrame_PayloadChunk? payloadChunk,
    PayloadTransferFrame_ControlMessage? controlMessage,
  }) {
    final _result = create();
    if (packetType != null) {
      _result.packetType = packetType;
    }
    if (payloadHeader != null) {
      _result.payloadHeader = payloadHeader;
    }
    if (payloadChunk != null) {
      _result.payloadChunk = payloadChunk;
    }
    if (controlMessage != null) {
      _result.controlMessage = controlMessage;
    }
    return _result;
  }
  factory PayloadTransferFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame clone() => PayloadTransferFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame copyWith(void Function(PayloadTransferFrame) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame)) as PayloadTransferFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame create() => PayloadTransferFrame._();
  PayloadTransferFrame createEmptyInstance() => create();
  static $pb.PbList<PayloadTransferFrame> createRepeated() => $pb.PbList<PayloadTransferFrame>();
  @$core.pragma('dart2js:noInline')
  static PayloadTransferFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayloadTransferFrame>(create);
  static PayloadTransferFrame? _defaultInstance;

  @$pb.TagNumber(1)
  PayloadTransferFrame_PacketType get packetType => $_getN(0);
  @$pb.TagNumber(1)
  set packetType(PayloadTransferFrame_PacketType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPacketType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPacketType() => clearField(1);

  @$pb.TagNumber(2)
  PayloadTransferFrame_PayloadHeader get payloadHeader => $_getN(1);
  @$pb.TagNumber(2)
  set payloadHeader(PayloadTransferFrame_PayloadHeader v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayloadHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayloadHeader() => clearField(2);
  @$pb.TagNumber(2)
  PayloadTransferFrame_PayloadHeader ensurePayloadHeader() => $_ensure(1);

  @$pb.TagNumber(3)
  PayloadTransferFrame_PayloadChunk get payloadChunk => $_getN(2);
  @$pb.TagNumber(3)
  set payloadChunk(PayloadTransferFrame_PayloadChunk v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadChunk() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadChunk() => clearField(3);
  @$pb.TagNumber(3)
  PayloadTransferFrame_PayloadChunk ensurePayloadChunk() => $_ensure(2);

  @$pb.TagNumber(4)
  PayloadTransferFrame_ControlMessage get controlMessage => $_getN(3);
  @$pb.TagNumber(4)
  set controlMessage(PayloadTransferFrame_ControlMessage v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasControlMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearControlMessage() => clearField(4);
  @$pb.TagNumber(4)
  PayloadTransferFrame_ControlMessage ensureControlMessage() => $_ensure(3);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiHotspotCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port', $pb.PbFieldType.O3)
    ..a<$core.String>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gateway', $pb.PbFieldType.OS, defaultOrMaker: '0.0.0.0')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frequency', $pb.PbFieldType.O3, defaultOrMaker: -1)
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials({
    $core.String? ssid,
    $core.String? password,
    $core.int? port,
    $core.String? gateway,
    $core.int? frequency,
  }) {
    final _result = create();
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (password != null) {
      _result.password = password;
    }
    if (port != null) {
      _result.port = port;
    }
    if (gateway != null) {
      _result.gateway = gateway;
    }
    if (frequency != null) {
      _result.frequency = frequency;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(3)
  set port($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearPort() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gateway => $_getS(3, '0.0.0.0');
  @$pb.TagNumber(4)
  set gateway($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGateway() => $_has(3);
  @$pb.TagNumber(4)
  void clearGateway() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get frequency => $_getI(4, -1);
  @$pb.TagNumber(5)
  set frequency($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFrequency() => $_has(4);
  @$pb.TagNumber(5)
  void clearFrequency() => clearField(5);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiLanSocket', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipAddress', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket({
    $core.List<$core.int>? ipAddress,
    $core.int? wifiPort,
  }) {
    final _result = create();
    if (ipAddress != null) {
      _result.ipAddress = ipAddress;
    }
    if (wifiPort != null) {
      _result.wifiPort = wifiPort;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get ipAddress => $_getN(0);
  @$pb.TagNumber(1)
  set ipAddress($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIpAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearIpAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get wifiPort => $_getIZ(1);
  @$pb.TagNumber(2)
  set wifiPort($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWifiPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearWifiPort() => clearField(2);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.BluetoothCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddress')
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials({
    $core.String? serviceName,
    $core.String? macAddress,
  }) {
    final _result = create();
    if (serviceName != null) {
      _result.serviceName = serviceName;
    }
    if (macAddress != null) {
      _result.macAddress = macAddress;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set macAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacAddress() => clearField(2);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiAwareCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceInfo', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials({
    $core.String? serviceId,
    $core.List<$core.int>? serviceInfo,
    $core.String? password,
  }) {
    final _result = create();
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    if (serviceInfo != null) {
      _result.serviceInfo = serviceInfo;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get serviceInfo => $_getN(1);
  @$pb.TagNumber(2)
  set serviceInfo($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceInfo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiDirectCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frequency', $pb.PbFieldType.O3)
    ..a<$core.String>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gateway', $pb.PbFieldType.OS, defaultOrMaker: '0.0.0.0')
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials({
    $core.String? ssid,
    $core.String? password,
    $core.int? port,
    $core.int? frequency,
    $core.String? gateway,
  }) {
    final _result = create();
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (password != null) {
      _result.password = password;
    }
    if (port != null) {
      _result.port = port;
    }
    if (frequency != null) {
      _result.frequency = frequency;
    }
    if (gateway != null) {
      _result.gateway = gateway;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(3)
  set port($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearPort() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get frequency => $_getIZ(3);
  @$pb.TagNumber(4)
  set frequency($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrequency() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrequency() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get gateway => $_getS(4, '0.0.0.0');
  @$pb.TagNumber(5)
  set gateway($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGateway() => $_has(4);
  @$pb.TagNumber(5)
  void clearGateway() => clearField(5);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WebRtcCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId')
    ..aOM<LocationHint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationHint', subBuilder: LocationHint.create)
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials({
    $core.String? peerId,
    LocationHint? locationHint,
  }) {
    final _result = create();
    if (peerId != null) {
      _result.peerId = peerId;
    }
    if (locationHint != null) {
      _result.locationHint = locationHint;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get peerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set peerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeerId() => clearField(1);

  @$pb.TagNumber(2)
  LocationHint get locationHint => $_getN(1);
  @$pb.TagNumber(2)
  set locationHint(LocationHint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocationHint() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocationHint() => clearField(2);
  @$pb.TagNumber(2)
  LocationHint ensureLocationHint() => $_ensure(1);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'medium', $pb.PbFieldType.OE, defaultOrMaker: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium.UNKNOWN_MEDIUM, valueOf: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium.valueOf, enumValues: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium.values)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiHotspotCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiLanSocket', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bluetoothCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiAwareCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiDirectCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials.create)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsDisablingEncryption')
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'webRtcCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials.create)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsClientIntroductionAck')
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_UpgradePathInfo._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo({
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium? medium,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials? wifiHotspotCredentials,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket? wifiLanSocket,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials? bluetoothCredentials,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials? wifiAwareCredentials,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials? wifiDirectCredentials,
    $core.bool? supportsDisablingEncryption,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials? webRtcCredentials,
    $core.bool? supportsClientIntroductionAck,
  }) {
    final _result = create();
    if (medium != null) {
      _result.medium = medium;
    }
    if (wifiHotspotCredentials != null) {
      _result.wifiHotspotCredentials = wifiHotspotCredentials;
    }
    if (wifiLanSocket != null) {
      _result.wifiLanSocket = wifiLanSocket;
    }
    if (bluetoothCredentials != null) {
      _result.bluetoothCredentials = bluetoothCredentials;
    }
    if (wifiAwareCredentials != null) {
      _result.wifiAwareCredentials = wifiAwareCredentials;
    }
    if (wifiDirectCredentials != null) {
      _result.wifiDirectCredentials = wifiDirectCredentials;
    }
    if (supportsDisablingEncryption != null) {
      _result.supportsDisablingEncryption = supportsDisablingEncryption;
    }
    if (webRtcCredentials != null) {
      _result.webRtcCredentials = webRtcCredentials;
    }
    if (supportsClientIntroductionAck != null) {
      _result.supportsClientIntroductionAck = supportsClientIntroductionAck;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo create() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo._();
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_UpgradePathInfo>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_UpgradePathInfo>(create);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo? _defaultInstance;

  @$pb.TagNumber(1)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium get medium => $_getN(0);
  @$pb.TagNumber(1)
  set medium(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMedium() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedium() => clearField(1);

  @$pb.TagNumber(2)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials get wifiHotspotCredentials => $_getN(1);
  @$pb.TagNumber(2)
  set wifiHotspotCredentials(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWifiHotspotCredentials() => $_has(1);
  @$pb.TagNumber(2)
  void clearWifiHotspotCredentials() => clearField(2);
  @$pb.TagNumber(2)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials ensureWifiHotspotCredentials() => $_ensure(1);

  @$pb.TagNumber(3)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket get wifiLanSocket => $_getN(2);
  @$pb.TagNumber(3)
  set wifiLanSocket(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWifiLanSocket() => $_has(2);
  @$pb.TagNumber(3)
  void clearWifiLanSocket() => clearField(3);
  @$pb.TagNumber(3)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket ensureWifiLanSocket() => $_ensure(2);

  @$pb.TagNumber(4)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials get bluetoothCredentials => $_getN(3);
  @$pb.TagNumber(4)
  set bluetoothCredentials(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBluetoothCredentials() => $_has(3);
  @$pb.TagNumber(4)
  void clearBluetoothCredentials() => clearField(4);
  @$pb.TagNumber(4)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials ensureBluetoothCredentials() => $_ensure(3);

  @$pb.TagNumber(5)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials get wifiAwareCredentials => $_getN(4);
  @$pb.TagNumber(5)
  set wifiAwareCredentials(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasWifiAwareCredentials() => $_has(4);
  @$pb.TagNumber(5)
  void clearWifiAwareCredentials() => clearField(5);
  @$pb.TagNumber(5)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials ensureWifiAwareCredentials() => $_ensure(4);

  @$pb.TagNumber(6)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials get wifiDirectCredentials => $_getN(5);
  @$pb.TagNumber(6)
  set wifiDirectCredentials(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasWifiDirectCredentials() => $_has(5);
  @$pb.TagNumber(6)
  void clearWifiDirectCredentials() => clearField(6);
  @$pb.TagNumber(6)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials ensureWifiDirectCredentials() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get supportsDisablingEncryption => $_getBF(6);
  @$pb.TagNumber(7)
  set supportsDisablingEncryption($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSupportsDisablingEncryption() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupportsDisablingEncryption() => clearField(7);

  @$pb.TagNumber(8)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials get webRtcCredentials => $_getN(7);
  @$pb.TagNumber(8)
  set webRtcCredentials(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasWebRtcCredentials() => $_has(7);
  @$pb.TagNumber(8)
  void clearWebRtcCredentials() => clearField(8);
  @$pb.TagNumber(8)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials ensureWebRtcCredentials() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get supportsClientIntroductionAck => $_getBF(8);
  @$pb.TagNumber(9)
  set supportsClientIntroductionAck($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSupportsClientIntroductionAck() => $_has(8);
  @$pb.TagNumber(9)
  void clearSupportsClientIntroductionAck() => clearField(9);
}

class BandwidthUpgradeNegotiationFrame_ClientIntroduction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.ClientIntroduction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endpointId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsDisablingEncryption')
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_ClientIntroduction._() : super();
  factory BandwidthUpgradeNegotiationFrame_ClientIntroduction({
    $core.String? endpointId,
    $core.bool? supportsDisablingEncryption,
  }) {
    final _result = create();
    if (endpointId != null) {
      _result.endpointId = endpointId;
    }
    if (supportsDisablingEncryption != null) {
      _result.supportsDisablingEncryption = supportsDisablingEncryption;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame_ClientIntroduction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_ClientIntroduction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroduction clone() => BandwidthUpgradeNegotiationFrame_ClientIntroduction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroduction copyWith(void Function(BandwidthUpgradeNegotiationFrame_ClientIntroduction) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_ClientIntroduction)) as BandwidthUpgradeNegotiationFrame_ClientIntroduction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_ClientIntroduction create() => BandwidthUpgradeNegotiationFrame_ClientIntroduction._();
  BandwidthUpgradeNegotiationFrame_ClientIntroduction createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_ClientIntroduction> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_ClientIntroduction>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_ClientIntroduction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_ClientIntroduction>(create);
  static BandwidthUpgradeNegotiationFrame_ClientIntroduction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get endpointId => $_getSZ(0);
  @$pb.TagNumber(1)
  set endpointId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndpointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndpointId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get supportsDisablingEncryption => $_getBF(1);
  @$pb.TagNumber(2)
  set supportsDisablingEncryption($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupportsDisablingEncryption() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportsDisablingEncryption() => clearField(2);
}

class BandwidthUpgradeNegotiationFrame_ClientIntroductionAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame.ClientIntroductionAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck._() : super();
  factory BandwidthUpgradeNegotiationFrame_ClientIntroductionAck() => create();
  factory BandwidthUpgradeNegotiationFrame_ClientIntroductionAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_ClientIntroductionAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck clone() => BandwidthUpgradeNegotiationFrame_ClientIntroductionAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck copyWith(void Function(BandwidthUpgradeNegotiationFrame_ClientIntroductionAck) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_ClientIntroductionAck)) as BandwidthUpgradeNegotiationFrame_ClientIntroductionAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_ClientIntroductionAck create() => BandwidthUpgradeNegotiationFrame_ClientIntroductionAck._();
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame_ClientIntroductionAck> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame_ClientIntroductionAck>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame_ClientIntroductionAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame_ClientIntroductionAck>(create);
  static BandwidthUpgradeNegotiationFrame_ClientIntroductionAck? _defaultInstance;
}

class BandwidthUpgradeNegotiationFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BandwidthUpgradeNegotiationFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<BandwidthUpgradeNegotiationFrame_EventType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', $pb.PbFieldType.OE, defaultOrMaker: BandwidthUpgradeNegotiationFrame_EventType.UNKNOWN_EVENT_TYPE, valueOf: BandwidthUpgradeNegotiationFrame_EventType.valueOf, enumValues: BandwidthUpgradeNegotiationFrame_EventType.values)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upgradePathInfo', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_ClientIntroduction>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIntroduction', subBuilder: BandwidthUpgradeNegotiationFrame_ClientIntroduction.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_ClientIntroductionAck>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIntroductionAck', subBuilder: BandwidthUpgradeNegotiationFrame_ClientIntroductionAck.create)
    ..hasRequiredFields = false
  ;

  BandwidthUpgradeNegotiationFrame._() : super();
  factory BandwidthUpgradeNegotiationFrame({
    BandwidthUpgradeNegotiationFrame_EventType? eventType,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo? upgradePathInfo,
    BandwidthUpgradeNegotiationFrame_ClientIntroduction? clientIntroduction,
    BandwidthUpgradeNegotiationFrame_ClientIntroductionAck? clientIntroductionAck,
  }) {
    final _result = create();
    if (eventType != null) {
      _result.eventType = eventType;
    }
    if (upgradePathInfo != null) {
      _result.upgradePathInfo = upgradePathInfo;
    }
    if (clientIntroduction != null) {
      _result.clientIntroduction = clientIntroduction;
    }
    if (clientIntroductionAck != null) {
      _result.clientIntroductionAck = clientIntroductionAck;
    }
    return _result;
  }
  factory BandwidthUpgradeNegotiationFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame clone() => BandwidthUpgradeNegotiationFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame copyWith(void Function(BandwidthUpgradeNegotiationFrame) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame)) as BandwidthUpgradeNegotiationFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame create() => BandwidthUpgradeNegotiationFrame._();
  BandwidthUpgradeNegotiationFrame createEmptyInstance() => create();
  static $pb.PbList<BandwidthUpgradeNegotiationFrame> createRepeated() => $pb.PbList<BandwidthUpgradeNegotiationFrame>();
  @$core.pragma('dart2js:noInline')
  static BandwidthUpgradeNegotiationFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BandwidthUpgradeNegotiationFrame>(create);
  static BandwidthUpgradeNegotiationFrame? _defaultInstance;

  @$pb.TagNumber(1)
  BandwidthUpgradeNegotiationFrame_EventType get eventType => $_getN(0);
  @$pb.TagNumber(1)
  set eventType(BandwidthUpgradeNegotiationFrame_EventType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventType() => clearField(1);

  @$pb.TagNumber(2)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo get upgradePathInfo => $_getN(1);
  @$pb.TagNumber(2)
  set upgradePathInfo(BandwidthUpgradeNegotiationFrame_UpgradePathInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpgradePathInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpgradePathInfo() => clearField(2);
  @$pb.TagNumber(2)
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo ensureUpgradePathInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  BandwidthUpgradeNegotiationFrame_ClientIntroduction get clientIntroduction => $_getN(2);
  @$pb.TagNumber(3)
  set clientIntroduction(BandwidthUpgradeNegotiationFrame_ClientIntroduction v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientIntroduction() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientIntroduction() => clearField(3);
  @$pb.TagNumber(3)
  BandwidthUpgradeNegotiationFrame_ClientIntroduction ensureClientIntroduction() => $_ensure(2);

  @$pb.TagNumber(4)
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck get clientIntroductionAck => $_getN(3);
  @$pb.TagNumber(4)
  set clientIntroductionAck(BandwidthUpgradeNegotiationFrame_ClientIntroductionAck v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasClientIntroductionAck() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientIntroductionAck() => clearField(4);
  @$pb.TagNumber(4)
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck ensureClientIntroductionAck() => $_ensure(3);
}

class KeepAliveFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeepAliveFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ack')
    ..hasRequiredFields = false
  ;

  KeepAliveFrame._() : super();
  factory KeepAliveFrame({
    $core.bool? ack,
  }) {
    final _result = create();
    if (ack != null) {
      _result.ack = ack;
    }
    return _result;
  }
  factory KeepAliveFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeepAliveFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeepAliveFrame clone() => KeepAliveFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeepAliveFrame copyWith(void Function(KeepAliveFrame) updates) => super.copyWith((message) => updates(message as KeepAliveFrame)) as KeepAliveFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeepAliveFrame create() => KeepAliveFrame._();
  KeepAliveFrame createEmptyInstance() => create();
  static $pb.PbList<KeepAliveFrame> createRepeated() => $pb.PbList<KeepAliveFrame>();
  @$core.pragma('dart2js:noInline')
  static KeepAliveFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeepAliveFrame>(create);
  static KeepAliveFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ack => $_getBF(0);
  @$pb.TagNumber(1)
  set ack($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAck() => $_has(0);
  @$pb.TagNumber(1)
  void clearAck() => clearField(1);
}

class DisconnectionFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DisconnectionFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestSafeToDisconnect')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackSafeToDisconnect')
    ..hasRequiredFields = false
  ;

  DisconnectionFrame._() : super();
  factory DisconnectionFrame({
    $core.bool? requestSafeToDisconnect,
    $core.bool? ackSafeToDisconnect,
  }) {
    final _result = create();
    if (requestSafeToDisconnect != null) {
      _result.requestSafeToDisconnect = requestSafeToDisconnect;
    }
    if (ackSafeToDisconnect != null) {
      _result.ackSafeToDisconnect = ackSafeToDisconnect;
    }
    return _result;
  }
  factory DisconnectionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectionFrame clone() => DisconnectionFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectionFrame copyWith(void Function(DisconnectionFrame) updates) => super.copyWith((message) => updates(message as DisconnectionFrame)) as DisconnectionFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisconnectionFrame create() => DisconnectionFrame._();
  DisconnectionFrame createEmptyInstance() => create();
  static $pb.PbList<DisconnectionFrame> createRepeated() => $pb.PbList<DisconnectionFrame>();
  @$core.pragma('dart2js:noInline')
  static DisconnectionFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectionFrame>(create);
  static DisconnectionFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get requestSafeToDisconnect => $_getBF(0);
  @$pb.TagNumber(1)
  set requestSafeToDisconnect($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestSafeToDisconnect() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestSafeToDisconnect() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get ackSafeToDisconnect => $_getBF(1);
  @$pb.TagNumber(2)
  set ackSafeToDisconnect($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAckSafeToDisconnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearAckSafeToDisconnect() => clearField(2);
}

class PairedKeyEncryptionFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PairedKeyEncryptionFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signedData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PairedKeyEncryptionFrame._() : super();
  factory PairedKeyEncryptionFrame({
    $core.List<$core.int>? signedData,
  }) {
    final _result = create();
    if (signedData != null) {
      _result.signedData = signedData;
    }
    return _result;
  }
  factory PairedKeyEncryptionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairedKeyEncryptionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairedKeyEncryptionFrame clone() => PairedKeyEncryptionFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairedKeyEncryptionFrame copyWith(void Function(PairedKeyEncryptionFrame) updates) => super.copyWith((message) => updates(message as PairedKeyEncryptionFrame)) as PairedKeyEncryptionFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairedKeyEncryptionFrame create() => PairedKeyEncryptionFrame._();
  PairedKeyEncryptionFrame createEmptyInstance() => create();
  static $pb.PbList<PairedKeyEncryptionFrame> createRepeated() => $pb.PbList<PairedKeyEncryptionFrame>();
  @$core.pragma('dart2js:noInline')
  static PairedKeyEncryptionFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairedKeyEncryptionFrame>(create);
  static PairedKeyEncryptionFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signedData => $_getN(0);
  @$pb.TagNumber(1)
  set signedData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignedData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignedData() => clearField(1);
}

class MediumMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MediumMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supports5Ghz', protoName: 'supports_5_ghz')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bssid')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipAddress', $pb.PbFieldType.OY)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supports6Ghz', protoName: 'supports_6_ghz')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mobileRadio')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apFrequency', $pb.PbFieldType.O3, defaultOrMaker: -1)
    ..aOM<AvailableChannels>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'availableChannels', subBuilder: AvailableChannels.create)
    ..aOM<WifiDirectCliUsableChannels>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiDirectCliUsableChannels', subBuilder: WifiDirectCliUsableChannels.create)
    ..aOM<WifiLanUsableChannels>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiLanUsableChannels', subBuilder: WifiLanUsableChannels.create)
    ..aOM<WifiAwareUsableChannels>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiAwareUsableChannels', subBuilder: WifiAwareUsableChannels.create)
    ..aOM<WifiHotspotStaUsableChannels>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiHotspotStaUsableChannels', subBuilder: WifiHotspotStaUsableChannels.create)
    ..hasRequiredFields = false
  ;

  MediumMetadata._() : super();
  factory MediumMetadata({
    $core.bool? supports5Ghz,
    $core.String? bssid,
    $core.List<$core.int>? ipAddress,
    $core.bool? supports6Ghz,
    $core.bool? mobileRadio,
    $core.int? apFrequency,
    AvailableChannels? availableChannels,
    WifiDirectCliUsableChannels? wifiDirectCliUsableChannels,
    WifiLanUsableChannels? wifiLanUsableChannels,
    WifiAwareUsableChannels? wifiAwareUsableChannels,
    WifiHotspotStaUsableChannels? wifiHotspotStaUsableChannels,
  }) {
    final _result = create();
    if (supports5Ghz != null) {
      _result.supports5Ghz = supports5Ghz;
    }
    if (bssid != null) {
      _result.bssid = bssid;
    }
    if (ipAddress != null) {
      _result.ipAddress = ipAddress;
    }
    if (supports6Ghz != null) {
      _result.supports6Ghz = supports6Ghz;
    }
    if (mobileRadio != null) {
      _result.mobileRadio = mobileRadio;
    }
    if (apFrequency != null) {
      _result.apFrequency = apFrequency;
    }
    if (availableChannels != null) {
      _result.availableChannels = availableChannels;
    }
    if (wifiDirectCliUsableChannels != null) {
      _result.wifiDirectCliUsableChannels = wifiDirectCliUsableChannels;
    }
    if (wifiLanUsableChannels != null) {
      _result.wifiLanUsableChannels = wifiLanUsableChannels;
    }
    if (wifiAwareUsableChannels != null) {
      _result.wifiAwareUsableChannels = wifiAwareUsableChannels;
    }
    if (wifiHotspotStaUsableChannels != null) {
      _result.wifiHotspotStaUsableChannels = wifiHotspotStaUsableChannels;
    }
    return _result;
  }
  factory MediumMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MediumMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MediumMetadata clone() => MediumMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MediumMetadata copyWith(void Function(MediumMetadata) updates) => super.copyWith((message) => updates(message as MediumMetadata)) as MediumMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MediumMetadata create() => MediumMetadata._();
  MediumMetadata createEmptyInstance() => create();
  static $pb.PbList<MediumMetadata> createRepeated() => $pb.PbList<MediumMetadata>();
  @$core.pragma('dart2js:noInline')
  static MediumMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MediumMetadata>(create);
  static MediumMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get supports5Ghz => $_getBF(0);
  @$pb.TagNumber(1)
  set supports5Ghz($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupports5Ghz() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupports5Ghz() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBssid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBssid() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get ipAddress => $_getN(2);
  @$pb.TagNumber(3)
  set ipAddress($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get supports6Ghz => $_getBF(3);
  @$pb.TagNumber(4)
  set supports6Ghz($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSupports6Ghz() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupports6Ghz() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get mobileRadio => $_getBF(4);
  @$pb.TagNumber(5)
  set mobileRadio($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMobileRadio() => $_has(4);
  @$pb.TagNumber(5)
  void clearMobileRadio() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get apFrequency => $_getI(5, -1);
  @$pb.TagNumber(6)
  set apFrequency($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasApFrequency() => $_has(5);
  @$pb.TagNumber(6)
  void clearApFrequency() => clearField(6);

  @$pb.TagNumber(7)
  AvailableChannels get availableChannels => $_getN(6);
  @$pb.TagNumber(7)
  set availableChannels(AvailableChannels v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvailableChannels() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvailableChannels() => clearField(7);
  @$pb.TagNumber(7)
  AvailableChannels ensureAvailableChannels() => $_ensure(6);

  @$pb.TagNumber(8)
  WifiDirectCliUsableChannels get wifiDirectCliUsableChannels => $_getN(7);
  @$pb.TagNumber(8)
  set wifiDirectCliUsableChannels(WifiDirectCliUsableChannels v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasWifiDirectCliUsableChannels() => $_has(7);
  @$pb.TagNumber(8)
  void clearWifiDirectCliUsableChannels() => clearField(8);
  @$pb.TagNumber(8)
  WifiDirectCliUsableChannels ensureWifiDirectCliUsableChannels() => $_ensure(7);

  @$pb.TagNumber(9)
  WifiLanUsableChannels get wifiLanUsableChannels => $_getN(8);
  @$pb.TagNumber(9)
  set wifiLanUsableChannels(WifiLanUsableChannels v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasWifiLanUsableChannels() => $_has(8);
  @$pb.TagNumber(9)
  void clearWifiLanUsableChannels() => clearField(9);
  @$pb.TagNumber(9)
  WifiLanUsableChannels ensureWifiLanUsableChannels() => $_ensure(8);

  @$pb.TagNumber(10)
  WifiAwareUsableChannels get wifiAwareUsableChannels => $_getN(9);
  @$pb.TagNumber(10)
  set wifiAwareUsableChannels(WifiAwareUsableChannels v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasWifiAwareUsableChannels() => $_has(9);
  @$pb.TagNumber(10)
  void clearWifiAwareUsableChannels() => clearField(10);
  @$pb.TagNumber(10)
  WifiAwareUsableChannels ensureWifiAwareUsableChannels() => $_ensure(9);

  @$pb.TagNumber(11)
  WifiHotspotStaUsableChannels get wifiHotspotStaUsableChannels => $_getN(10);
  @$pb.TagNumber(11)
  set wifiHotspotStaUsableChannels(WifiHotspotStaUsableChannels v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasWifiHotspotStaUsableChannels() => $_has(10);
  @$pb.TagNumber(11)
  void clearWifiHotspotStaUsableChannels() => clearField(11);
  @$pb.TagNumber(11)
  WifiHotspotStaUsableChannels ensureWifiHotspotStaUsableChannels() => $_ensure(10);
}

class AvailableChannels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AvailableChannels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  AvailableChannels._() : super();
  factory AvailableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory AvailableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AvailableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AvailableChannels clone() => AvailableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AvailableChannels copyWith(void Function(AvailableChannels) updates) => super.copyWith((message) => updates(message as AvailableChannels)) as AvailableChannels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AvailableChannels create() => AvailableChannels._();
  AvailableChannels createEmptyInstance() => create();
  static $pb.PbList<AvailableChannels> createRepeated() => $pb.PbList<AvailableChannels>();
  @$core.pragma('dart2js:noInline')
  static AvailableChannels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AvailableChannels>(create);
  static AvailableChannels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get channels => $_getList(0);
}

class WifiDirectCliUsableChannels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiDirectCliUsableChannels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  WifiDirectCliUsableChannels._() : super();
  factory WifiDirectCliUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory WifiDirectCliUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiDirectCliUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiDirectCliUsableChannels clone() => WifiDirectCliUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiDirectCliUsableChannels copyWith(void Function(WifiDirectCliUsableChannels) updates) => super.copyWith((message) => updates(message as WifiDirectCliUsableChannels)) as WifiDirectCliUsableChannels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiDirectCliUsableChannels create() => WifiDirectCliUsableChannels._();
  WifiDirectCliUsableChannels createEmptyInstance() => create();
  static $pb.PbList<WifiDirectCliUsableChannels> createRepeated() => $pb.PbList<WifiDirectCliUsableChannels>();
  @$core.pragma('dart2js:noInline')
  static WifiDirectCliUsableChannels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiDirectCliUsableChannels>(create);
  static WifiDirectCliUsableChannels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get channels => $_getList(0);
}

class WifiLanUsableChannels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiLanUsableChannels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  WifiLanUsableChannels._() : super();
  factory WifiLanUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory WifiLanUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiLanUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiLanUsableChannels clone() => WifiLanUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiLanUsableChannels copyWith(void Function(WifiLanUsableChannels) updates) => super.copyWith((message) => updates(message as WifiLanUsableChannels)) as WifiLanUsableChannels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiLanUsableChannels create() => WifiLanUsableChannels._();
  WifiLanUsableChannels createEmptyInstance() => create();
  static $pb.PbList<WifiLanUsableChannels> createRepeated() => $pb.PbList<WifiLanUsableChannels>();
  @$core.pragma('dart2js:noInline')
  static WifiLanUsableChannels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiLanUsableChannels>(create);
  static WifiLanUsableChannels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get channels => $_getList(0);
}

class WifiAwareUsableChannels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiAwareUsableChannels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  WifiAwareUsableChannels._() : super();
  factory WifiAwareUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory WifiAwareUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAwareUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAwareUsableChannels clone() => WifiAwareUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAwareUsableChannels copyWith(void Function(WifiAwareUsableChannels) updates) => super.copyWith((message) => updates(message as WifiAwareUsableChannels)) as WifiAwareUsableChannels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiAwareUsableChannels create() => WifiAwareUsableChannels._();
  WifiAwareUsableChannels createEmptyInstance() => create();
  static $pb.PbList<WifiAwareUsableChannels> createRepeated() => $pb.PbList<WifiAwareUsableChannels>();
  @$core.pragma('dart2js:noInline')
  static WifiAwareUsableChannels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiAwareUsableChannels>(create);
  static WifiAwareUsableChannels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get channels => $_getList(0);
}

class WifiHotspotStaUsableChannels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiHotspotStaUsableChannels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  WifiHotspotStaUsableChannels._() : super();
  factory WifiHotspotStaUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory WifiHotspotStaUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiHotspotStaUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiHotspotStaUsableChannels clone() => WifiHotspotStaUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiHotspotStaUsableChannels copyWith(void Function(WifiHotspotStaUsableChannels) updates) => super.copyWith((message) => updates(message as WifiHotspotStaUsableChannels)) as WifiHotspotStaUsableChannels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiHotspotStaUsableChannels create() => WifiHotspotStaUsableChannels._();
  WifiHotspotStaUsableChannels createEmptyInstance() => create();
  static $pb.PbList<WifiHotspotStaUsableChannels> createRepeated() => $pb.PbList<WifiHotspotStaUsableChannels>();
  @$core.pragma('dart2js:noInline')
  static WifiHotspotStaUsableChannels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiHotspotStaUsableChannels>(create);
  static WifiHotspotStaUsableChannels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get channels => $_getList(0);
}

class LocationHint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationHint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..e<LocationStandard_Format>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'format', $pb.PbFieldType.OE, defaultOrMaker: LocationStandard_Format.UNKNOWN, valueOf: LocationStandard_Format.valueOf, enumValues: LocationStandard_Format.values)
    ..hasRequiredFields = false
  ;

  LocationHint._() : super();
  factory LocationHint({
    $core.String? location,
    LocationStandard_Format? format,
  }) {
    final _result = create();
    if (location != null) {
      _result.location = location;
    }
    if (format != null) {
      _result.format = format;
    }
    return _result;
  }
  factory LocationHint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationHint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationHint clone() => LocationHint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationHint copyWith(void Function(LocationHint) updates) => super.copyWith((message) => updates(message as LocationHint)) as LocationHint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationHint create() => LocationHint._();
  LocationHint createEmptyInstance() => create();
  static $pb.PbList<LocationHint> createRepeated() => $pb.PbList<LocationHint>();
  @$core.pragma('dart2js:noInline')
  static LocationHint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationHint>(create);
  static LocationHint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get location => $_getSZ(0);
  @$pb.TagNumber(1)
  set location($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);

  @$pb.TagNumber(2)
  LocationStandard_Format get format => $_getN(1);
  @$pb.TagNumber(2)
  set format(LocationStandard_Format v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFormat() => clearField(2);
}

class LocationStandard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationStandard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LocationStandard._() : super();
  factory LocationStandard() => create();
  factory LocationStandard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationStandard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationStandard clone() => LocationStandard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationStandard copyWith(void Function(LocationStandard) updates) => super.copyWith((message) => updates(message as LocationStandard)) as LocationStandard; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationStandard create() => LocationStandard._();
  LocationStandard createEmptyInstance() => create();
  static $pb.PbList<LocationStandard> createRepeated() => $pb.PbList<LocationStandard>();
  @$core.pragma('dart2js:noInline')
  static LocationStandard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationStandard>(create);
  static LocationStandard? _defaultInstance;
}

class OsInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OsInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<OsInfo_OsType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: OsInfo_OsType.UNKNOWN_OS_TYPE, valueOf: OsInfo_OsType.valueOf, enumValues: OsInfo_OsType.values)
    ..hasRequiredFields = false
  ;

  OsInfo._() : super();
  factory OsInfo({
    OsInfo_OsType? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory OsInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OsInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OsInfo clone() => OsInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OsInfo copyWith(void Function(OsInfo) updates) => super.copyWith((message) => updates(message as OsInfo)) as OsInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OsInfo create() => OsInfo._();
  OsInfo createEmptyInstance() => create();
  static $pb.PbList<OsInfo> createRepeated() => $pb.PbList<OsInfo>();
  @$core.pragma('dart2js:noInline')
  static OsInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OsInfo>(create);
  static OsInfo? _defaultInstance;

  @$pb.TagNumber(1)
  OsInfo_OsType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(OsInfo_OsType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

