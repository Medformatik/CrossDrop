//
//  Generated code. Do not modify.
//  source: offline_wire_formats.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'offline_wire_formats.pbenum.dart';

export 'offline_wire_formats.pbenum.dart';

class OfflineFrame extends $pb.GeneratedMessage {
  factory OfflineFrame({
    OfflineFrame_Version? version,
    V1Frame? v1,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (v1 != null) {
      $result.v1 = v1;
    }
    return $result;
  }
  OfflineFrame._() : super();
  factory OfflineFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfflineFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OfflineFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<OfflineFrame_Version>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: OfflineFrame_Version.UNKNOWN_VERSION, valueOf: OfflineFrame_Version.valueOf, enumValues: OfflineFrame_Version.values)
    ..aOM<V1Frame>(2, _omitFieldNames ? '' : 'v1', subBuilder: V1Frame.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfflineFrame clone() => OfflineFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfflineFrame copyWith(void Function(OfflineFrame) updates) => super.copyWith((message) => updates(message as OfflineFrame)) as OfflineFrame;

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

  /// Right now there's only 1 version, but if there are more, exactly one of
  /// the following fields will be set.
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
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (connectionRequest != null) {
      $result.connectionRequest = connectionRequest;
    }
    if (connectionResponse != null) {
      $result.connectionResponse = connectionResponse;
    }
    if (payloadTransfer != null) {
      $result.payloadTransfer = payloadTransfer;
    }
    if (bandwidthUpgradeNegotiation != null) {
      $result.bandwidthUpgradeNegotiation = bandwidthUpgradeNegotiation;
    }
    if (keepAlive != null) {
      $result.keepAlive = keepAlive;
    }
    if (disconnection != null) {
      $result.disconnection = disconnection;
    }
    if (pairedKeyEncryption != null) {
      $result.pairedKeyEncryption = pairedKeyEncryption;
    }
    return $result;
  }
  V1Frame._() : super();
  factory V1Frame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory V1Frame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'V1Frame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<V1Frame_FrameType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: V1Frame_FrameType.UNKNOWN_FRAME_TYPE, valueOf: V1Frame_FrameType.valueOf, enumValues: V1Frame_FrameType.values)
    ..aOM<ConnectionRequestFrame>(2, _omitFieldNames ? '' : 'connectionRequest', subBuilder: ConnectionRequestFrame.create)
    ..aOM<ConnectionResponseFrame>(3, _omitFieldNames ? '' : 'connectionResponse', subBuilder: ConnectionResponseFrame.create)
    ..aOM<PayloadTransferFrame>(4, _omitFieldNames ? '' : 'payloadTransfer', subBuilder: PayloadTransferFrame.create)
    ..aOM<BandwidthUpgradeNegotiationFrame>(5, _omitFieldNames ? '' : 'bandwidthUpgradeNegotiation', subBuilder: BandwidthUpgradeNegotiationFrame.create)
    ..aOM<KeepAliveFrame>(6, _omitFieldNames ? '' : 'keepAlive', subBuilder: KeepAliveFrame.create)
    ..aOM<DisconnectionFrame>(7, _omitFieldNames ? '' : 'disconnection', subBuilder: DisconnectionFrame.create)
    ..aOM<PairedKeyEncryptionFrame>(8, _omitFieldNames ? '' : 'pairedKeyEncryption', subBuilder: PairedKeyEncryptionFrame.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  V1Frame clone() => V1Frame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  V1Frame copyWith(void Function(V1Frame) updates) => super.copyWith((message) => updates(message as V1Frame)) as V1Frame;

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

  /// Exactly one of the following fields will be set.
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
    final $result = create();
    if (endpointId != null) {
      $result.endpointId = endpointId;
    }
    if (endpointName != null) {
      $result.endpointName = endpointName;
    }
    if (handshakeData != null) {
      $result.handshakeData = handshakeData;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (mediums != null) {
      $result.mediums.addAll(mediums);
    }
    if (endpointInfo != null) {
      $result.endpointInfo = endpointInfo;
    }
    if (mediumMetadata != null) {
      $result.mediumMetadata = mediumMetadata;
    }
    if (keepAliveIntervalMillis != null) {
      $result.keepAliveIntervalMillis = keepAliveIntervalMillis;
    }
    if (keepAliveTimeoutMillis != null) {
      $result.keepAliveTimeoutMillis = keepAliveTimeoutMillis;
    }
    if (deviceType != null) {
      $result.deviceType = deviceType;
    }
    if (deviceInfo != null) {
      $result.deviceInfo = deviceInfo;
    }
    return $result;
  }
  ConnectionRequestFrame._() : super();
  factory ConnectionRequestFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionRequestFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionRequestFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'endpointId')
    ..aOS(2, _omitFieldNames ? '' : 'endpointName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'handshakeData', $pb.PbFieldType.OY)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.O3)
    ..pc<ConnectionRequestFrame_Medium>(5, _omitFieldNames ? '' : 'mediums', $pb.PbFieldType.PE, valueOf: ConnectionRequestFrame_Medium.valueOf, enumValues: ConnectionRequestFrame_Medium.values, defaultEnumValue: ConnectionRequestFrame_Medium.UNKNOWN_MEDIUM)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'endpointInfo', $pb.PbFieldType.OY)
    ..aOM<MediumMetadata>(7, _omitFieldNames ? '' : 'mediumMetadata', subBuilder: MediumMetadata.create)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'keepAliveIntervalMillis', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'keepAliveTimeoutMillis', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'deviceType', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'deviceInfo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionRequestFrame clone() => ConnectionRequestFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionRequestFrame copyWith(void Function(ConnectionRequestFrame) updates) => super.copyWith((message) => updates(message as ConnectionRequestFrame)) as ConnectionRequestFrame;

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

