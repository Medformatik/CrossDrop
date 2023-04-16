///
//  Generated code. Do not modify.
//  source: wire_format.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wire_format.pbenum.dart';

export 'wire_format.pbenum.dart';

class FileMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<FileMetadata_Type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FileMetadata_Type.UNKNOWN, valueOf: FileMetadata_Type.valueOf, enumValues: FileMetadata_Type.values)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadId')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..a<$core.String>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType', $pb.PbFieldType.OS, defaultOrMaker: 'application/octet-stream')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  FileMetadata._() : super();
  factory FileMetadata({
    $core.String? name,
    FileMetadata_Type? type,
    $fixnum.Int64? payloadId,
    $fixnum.Int64? size,
    $core.String? mimeType,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (payloadId != null) {
      _result.payloadId = payloadId;
    }
    if (size != null) {
      _result.size = size;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory FileMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileMetadata clone() => FileMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileMetadata copyWith(void Function(FileMetadata) updates) => super.copyWith((message) => updates(message as FileMetadata)) as FileMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileMetadata create() => FileMetadata._();
  FileMetadata createEmptyInstance() => create();
  static $pb.PbList<FileMetadata> createRepeated() => $pb.PbList<FileMetadata>();
  @$core.pragma('dart2js:noInline')
  static FileMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileMetadata>(create);
  static FileMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  FileMetadata_Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(FileMetadata_Type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get payloadId => $_getI64(2);
  @$pb.TagNumber(3)
  set payloadId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get mimeType => $_getS(4, 'application/octet-stream');
  @$pb.TagNumber(5)
  set mimeType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMimeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearMimeType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get id => $_getI64(5);
  @$pb.TagNumber(6)
  set id($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);
}

class TextMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TextMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textTitle')
    ..e<TextMetadata_Type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TextMetadata_Type.UNKNOWN, valueOf: TextMetadata_Type.valueOf, enumValues: TextMetadata_Type.values)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadId')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  TextMetadata._() : super();
  factory TextMetadata({
    $core.String? textTitle,
    TextMetadata_Type? type,
    $fixnum.Int64? payloadId,
    $fixnum.Int64? size,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (textTitle != null) {
      _result.textTitle = textTitle;
    }
    if (type != null) {
      _result.type = type;
    }
    if (payloadId != null) {
      _result.payloadId = payloadId;
    }
    if (size != null) {
      _result.size = size;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TextMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TextMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TextMetadata clone() => TextMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TextMetadata copyWith(void Function(TextMetadata) updates) => super.copyWith((message) => updates(message as TextMetadata)) as TextMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TextMetadata create() => TextMetadata._();
  TextMetadata createEmptyInstance() => create();
  static $pb.PbList<TextMetadata> createRepeated() => $pb.PbList<TextMetadata>();
  @$core.pragma('dart2js:noInline')
  static TextMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextMetadata>(create);
  static TextMetadata? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get textTitle => $_getSZ(0);
  @$pb.TagNumber(2)
  set textTitle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTextTitle() => $_has(0);
  @$pb.TagNumber(2)
  void clearTextTitle() => clearField(2);

  @$pb.TagNumber(3)
  TextMetadata_Type get type => $_getN(1);
  @$pb.TagNumber(3)
  set type(TextMetadata_Type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get payloadId => $_getI64(2);
  @$pb.TagNumber(4)
  set payloadId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayloadId() => $_has(2);
  @$pb.TagNumber(4)
  void clearPayloadId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(5)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(5)
  void clearSize() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(6)
  set id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);
}

class WifiCredentialsMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiCredentialsMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ssid')
    ..e<WifiCredentialsMetadata_SecurityType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'securityType', $pb.PbFieldType.OE, defaultOrMaker: WifiCredentialsMetadata_SecurityType.UNKNOWN_SECURITY_TYPE, valueOf: WifiCredentialsMetadata_SecurityType.valueOf, enumValues: WifiCredentialsMetadata_SecurityType.values)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadId')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  WifiCredentialsMetadata._() : super();
  factory WifiCredentialsMetadata({
    $core.String? ssid,
    WifiCredentialsMetadata_SecurityType? securityType,
    $fixnum.Int64? payloadId,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (ssid != null) {
      _result.ssid = ssid;
    }
    if (securityType != null) {
      _result.securityType = securityType;
    }
    if (payloadId != null) {
      _result.payloadId = payloadId;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory WifiCredentialsMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCredentialsMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCredentialsMetadata clone() => WifiCredentialsMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCredentialsMetadata copyWith(void Function(WifiCredentialsMetadata) updates) => super.copyWith((message) => updates(message as WifiCredentialsMetadata)) as WifiCredentialsMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiCredentialsMetadata create() => WifiCredentialsMetadata._();
  WifiCredentialsMetadata createEmptyInstance() => create();
  static $pb.PbList<WifiCredentialsMetadata> createRepeated() => $pb.PbList<WifiCredentialsMetadata>();
  @$core.pragma('dart2js:noInline')
  static WifiCredentialsMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCredentialsMetadata>(create);
  static WifiCredentialsMetadata? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(2)
  set ssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(2)
  void clearSsid() => clearField(2);

  @$pb.TagNumber(3)
  WifiCredentialsMetadata_SecurityType get securityType => $_getN(1);
  @$pb.TagNumber(3)
  set securityType(WifiCredentialsMetadata_SecurityType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecurityType() => $_has(1);
  @$pb.TagNumber(3)
  void clearSecurityType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get payloadId => $_getI64(2);
  @$pb.TagNumber(4)
  set payloadId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayloadId() => $_has(2);
  @$pb.TagNumber(4)
  void clearPayloadId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(3);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);
}

class Frame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Frame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<Frame_Version>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: Frame_Version.UNKNOWN_VERSION, valueOf: Frame_Version.valueOf, enumValues: Frame_Version.values)
    ..aOM<V1Frame>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v1', subBuilder: V1Frame.create)
    ..hasRequiredFields = false
  ;

  Frame._() : super();
  factory Frame({
    Frame_Version? version,
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
  factory Frame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Frame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Frame clone() => Frame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Frame copyWith(void Function(Frame) updates) => super.copyWith((message) => updates(message as Frame)) as Frame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Frame create() => Frame._();
  Frame createEmptyInstance() => create();
  static $pb.PbList<Frame> createRepeated() => $pb.PbList<Frame>();
  @$core.pragma('dart2js:noInline')
  static Frame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Frame>(create);
  static Frame? _defaultInstance;

  @$pb.TagNumber(1)
  Frame_Version get version => $_getN(0);
  @$pb.TagNumber(1)
  set version(Frame_Version v) { setField(1, v); }
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'V1Frame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<V1Frame_FrameType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: V1Frame_FrameType.UNKNOWN_FRAME_TYPE, valueOf: V1Frame_FrameType.valueOf, enumValues: V1Frame_FrameType.values)
    ..aOM<IntroductionFrame>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction', subBuilder: IntroductionFrame.create)
    ..aOM<ConnectionResponseFrame>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectionResponse', subBuilder: ConnectionResponseFrame.create)
    ..aOM<PairedKeyEncryptionFrame>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairedKeyEncryption', subBuilder: PairedKeyEncryptionFrame.create)
    ..aOM<PairedKeyResultFrame>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairedKeyResult', subBuilder: PairedKeyResultFrame.create)
    ..aOM<CertificateInfoFrame>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'certificateInfo', subBuilder: CertificateInfoFrame.create)
    ..hasRequiredFields = false
  ;

  V1Frame._() : super();
  factory V1Frame({
    V1Frame_FrameType? type,
    IntroductionFrame? introduction,
    ConnectionResponseFrame? connectionResponse,
    PairedKeyEncryptionFrame? pairedKeyEncryption,
    PairedKeyResultFrame? pairedKeyResult,
    CertificateInfoFrame? certificateInfo,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (introduction != null) {
      _result.introduction = introduction;
    }
    if (connectionResponse != null) {
      _result.connectionResponse = connectionResponse;
    }
    if (pairedKeyEncryption != null) {
      _result.pairedKeyEncryption = pairedKeyEncryption;
    }
    if (pairedKeyResult != null) {
      _result.pairedKeyResult = pairedKeyResult;
    }
    if (certificateInfo != null) {
      _result.certificateInfo = certificateInfo;
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
  IntroductionFrame get introduction => $_getN(1);
  @$pb.TagNumber(2)
  set introduction(IntroductionFrame v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntroduction() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntroduction() => clearField(2);
  @$pb.TagNumber(2)
  IntroductionFrame ensureIntroduction() => $_ensure(1);

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
  PairedKeyEncryptionFrame get pairedKeyEncryption => $_getN(3);
  @$pb.TagNumber(4)
  set pairedKeyEncryption(PairedKeyEncryptionFrame v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPairedKeyEncryption() => $_has(3);
  @$pb.TagNumber(4)
  void clearPairedKeyEncryption() => clearField(4);
  @$pb.TagNumber(4)
  PairedKeyEncryptionFrame ensurePairedKeyEncryption() => $_ensure(3);

  @$pb.TagNumber(5)
  PairedKeyResultFrame get pairedKeyResult => $_getN(4);
  @$pb.TagNumber(5)
  set pairedKeyResult(PairedKeyResultFrame v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPairedKeyResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearPairedKeyResult() => clearField(5);
  @$pb.TagNumber(5)
  PairedKeyResultFrame ensurePairedKeyResult() => $_ensure(4);

  @$pb.TagNumber(6)
  CertificateInfoFrame get certificateInfo => $_getN(5);
  @$pb.TagNumber(6)
  set certificateInfo(CertificateInfoFrame v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCertificateInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearCertificateInfo() => clearField(6);
  @$pb.TagNumber(6)
  CertificateInfoFrame ensureCertificateInfo() => $_ensure(5);
}

class IntroductionFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IntroductionFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..pc<FileMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileMetadata', $pb.PbFieldType.PM, subBuilder: FileMetadata.create)
    ..pc<TextMetadata>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textMetadata', $pb.PbFieldType.PM, subBuilder: TextMetadata.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requiredPackage')
    ..pc<WifiCredentialsMetadata>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wifiCredentialsMetadata', $pb.PbFieldType.PM, subBuilder: WifiCredentialsMetadata.create)
    ..hasRequiredFields = false
  ;

  IntroductionFrame._() : super();
  factory IntroductionFrame({
    $core.Iterable<FileMetadata>? fileMetadata,
    $core.Iterable<TextMetadata>? textMetadata,
    $core.String? requiredPackage,
    $core.Iterable<WifiCredentialsMetadata>? wifiCredentialsMetadata,
  }) {
    final _result = create();
    if (fileMetadata != null) {
      _result.fileMetadata.addAll(fileMetadata);
    }
    if (textMetadata != null) {
      _result.textMetadata.addAll(textMetadata);
    }
    if (requiredPackage != null) {
      _result.requiredPackage = requiredPackage;
    }
    if (wifiCredentialsMetadata != null) {
      _result.wifiCredentialsMetadata.addAll(wifiCredentialsMetadata);
    }
    return _result;
  }
  factory IntroductionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntroductionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntroductionFrame clone() => IntroductionFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntroductionFrame copyWith(void Function(IntroductionFrame) updates) => super.copyWith((message) => updates(message as IntroductionFrame)) as IntroductionFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IntroductionFrame create() => IntroductionFrame._();
  IntroductionFrame createEmptyInstance() => create();
  static $pb.PbList<IntroductionFrame> createRepeated() => $pb.PbList<IntroductionFrame>();
  @$core.pragma('dart2js:noInline')
  static IntroductionFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntroductionFrame>(create);
  static IntroductionFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FileMetadata> get fileMetadata => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TextMetadata> get textMetadata => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get requiredPackage => $_getSZ(2);
  @$pb.TagNumber(3)
  set requiredPackage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequiredPackage() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequiredPackage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<WifiCredentialsMetadata> get wifiCredentialsMetadata => $_getList(3);
}

class ConnectionResponseFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectionResponseFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<ConnectionResponseFrame_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ConnectionResponseFrame_Status.UNKNOWN, valueOf: ConnectionResponseFrame_Status.valueOf, enumValues: ConnectionResponseFrame_Status.values)
    ..hasRequiredFields = false
  ;

  ConnectionResponseFrame._() : super();
  factory ConnectionResponseFrame({
    ConnectionResponseFrame_Status? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
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

  @$pb.TagNumber(1)
  ConnectionResponseFrame_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ConnectionResponseFrame_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class PairedKeyEncryptionFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PairedKeyEncryptionFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signedData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secretIdHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionalSignedData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PairedKeyEncryptionFrame._() : super();
  factory PairedKeyEncryptionFrame({
    $core.List<$core.int>? signedData,
    $core.List<$core.int>? secretIdHash,
    $core.List<$core.int>? optionalSignedData,
  }) {
    final _result = create();
    if (signedData != null) {
      _result.signedData = signedData;
    }
    if (secretIdHash != null) {
      _result.secretIdHash = secretIdHash;
    }
    if (optionalSignedData != null) {
      _result.optionalSignedData = optionalSignedData;
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

  @$pb.TagNumber(2)
  $core.List<$core.int> get secretIdHash => $_getN(1);
  @$pb.TagNumber(2)
  set secretIdHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecretIdHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretIdHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get optionalSignedData => $_getN(2);
  @$pb.TagNumber(3)
  set optionalSignedData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptionalSignedData() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptionalSignedData() => clearField(3);
}

class PairedKeyResultFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PairedKeyResultFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<PairedKeyResultFrame_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: PairedKeyResultFrame_Status.UNKNOWN, valueOf: PairedKeyResultFrame_Status.valueOf, enumValues: PairedKeyResultFrame_Status.values)
    ..hasRequiredFields = false
  ;

  PairedKeyResultFrame._() : super();
  factory PairedKeyResultFrame({
    PairedKeyResultFrame_Status? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory PairedKeyResultFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairedKeyResultFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairedKeyResultFrame clone() => PairedKeyResultFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairedKeyResultFrame copyWith(void Function(PairedKeyResultFrame) updates) => super.copyWith((message) => updates(message as PairedKeyResultFrame)) as PairedKeyResultFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairedKeyResultFrame create() => PairedKeyResultFrame._();
  PairedKeyResultFrame createEmptyInstance() => create();
  static $pb.PbList<PairedKeyResultFrame> createRepeated() => $pb.PbList<PairedKeyResultFrame>();
  @$core.pragma('dart2js:noInline')
  static PairedKeyResultFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairedKeyResultFrame>(create);
  static PairedKeyResultFrame? _defaultInstance;

  @$pb.TagNumber(1)
  PairedKeyResultFrame_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(PairedKeyResultFrame_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class CertificateInfoFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CertificateInfoFrame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..pc<PublicCertificate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicCertificate', $pb.PbFieldType.PM, subBuilder: PublicCertificate.create)
    ..hasRequiredFields = false
  ;

  CertificateInfoFrame._() : super();
  factory CertificateInfoFrame({
    $core.Iterable<PublicCertificate>? publicCertificate,
  }) {
    final _result = create();
    if (publicCertificate != null) {
      _result.publicCertificate.addAll(publicCertificate);
    }
    return _result;
  }
  factory CertificateInfoFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateInfoFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateInfoFrame clone() => CertificateInfoFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateInfoFrame copyWith(void Function(CertificateInfoFrame) updates) => super.copyWith((message) => updates(message as CertificateInfoFrame)) as CertificateInfoFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CertificateInfoFrame create() => CertificateInfoFrame._();
  CertificateInfoFrame createEmptyInstance() => create();
  static $pb.PbList<CertificateInfoFrame> createRepeated() => $pb.PbList<CertificateInfoFrame>();
  @$core.pragma('dart2js:noInline')
  static CertificateInfoFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateInfoFrame>(create);
  static CertificateInfoFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PublicCertificate> get publicCertificate => $_getList(0);
}

class PublicCertificate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicCertificate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secretId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authenticityKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptedMetadataBytes', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadataEncryptionKeyTag', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PublicCertificate._() : super();
  factory PublicCertificate({
    $core.List<$core.int>? secretId,
    $core.List<$core.int>? authenticityKey,
    $core.List<$core.int>? publicKey,
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
    $core.List<$core.int>? encryptedMetadataBytes,
    $core.List<$core.int>? metadataEncryptionKeyTag,
  }) {
    final _result = create();
    if (secretId != null) {
      _result.secretId = secretId;
    }
    if (authenticityKey != null) {
      _result.authenticityKey = authenticityKey;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (encryptedMetadataBytes != null) {
      _result.encryptedMetadataBytes = encryptedMetadataBytes;
    }
    if (metadataEncryptionKeyTag != null) {
      _result.metadataEncryptionKeyTag = metadataEncryptionKeyTag;
    }
    return _result;
  }
  factory PublicCertificate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicCertificate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicCertificate clone() => PublicCertificate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicCertificate copyWith(void Function(PublicCertificate) updates) => super.copyWith((message) => updates(message as PublicCertificate)) as PublicCertificate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicCertificate create() => PublicCertificate._();
  PublicCertificate createEmptyInstance() => create();
  static $pb.PbList<PublicCertificate> createRepeated() => $pb.PbList<PublicCertificate>();
  @$core.pragma('dart2js:noInline')
  static PublicCertificate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicCertificate>(create);
  static PublicCertificate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get secretId => $_getN(0);
  @$pb.TagNumber(1)
  set secretId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecretId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authenticityKey => $_getN(1);
  @$pb.TagNumber(2)
  set authenticityKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthenticityKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthenticityKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get publicKey => $_getN(2);
  @$pb.TagNumber(3)
  set publicKey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startTime => $_getI64(3);
  @$pb.TagNumber(4)
  set startTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endTime => $_getI64(4);
  @$pb.TagNumber(5)
  set endTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get encryptedMetadataBytes => $_getN(5);
  @$pb.TagNumber(6)
  set encryptedMetadataBytes($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncryptedMetadataBytes() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncryptedMetadataBytes() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get metadataEncryptionKeyTag => $_getN(6);
  @$pb.TagNumber(7)
  set metadataEncryptionKeyTag($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMetadataEncryptionKeyTag() => $_has(6);
  @$pb.TagNumber(7)
  void clearMetadataEncryptionKeyTag() => clearField(7);
}

class WifiCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WifiCredentials', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hiddenSsid')
    ..hasRequiredFields = false
  ;

  WifiCredentials._() : super();
  factory WifiCredentials({
    $core.String? password,
    $core.bool? hiddenSsid,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    if (hiddenSsid != null) {
      _result.hiddenSsid = hiddenSsid;
    }
    return _result;
  }
  factory WifiCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCredentials clone() => WifiCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCredentials copyWith(void Function(WifiCredentials) updates) => super.copyWith((message) => updates(message as WifiCredentials)) as WifiCredentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WifiCredentials create() => WifiCredentials._();
  WifiCredentials createEmptyInstance() => create();
  static $pb.PbList<WifiCredentials> createRepeated() => $pb.PbList<WifiCredentials>();
  @$core.pragma('dart2js:noInline')
  static WifiCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCredentials>(create);
  static WifiCredentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hiddenSsid => $_getBF(1);
  @$pb.TagNumber(2)
  set hiddenSsid($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHiddenSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearHiddenSsid() => clearField(2);
}