  /// A random number generated for each outgoing connection that is presently
  /// used to act as a tiebreaker when 2 devices connect to each other
  /// simultaneously; this can also be used for other initialization-scoped
  /// things in the future.
  @$pb.TagNumber(4)
  $core.int get nonce => $_getIZ(3);
  @$pb.TagNumber(4)
  set nonce($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(4)
  void clearNonce() => clearField(4);

  /// The mediums this device supports upgrading to. This list should be filtered
  /// by both the strategy and this device's individual limitations.
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

  /// The type of {@link Device} object.
  @$pb.TagNumber(10)
  $core.int get deviceType => $_getIZ(9);
  @$pb.TagNumber(10)
  set deviceType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeviceType() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeviceType() => clearField(10);

  /// The bytes of serialized {@link Device} object.
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
  factory ConnectionResponseFrame({
  @$core.Deprecated('This field is deprecated.')
    $core.int? status,
    $core.List<$core.int>? handshakeData,
    ConnectionResponseFrame_ResponseStatus? response,
    OsInfo? osInfo,
    $core.int? multiplexSocketBitmask,
    $core.int? nearbyConnectionsVersion,
  }) {
    final $result = create();
    if (status != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.status = status;
    }
    if (handshakeData != null) {
      $result.handshakeData = handshakeData;
    }
    if (response != null) {
      $result.response = response;
    }
    if (osInfo != null) {
      $result.osInfo = osInfo;
    }
    if (multiplexSocketBitmask != null) {
      $result.multiplexSocketBitmask = multiplexSocketBitmask;
    }
    if (nearbyConnectionsVersion != null) {
      $result.nearbyConnectionsVersion = nearbyConnectionsVersion;
    }
    return $result;
  }
  ConnectionResponseFrame._() : super();
  factory ConnectionResponseFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionResponseFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionResponseFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'handshakeData', $pb.PbFieldType.OY)
    ..e<ConnectionResponseFrame_ResponseStatus>(3, _omitFieldNames ? '' : 'response', $pb.PbFieldType.OE, defaultOrMaker: ConnectionResponseFrame_ResponseStatus.UNKNOWN_RESPONSE_STATUS, valueOf: ConnectionResponseFrame_ResponseStatus.valueOf, enumValues: ConnectionResponseFrame_ResponseStatus.values)
    ..aOM<OsInfo>(4, _omitFieldNames ? '' : 'osInfo', subBuilder: OsInfo.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'multiplexSocketBitmask', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'nearbyConnectionsVersion', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionResponseFrame clone() => ConnectionResponseFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionResponseFrame copyWith(void Function(ConnectionResponseFrame) updates) => super.copyWith((message) => updates(message as ConnectionResponseFrame)) as ConnectionResponseFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionResponseFrame create() => ConnectionResponseFrame._();
  ConnectionResponseFrame createEmptyInstance() => create();
  static $pb.PbList<ConnectionResponseFrame> createRepeated() => $pb.PbList<ConnectionResponseFrame>();
  @$core.pragma('dart2js:noInline')
  static ConnectionResponseFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionResponseFrame>(create);
  static ConnectionResponseFrame? _defaultInstance;

  ///  One of:
  ///
  ///  - ConnectionsStatusCodes.STATUS_OK
  ///  - ConnectionsStatusCodes.STATUS_CONNECTION_REJECTED.
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

  /// A bitmask value to indicate which medium supports Multiplex transmission
  /// feature. Each supporting medium could utilize one bit starting from the
  /// least significant bit in this field. eq. BT utilizes the LSB bit which 0x01
  /// means bt supports multiplex while 0x00 means not. Refer to ClientProxy.java
  /// for the bit usages.
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
  factory PayloadTransferFrame_PayloadHeader({
    $fixnum.Int64? id,
    PayloadTransferFrame_PayloadHeader_PayloadType? type,
    $fixnum.Int64? totalSize,
    $core.bool? isSensitive,
    $core.String? fileName,
    $core.String? parentFolder,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    if (isSensitive != null) {
      $result.isSensitive = isSensitive;
    }
    if (fileName != null) {
      $result.fileName = fileName;
    }
    if (parentFolder != null) {
      $result.parentFolder = parentFolder;
    }
    return $result;
  }
  PayloadTransferFrame_PayloadHeader._() : super();
  factory PayloadTransferFrame_PayloadHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame_PayloadHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadTransferFrame.PayloadHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..e<PayloadTransferFrame_PayloadHeader_PayloadType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: PayloadTransferFrame_PayloadHeader_PayloadType.UNKNOWN_PAYLOAD_TYPE, valueOf: PayloadTransferFrame_PayloadHeader_PayloadType.valueOf, enumValues: PayloadTransferFrame_PayloadHeader_PayloadType.values)
    ..aInt64(3, _omitFieldNames ? '' : 'totalSize')
    ..aOB(4, _omitFieldNames ? '' : 'isSensitive')
    ..aOS(5, _omitFieldNames ? '' : 'fileName')
    ..aOS(6, _omitFieldNames ? '' : 'parentFolder')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadHeader clone() => PayloadTransferFrame_PayloadHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadHeader copyWith(void Function(PayloadTransferFrame_PayloadHeader) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame_PayloadHeader)) as PayloadTransferFrame_PayloadHeader;

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

/// Accompanies DATA packets.
class PayloadTransferFrame_PayloadChunk extends $pb.GeneratedMessage {
  factory PayloadTransferFrame_PayloadChunk({
    $core.int? flags,
    $fixnum.Int64? offset,
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (flags != null) {
      $result.flags = flags;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  PayloadTransferFrame_PayloadChunk._() : super();
  factory PayloadTransferFrame_PayloadChunk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame_PayloadChunk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadTransferFrame.PayloadChunk', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'flags', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'offset')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadChunk clone() => PayloadTransferFrame_PayloadChunk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_PayloadChunk copyWith(void Function(PayloadTransferFrame_PayloadChunk) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame_PayloadChunk)) as PayloadTransferFrame_PayloadChunk;

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

/// Accompanies CONTROL packets.
class PayloadTransferFrame_ControlMessage extends $pb.GeneratedMessage {
  factory PayloadTransferFrame_ControlMessage({
    PayloadTransferFrame_ControlMessage_EventType? event,
    $fixnum.Int64? offset,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    return $result;
  }
  PayloadTransferFrame_ControlMessage._() : super();
  factory PayloadTransferFrame_ControlMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame_ControlMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadTransferFrame.ControlMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<PayloadTransferFrame_ControlMessage_EventType>(1, _omitFieldNames ? '' : 'event', $pb.PbFieldType.OE, defaultOrMaker: PayloadTransferFrame_ControlMessage_EventType.UNKNOWN_EVENT_TYPE, valueOf: PayloadTransferFrame_ControlMessage_EventType.valueOf, enumValues: PayloadTransferFrame_ControlMessage_EventType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_ControlMessage clone() => PayloadTransferFrame_ControlMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame_ControlMessage copyWith(void Function(PayloadTransferFrame_ControlMessage) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame_ControlMessage)) as PayloadTransferFrame_ControlMessage;

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
  factory PayloadTransferFrame({
    PayloadTransferFrame_PacketType? packetType,
    PayloadTransferFrame_PayloadHeader? payloadHeader,
    PayloadTransferFrame_PayloadChunk? payloadChunk,
    PayloadTransferFrame_ControlMessage? controlMessage,
  }) {
    final $result = create();
    if (packetType != null) {
      $result.packetType = packetType;
    }
    if (payloadHeader != null) {
      $result.payloadHeader = payloadHeader;
    }
    if (payloadChunk != null) {
      $result.payloadChunk = payloadChunk;
    }
    if (controlMessage != null) {
      $result.controlMessage = controlMessage;
    }
    return $result;
  }
  PayloadTransferFrame._() : super();
  factory PayloadTransferFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayloadTransferFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PayloadTransferFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<PayloadTransferFrame_PacketType>(1, _omitFieldNames ? '' : 'packetType', $pb.PbFieldType.OE, defaultOrMaker: PayloadTransferFrame_PacketType.UNKNOWN_PACKET_TYPE, valueOf: PayloadTransferFrame_PacketType.valueOf, enumValues: PayloadTransferFrame_PacketType.values)
    ..aOM<PayloadTransferFrame_PayloadHeader>(2, _omitFieldNames ? '' : 'payloadHeader', subBuilder: PayloadTransferFrame_PayloadHeader.create)
    ..aOM<PayloadTransferFrame_PayloadChunk>(3, _omitFieldNames ? '' : 'payloadChunk', subBuilder: PayloadTransferFrame_PayloadChunk.create)
    ..aOM<PayloadTransferFrame_ControlMessage>(4, _omitFieldNames ? '' : 'controlMessage', subBuilder: PayloadTransferFrame_ControlMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame clone() => PayloadTransferFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayloadTransferFrame copyWith(void Function(PayloadTransferFrame) updates) => super.copyWith((message) => updates(message as PayloadTransferFrame)) as PayloadTransferFrame;

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

  /// Exactly one of the following fields will be set, depending on the type.
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

/// Accompanies Medium.WIFI_HOTSPOT.
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials({
    $core.String? ssid,
    $core.String? password,
    $core.int? port,
    $core.String? gateway,
    $core.int? frequency,
  }) {
    final $result = create();
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (password != null) {
      $result.password = password;
    }
    if (port != null) {
      $result.port = port;
    }
    if (gateway != null) {
      $result.gateway = gateway;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiHotspotCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ssid')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..a<$core.String>(4, _omitFieldNames ? '' : 'gateway', $pb.PbFieldType.OS, defaultOrMaker: '0.0.0.0')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.O3, defaultOrMaker: -1)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials;

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

  /// This field can be a band or frequency
  @$pb.TagNumber(5)
  $core.int get frequency => $_getI(4, -1);
  @$pb.TagNumber(5)
  set frequency($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFrequency() => $_has(4);
  @$pb.TagNumber(5)
  void clearFrequency() => clearField(5);
}

/// Accompanies Medium.WIFI_LAN.
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket({
    $core.List<$core.int>? ipAddress,
    $core.int? wifiPort,
  }) {
    final $result = create();
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (wifiPort != null) {
      $result.wifiPort = wifiPort;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiLanSocket', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'ipAddress', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'wifiPort', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket;

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

/// Accompanies Medium.BLUETOOTH.
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials({
    $core.String? serviceName,
    $core.String? macAddress,
  }) {
    final $result = create();
    if (serviceName != null) {
      $result.serviceName = serviceName;
    }
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.BluetoothCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serviceName')
    ..aOS(2, _omitFieldNames ? '' : 'macAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials;

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

/// Accompanies Medium.WIFI_AWARE.
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials({
    $core.String? serviceId,
    $core.List<$core.int>? serviceInfo,
    $core.String? password,
  }) {
    final $result = create();
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    if (serviceInfo != null) {
      $result.serviceInfo = serviceInfo;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiAwareCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serviceId')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'serviceInfo', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials;

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

/// Accompanies Medium.WIFI_DIRECT.
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials({
    $core.String? ssid,
    $core.String? password,
    $core.int? port,
    $core.int? frequency,
    $core.String? gateway,
  }) {
    final $result = create();
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (password != null) {
      $result.password = password;
    }
    if (port != null) {
      $result.port = port;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    if (gateway != null) {
      $result.gateway = gateway;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiDirectCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ssid')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.O3)
    ..a<$core.String>(5, _omitFieldNames ? '' : 'gateway', $pb.PbFieldType.OS, defaultOrMaker: '0.0.0.0')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials;

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

/// Accompanies Medium.WEB_RTC
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials({
    $core.String? peerId,
    LocationHint? locationHint,
  }) {
    final $result = create();
    if (peerId != null) {
      $result.peerId = peerId;
    }
    if (locationHint != null) {
      $result.locationHint = locationHint;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WebRtcCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'peerId')
    ..aOM<LocationHint>(2, _omitFieldNames ? '' : 'locationHint', subBuilder: LocationHint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials;

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

/// Accompanies UPGRADE_PATH_AVAILABLE and UPGRADE_FAILURE events.
class BandwidthUpgradeNegotiationFrame_UpgradePathInfo extends $pb.GeneratedMessage {
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
    final $result = create();
    if (medium != null) {
      $result.medium = medium;
    }
    if (wifiHotspotCredentials != null) {
      $result.wifiHotspotCredentials = wifiHotspotCredentials;
    }
    if (wifiLanSocket != null) {
      $result.wifiLanSocket = wifiLanSocket;
    }
    if (bluetoothCredentials != null) {
      $result.bluetoothCredentials = bluetoothCredentials;
    }
    if (wifiAwareCredentials != null) {
      $result.wifiAwareCredentials = wifiAwareCredentials;
    }
    if (wifiDirectCredentials != null) {
      $result.wifiDirectCredentials = wifiDirectCredentials;
    }
    if (supportsDisablingEncryption != null) {
      $result.supportsDisablingEncryption = supportsDisablingEncryption;
    }
    if (webRtcCredentials != null) {
      $result.webRtcCredentials = webRtcCredentials;
    }
    if (supportsClientIntroductionAck != null) {
      $result.supportsClientIntroductionAck = supportsClientIntroductionAck;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo._() : super();
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_UpgradePathInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.UpgradePathInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium>(1, _omitFieldNames ? '' : 'medium', $pb.PbFieldType.OE, defaultOrMaker: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium.UNKNOWN_MEDIUM, valueOf: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium.valueOf, enumValues: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium.values)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials>(2, _omitFieldNames ? '' : 'wifiHotspotCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket>(3, _omitFieldNames ? '' : 'wifiLanSocket', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials>(4, _omitFieldNames ? '' : 'bluetoothCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials>(5, _omitFieldNames ? '' : 'wifiAwareCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials>(6, _omitFieldNames ? '' : 'wifiDirectCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials.create)
    ..aOB(7, _omitFieldNames ? '' : 'supportsDisablingEncryption')
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials>(8, _omitFieldNames ? '' : 'webRtcCredentials', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials.create)
    ..aOB(9, _omitFieldNames ? '' : 'supportsClientIntroductionAck')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo clone() => BandwidthUpgradeNegotiationFrame_UpgradePathInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_UpgradePathInfo copyWith(void Function(BandwidthUpgradeNegotiationFrame_UpgradePathInfo) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_UpgradePathInfo)) as BandwidthUpgradeNegotiationFrame_UpgradePathInfo;

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

  /// Exactly one of the following fields will be set.
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

  /// Disable Encryption for this upgrade medium to improve throughput.
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

  /// An ack will be sent after the CLIENT_INTRODUCTION frame.
  @$pb.TagNumber(9)
  $core.bool get supportsClientIntroductionAck => $_getBF(8);
  @$pb.TagNumber(9)
  set supportsClientIntroductionAck($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSupportsClientIntroductionAck() => $_has(8);
  @$pb.TagNumber(9)
  void clearSupportsClientIntroductionAck() => clearField(9);
}

/// Accompanies CLIENT_INTRODUCTION events.
class BandwidthUpgradeNegotiationFrame_ClientIntroduction extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_ClientIntroduction({
    $core.String? endpointId,
    $core.bool? supportsDisablingEncryption,
  }) {
    final $result = create();
    if (endpointId != null) {
      $result.endpointId = endpointId;
    }
    if (supportsDisablingEncryption != null) {
      $result.supportsDisablingEncryption = supportsDisablingEncryption;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame_ClientIntroduction._() : super();
  factory BandwidthUpgradeNegotiationFrame_ClientIntroduction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_ClientIntroduction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.ClientIntroduction', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'endpointId')
    ..aOB(2, _omitFieldNames ? '' : 'supportsDisablingEncryption')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroduction clone() => BandwidthUpgradeNegotiationFrame_ClientIntroduction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroduction copyWith(void Function(BandwidthUpgradeNegotiationFrame_ClientIntroduction) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_ClientIntroduction)) as BandwidthUpgradeNegotiationFrame_ClientIntroduction;

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

/// Accompanies CLIENT_INTRODUCTION_ACK events.
class BandwidthUpgradeNegotiationFrame_ClientIntroductionAck extends $pb.GeneratedMessage {
  factory BandwidthUpgradeNegotiationFrame_ClientIntroductionAck() => create();
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck._() : super();
  factory BandwidthUpgradeNegotiationFrame_ClientIntroductionAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame_ClientIntroductionAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame.ClientIntroductionAck', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck clone() => BandwidthUpgradeNegotiationFrame_ClientIntroductionAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame_ClientIntroductionAck copyWith(void Function(BandwidthUpgradeNegotiationFrame_ClientIntroductionAck) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame_ClientIntroductionAck)) as BandwidthUpgradeNegotiationFrame_ClientIntroductionAck;

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
  factory BandwidthUpgradeNegotiationFrame({
    BandwidthUpgradeNegotiationFrame_EventType? eventType,
    BandwidthUpgradeNegotiationFrame_UpgradePathInfo? upgradePathInfo,
    BandwidthUpgradeNegotiationFrame_ClientIntroduction? clientIntroduction,
    BandwidthUpgradeNegotiationFrame_ClientIntroductionAck? clientIntroductionAck,
  }) {
    final $result = create();
    if (eventType != null) {
      $result.eventType = eventType;
    }
    if (upgradePathInfo != null) {
      $result.upgradePathInfo = upgradePathInfo;
    }
    if (clientIntroduction != null) {
      $result.clientIntroduction = clientIntroduction;
    }
    if (clientIntroductionAck != null) {
      $result.clientIntroductionAck = clientIntroductionAck;
    }
    return $result;
  }
  BandwidthUpgradeNegotiationFrame._() : super();
  factory BandwidthUpgradeNegotiationFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BandwidthUpgradeNegotiationFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BandwidthUpgradeNegotiationFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<BandwidthUpgradeNegotiationFrame_EventType>(1, _omitFieldNames ? '' : 'eventType', $pb.PbFieldType.OE, defaultOrMaker: BandwidthUpgradeNegotiationFrame_EventType.UNKNOWN_EVENT_TYPE, valueOf: BandwidthUpgradeNegotiationFrame_EventType.valueOf, enumValues: BandwidthUpgradeNegotiationFrame_EventType.values)
    ..aOM<BandwidthUpgradeNegotiationFrame_UpgradePathInfo>(2, _omitFieldNames ? '' : 'upgradePathInfo', subBuilder: BandwidthUpgradeNegotiationFrame_UpgradePathInfo.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_ClientIntroduction>(3, _omitFieldNames ? '' : 'clientIntroduction', subBuilder: BandwidthUpgradeNegotiationFrame_ClientIntroduction.create)
    ..aOM<BandwidthUpgradeNegotiationFrame_ClientIntroductionAck>(4, _omitFieldNames ? '' : 'clientIntroductionAck', subBuilder: BandwidthUpgradeNegotiationFrame_ClientIntroductionAck.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame clone() => BandwidthUpgradeNegotiationFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BandwidthUpgradeNegotiationFrame copyWith(void Function(BandwidthUpgradeNegotiationFrame) updates) => super.copyWith((message) => updates(message as BandwidthUpgradeNegotiationFrame)) as BandwidthUpgradeNegotiationFrame;

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

  /// Exactly one of the following fields will be set.
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
  factory KeepAliveFrame({
    $core.bool? ack,
  }) {
    final $result = create();
    if (ack != null) {
      $result.ack = ack;
    }
    return $result;
  }
  KeepAliveFrame._() : super();
  factory KeepAliveFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeepAliveFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeepAliveFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ack')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeepAliveFrame clone() => KeepAliveFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeepAliveFrame copyWith(void Function(KeepAliveFrame) updates) => super.copyWith((message) => updates(message as KeepAliveFrame)) as KeepAliveFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeepAliveFrame create() => KeepAliveFrame._();
  KeepAliveFrame createEmptyInstance() => create();
  static $pb.PbList<KeepAliveFrame> createRepeated() => $pb.PbList<KeepAliveFrame>();
  @$core.pragma('dart2js:noInline')
  static KeepAliveFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeepAliveFrame>(create);
  static KeepAliveFrame? _defaultInstance;

  /// And ack will be sent after receiving KEEP_ALIVE frame.
  @$pb.TagNumber(1)
  $core.bool get ack => $_getBF(0);
  @$pb.TagNumber(1)
  set ack($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAck() => $_has(0);
  @$pb.TagNumber(1)
  void clearAck() => clearField(1);
}

/// Informs the remote side to immediately severe the socket connection.
/// Used in bandwidth upgrades to get around a race condition, but may be used
/// in other situations to trigger a faster disconnection event than waiting for
/// socket closed on the remote side.
class DisconnectionFrame extends $pb.GeneratedMessage {
  factory DisconnectionFrame({
    $core.bool? requestSafeToDisconnect,
    $core.bool? ackSafeToDisconnect,
  }) {
    final $result = create();
    if (requestSafeToDisconnect != null) {
      $result.requestSafeToDisconnect = requestSafeToDisconnect;
    }
    if (ackSafeToDisconnect != null) {
      $result.ackSafeToDisconnect = ackSafeToDisconnect;
    }
    return $result;
  }
  DisconnectionFrame._() : super();
  factory DisconnectionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DisconnectionFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'requestSafeToDisconnect')
    ..aOB(2, _omitFieldNames ? '' : 'ackSafeToDisconnect')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectionFrame clone() => DisconnectionFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectionFrame copyWith(void Function(DisconnectionFrame) updates) => super.copyWith((message) => updates(message as DisconnectionFrame)) as DisconnectionFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisconnectionFrame create() => DisconnectionFrame._();
  DisconnectionFrame createEmptyInstance() => create();
  static $pb.PbList<DisconnectionFrame> createRepeated() => $pb.PbList<DisconnectionFrame>();
  @$core.pragma('dart2js:noInline')
  static DisconnectionFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectionFrame>(create);
  static DisconnectionFrame? _defaultInstance;

  /// Apply safe-to-disconnect protocol if true.
  @$pb.TagNumber(1)
  $core.bool get requestSafeToDisconnect => $_getBF(0);
  @$pb.TagNumber(1)
  set requestSafeToDisconnect($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestSafeToDisconnect() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestSafeToDisconnect() => clearField(1);

  /// Ack of receiving Disconnection frame will be sent to the sender
  /// frame.
  @$pb.TagNumber(2)
  $core.bool get ackSafeToDisconnect => $_getBF(1);
  @$pb.TagNumber(2)
  set ackSafeToDisconnect($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAckSafeToDisconnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearAckSafeToDisconnect() => clearField(2);
}

/// A paired key encryption packet sent between devices, contains signed data.
class PairedKeyEncryptionFrame extends $pb.GeneratedMessage {
  factory PairedKeyEncryptionFrame({
    $core.List<$core.int>? signedData,
  }) {
    final $result = create();
    if (signedData != null) {
      $result.signedData = signedData;
    }
    return $result;
  }
  PairedKeyEncryptionFrame._() : super();
  factory PairedKeyEncryptionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairedKeyEncryptionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PairedKeyEncryptionFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'signedData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairedKeyEncryptionFrame clone() => PairedKeyEncryptionFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairedKeyEncryptionFrame copyWith(void Function(PairedKeyEncryptionFrame) updates) => super.copyWith((message) => updates(message as PairedKeyEncryptionFrame)) as PairedKeyEncryptionFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairedKeyEncryptionFrame create() => PairedKeyEncryptionFrame._();
  PairedKeyEncryptionFrame createEmptyInstance() => create();
  static $pb.PbList<PairedKeyEncryptionFrame> createRepeated() => $pb.PbList<PairedKeyEncryptionFrame>();
  @$core.pragma('dart2js:noInline')
  static PairedKeyEncryptionFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairedKeyEncryptionFrame>(create);
  static PairedKeyEncryptionFrame? _defaultInstance;

  /// The encrypted data (raw authentication token for the established
  /// connection) in byte array format.
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
    final $result = create();
    if (supports5Ghz != null) {
      $result.supports5Ghz = supports5Ghz;
    }
    if (bssid != null) {
      $result.bssid = bssid;
    }
    if (ipAddress != null) {
      $result.ipAddress = ipAddress;
    }
    if (supports6Ghz != null) {
      $result.supports6Ghz = supports6Ghz;
    }
    if (mobileRadio != null) {
      $result.mobileRadio = mobileRadio;
    }
    if (apFrequency != null) {
      $result.apFrequency = apFrequency;
    }
    if (availableChannels != null) {
      $result.availableChannels = availableChannels;
    }
    if (wifiDirectCliUsableChannels != null) {
      $result.wifiDirectCliUsableChannels = wifiDirectCliUsableChannels;
    }
    if (wifiLanUsableChannels != null) {
      $result.wifiLanUsableChannels = wifiLanUsableChannels;
    }
    if (wifiAwareUsableChannels != null) {
      $result.wifiAwareUsableChannels = wifiAwareUsableChannels;
    }
    if (wifiHotspotStaUsableChannels != null) {
      $result.wifiHotspotStaUsableChannels = wifiHotspotStaUsableChannels;
    }
    return $result;
  }
  MediumMetadata._() : super();
  factory MediumMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MediumMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MediumMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'supports5Ghz', protoName: 'supports_5_ghz')
    ..aOS(2, _omitFieldNames ? '' : 'bssid')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'ipAddress', $pb.PbFieldType.OY)
    ..aOB(4, _omitFieldNames ? '' : 'supports6Ghz', protoName: 'supports_6_ghz')
    ..aOB(5, _omitFieldNames ? '' : 'mobileRadio')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'apFrequency', $pb.PbFieldType.O3, defaultOrMaker: -1)
    ..aOM<AvailableChannels>(7, _omitFieldNames ? '' : 'availableChannels', subBuilder: AvailableChannels.create)
    ..aOM<WifiDirectCliUsableChannels>(8, _omitFieldNames ? '' : 'wifiDirectCliUsableChannels', subBuilder: WifiDirectCliUsableChannels.create)
    ..aOM<WifiLanUsableChannels>(9, _omitFieldNames ? '' : 'wifiLanUsableChannels', subBuilder: WifiLanUsableChannels.create)
    ..aOM<WifiAwareUsableChannels>(10, _omitFieldNames ? '' : 'wifiAwareUsableChannels', subBuilder: WifiAwareUsableChannels.create)
    ..aOM<WifiHotspotStaUsableChannels>(11, _omitFieldNames ? '' : 'wifiHotspotStaUsableChannels', subBuilder: WifiHotspotStaUsableChannels.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MediumMetadata clone() => MediumMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MediumMetadata copyWith(void Function(MediumMetadata) updates) => super.copyWith((message) => updates(message as MediumMetadata)) as MediumMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediumMetadata create() => MediumMetadata._();
  MediumMetadata createEmptyInstance() => create();
  static $pb.PbList<MediumMetadata> createRepeated() => $pb.PbList<MediumMetadata>();
  @$core.pragma('dart2js:noInline')
  static MediumMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MediumMetadata>(create);
  static MediumMetadata? _defaultInstance;

  /// True if local device supports 5GHz.
  @$pb.TagNumber(1)
  $core.bool get supports5Ghz => $_getBF(0);
  @$pb.TagNumber(1)
  set supports5Ghz($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupports5Ghz() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupports5Ghz() => clearField(1);

  /// WiFi LAN BSSID, in the form of a six-byte MAC address: XX:XX:XX:XX:XX:XX
  @$pb.TagNumber(2)
  $core.String get bssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBssid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBssid() => clearField(2);

  /// IP address, in network byte order: the highest order byte of the address is
  /// in byte[0].
  @$pb.TagNumber(3)
  $core.List<$core.int> get ipAddress => $_getN(2);
  @$pb.TagNumber(3)
  set ipAddress($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpAddress() => clearField(3);

  /// True if local device supports 6GHz.
  @$pb.TagNumber(4)
  $core.bool get supports6Ghz => $_getBF(3);
  @$pb.TagNumber(4)
  set supports6Ghz($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSupports6Ghz() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupports6Ghz() => clearField(4);

  /// True if local device has mobile radio.
  @$pb.TagNumber(5)
  $core.bool get mobileRadio => $_getBF(4);
  @$pb.TagNumber(5)
  set mobileRadio($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMobileRadio() => $_has(4);
  @$pb.TagNumber(5)
  void clearMobileRadio() => clearField(5);

  /// The frequency of the WiFi LAN AP(in MHz). Or -1 is not associated with an
  /// AP over WiFi, -2 represents the active network uses an Ethernet transport.
  @$pb.TagNumber(6)
  $core.int get apFrequency => $_getI(5, -1);
  @$pb.TagNumber(6)
  set apFrequency($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasApFrequency() => $_has(5);
  @$pb.TagNumber(6)
  void clearApFrequency() => clearField(6);

  /// Available channels on the local device.
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

  /// Usable WiFi Direct client channels on the local device.
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

  /// Usable WiFi LAN channels on the local device.
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

  /// Usable WiFi Aware channels on the local device.
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

  /// Usable WiFi Hotspot STA channels on the local device.
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

/// Available channels on the local device.
class AvailableChannels extends $pb.GeneratedMessage {
  factory AvailableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  AvailableChannels._() : super();
  factory AvailableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AvailableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AvailableChannels', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AvailableChannels clone() => AvailableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AvailableChannels copyWith(void Function(AvailableChannels) updates) => super.copyWith((message) => updates(message as AvailableChannels)) as AvailableChannels;

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

/// Usable WiFi Direct client channels on the local device.
class WifiDirectCliUsableChannels extends $pb.GeneratedMessage {
  factory WifiDirectCliUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  WifiDirectCliUsableChannels._() : super();
  factory WifiDirectCliUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiDirectCliUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiDirectCliUsableChannels', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiDirectCliUsableChannels clone() => WifiDirectCliUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiDirectCliUsableChannels copyWith(void Function(WifiDirectCliUsableChannels) updates) => super.copyWith((message) => updates(message as WifiDirectCliUsableChannels)) as WifiDirectCliUsableChannels;

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

/// Usable WiFi LAN channels on the local device.
class WifiLanUsableChannels extends $pb.GeneratedMessage {
  factory WifiLanUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  WifiLanUsableChannels._() : super();
  factory WifiLanUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiLanUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiLanUsableChannels', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiLanUsableChannels clone() => WifiLanUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiLanUsableChannels copyWith(void Function(WifiLanUsableChannels) updates) => super.copyWith((message) => updates(message as WifiLanUsableChannels)) as WifiLanUsableChannels;

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

/// Usable WiFi Aware channels on the local device.
class WifiAwareUsableChannels extends $pb.GeneratedMessage {
  factory WifiAwareUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  WifiAwareUsableChannels._() : super();
  factory WifiAwareUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiAwareUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiAwareUsableChannels', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiAwareUsableChannels clone() => WifiAwareUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiAwareUsableChannels copyWith(void Function(WifiAwareUsableChannels) updates) => super.copyWith((message) => updates(message as WifiAwareUsableChannels)) as WifiAwareUsableChannels;

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

/// Usable WiFi Hotspot STA channels on the local device.
class WifiHotspotStaUsableChannels extends $pb.GeneratedMessage {
  factory WifiHotspotStaUsableChannels({
    $core.Iterable<$core.int>? channels,
  }) {
    final $result = create();
    if (channels != null) {
      $result.channels.addAll(channels);
    }
    return $result;
  }
  WifiHotspotStaUsableChannels._() : super();
  factory WifiHotspotStaUsableChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiHotspotStaUsableChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiHotspotStaUsableChannels', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'channels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiHotspotStaUsableChannels clone() => WifiHotspotStaUsableChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiHotspotStaUsableChannels copyWith(void Function(WifiHotspotStaUsableChannels) updates) => super.copyWith((message) => updates(message as WifiHotspotStaUsableChannels)) as WifiHotspotStaUsableChannels;

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

/// LocationHint is used to specify a location as well as format.
class LocationHint extends $pb.GeneratedMessage {
  factory LocationHint({
    $core.String? location,
    LocationStandard_Format? format,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    if (format != null) {
      $result.format = format;
    }
    return $result;
  }
  LocationHint._() : super();
  factory LocationHint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationHint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationHint', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'location')
    ..e<LocationStandard_Format>(2, _omitFieldNames ? '' : 'format', $pb.PbFieldType.OE, defaultOrMaker: LocationStandard_Format.UNKNOWN, valueOf: LocationStandard_Format.valueOf, enumValues: LocationStandard_Format.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationHint clone() => LocationHint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationHint copyWith(void Function(LocationHint) updates) => super.copyWith((message) => updates(message as LocationHint)) as LocationHint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationHint create() => LocationHint._();
  LocationHint createEmptyInstance() => create();
  static $pb.PbList<LocationHint> createRepeated() => $pb.PbList<LocationHint>();
  @$core.pragma('dart2js:noInline')
  static LocationHint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationHint>(create);
  static LocationHint? _defaultInstance;

  /// Location is the location, provided in the format specified by format.
  @$pb.TagNumber(1)
  $core.String get location => $_getSZ(0);
  @$pb.TagNumber(1)
  set location($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);

  /// the format of location.
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
  factory LocationStandard() => create();
  LocationStandard._() : super();
  factory LocationStandard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationStandard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationStandard', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationStandard clone() => LocationStandard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationStandard copyWith(void Function(LocationStandard) updates) => super.copyWith((message) => updates(message as LocationStandard)) as LocationStandard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationStandard create() => LocationStandard._();
  LocationStandard createEmptyInstance() => create();
  static $pb.PbList<LocationStandard> createRepeated() => $pb.PbList<LocationStandard>();
  @$core.pragma('dart2js:noInline')
  static LocationStandard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationStandard>(create);
  static LocationStandard? _defaultInstance;
}

/// Device capability for OS information.
class OsInfo extends $pb.GeneratedMessage {
  factory OsInfo({
    OsInfo_OsType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  OsInfo._() : super();
  factory OsInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OsInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OsInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'location.nearby.connections'), createEmptyInstance: create)
    ..e<OsInfo_OsType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: OsInfo_OsType.UNKNOWN_OS_TYPE, valueOf: OsInfo_OsType.valueOf, enumValues: OsInfo_OsType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OsInfo clone() => OsInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OsInfo copyWith(void Function(OsInfo) updates) => super.copyWith((message) => updates(message as OsInfo)) as OsInfo;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
