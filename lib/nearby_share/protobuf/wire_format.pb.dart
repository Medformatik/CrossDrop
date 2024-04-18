//
//  Generated code. Do not modify.
//  source: wire_format.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wire_format.pbenum.dart';

export 'wire_format.pbenum.dart';

/// File metadata. Does not include the actual bytes of the file.
/// NEXT_ID=6
class FileMetadata extends $pb.GeneratedMessage {
  factory FileMetadata({
    $core.String? name,
    FileMetadata_Type? type,
    $fixnum.Int64? payloadId,
    $fixnum.Int64? size,
    $core.String? mimeType,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (payloadId != null) {
      $result.payloadId = payloadId;
    }
    if (size != null) {
      $result.size = size;
    }
    if (mimeType != null) {
      $result.mimeType = mimeType;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  FileMetadata._() : super();
  factory FileMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..e<FileMetadata_Type>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FileMetadata_Type.UNKNOWN, valueOf: FileMetadata_Type.valueOf, enumValues: FileMetadata_Type.values)
    ..aInt64(3, _omitFieldNames ? '' : 'payloadId')
    ..aInt64(4, _omitFieldNames ? '' : 'size')
    ..a<$core.String>(5, _omitFieldNames ? '' : 'mimeType', $pb.PbFieldType.OS, defaultOrMaker: 'application/octet-stream')
    ..aInt64(6, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileMetadata clone() => FileMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileMetadata copyWith(void Function(FileMetadata) updates) => super.copyWith((message) => updates(message as FileMetadata)) as FileMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileMetadata create() => FileMetadata._();
  FileMetadata createEmptyInstance() => create();
  static $pb.PbList<FileMetadata> createRepeated() => $pb.PbList<FileMetadata>();
  @$core.pragma('dart2js:noInline')
  static FileMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileMetadata>(create);
  static FileMetadata? _defaultInstance;

  /// The human readable name of this file (eg. 'Cookbook.pdf').
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// The type of file (eg. 'IMAGE' from 'dog.jpg'). Specifying a type helps
  /// provide a richer experience on the receiving side.
  @$pb.TagNumber(2)
  FileMetadata_Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(FileMetadata_Type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// The FILE payload id that will be sent as a follow up containing the actual
  /// bytes of the file.
  @$pb.TagNumber(3)
  $fixnum.Int64 get payloadId => $_getI64(2);
  @$pb.TagNumber(3)
  set payloadId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayloadId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadId() => clearField(3);

  /// The total size of the file.
  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  /// The mimeType of file (eg. 'image/jpeg' from 'dog.jpg'). Specifying a
  /// mimeType helps provide a richer experience on receiving side.
  @$pb.TagNumber(5)
  $core.String get mimeType => $_getS(4, 'application/octet-stream');
  @$pb.TagNumber(5)
  set mimeType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMimeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearMimeType() => clearField(5);

  /// A uuid for the attachment. Should be unique across all attachments.
  @$pb.TagNumber(6)
  $fixnum.Int64 get id => $_getI64(5);
  @$pb.TagNumber(6)
  set id($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);
}

/// NEXT_ID=5
class TextMetadata extends $pb.GeneratedMessage {
  factory TextMetadata({
    $core.String? textTitle,
    TextMetadata_Type? type,
    $fixnum.Int64? payloadId,
    $fixnum.Int64? size,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (textTitle != null) {
      $result.textTitle = textTitle;
    }
    if (type != null) {
      $result.type = type;
    }
    if (payloadId != null) {
      $result.payloadId = payloadId;
    }
    if (size != null) {
      $result.size = size;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  TextMetadata._() : super();
  factory TextMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TextMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TextMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'textTitle')
    ..e<TextMetadata_Type>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TextMetadata_Type.UNKNOWN, valueOf: TextMetadata_Type.valueOf, enumValues: TextMetadata_Type.values)
    ..aInt64(4, _omitFieldNames ? '' : 'payloadId')
    ..aInt64(5, _omitFieldNames ? '' : 'size')
    ..aInt64(6, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TextMetadata clone() => TextMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TextMetadata copyWith(void Function(TextMetadata) updates) => super.copyWith((message) => updates(message as TextMetadata)) as TextMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextMetadata create() => TextMetadata._();
  TextMetadata createEmptyInstance() => create();
  static $pb.PbList<TextMetadata> createRepeated() => $pb.PbList<TextMetadata>();
  @$core.pragma('dart2js:noInline')
  static TextMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextMetadata>(create);
  static TextMetadata? _defaultInstance;

  /// The title of the text content.
  @$pb.TagNumber(2)
  $core.String get textTitle => $_getSZ(0);
  @$pb.TagNumber(2)
  set textTitle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTextTitle() => $_has(0);
  @$pb.TagNumber(2)
  void clearTextTitle() => clearField(2);

  /// The type of text (phone number, url, address, or plain text).
  @$pb.TagNumber(3)
  TextMetadata_Type get type => $_getN(1);
  @$pb.TagNumber(3)
  set type(TextMetadata_Type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  /// The BYTE payload id that will be sent as a follow up containing the actual
  /// bytes of the text.
  @$pb.TagNumber(4)
  $fixnum.Int64 get payloadId => $_getI64(2);
  @$pb.TagNumber(4)
  set payloadId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayloadId() => $_has(2);
  @$pb.TagNumber(4)
  void clearPayloadId() => clearField(4);

  /// The size of the text content.
  @$pb.TagNumber(5)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(5)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(5)
  void clearSize() => clearField(5);

  /// A uuid for the attachment. Should be unique across all attachments.
  @$pb.TagNumber(6)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(6)
  set id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(6)
  void clearId() => clearField(6);
}

/// NEXT_ID=5
class WifiCredentialsMetadata extends $pb.GeneratedMessage {
  factory WifiCredentialsMetadata({
    $core.String? ssid,
    WifiCredentialsMetadata_SecurityType? securityType,
    $fixnum.Int64? payloadId,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (securityType != null) {
      $result.securityType = securityType;
    }
    if (payloadId != null) {
      $result.payloadId = payloadId;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  WifiCredentialsMetadata._() : super();
  factory WifiCredentialsMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCredentialsMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiCredentialsMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'ssid')
    ..e<WifiCredentialsMetadata_SecurityType>(3, _omitFieldNames ? '' : 'securityType', $pb.PbFieldType.OE, defaultOrMaker: WifiCredentialsMetadata_SecurityType.UNKNOWN_SECURITY_TYPE, valueOf: WifiCredentialsMetadata_SecurityType.valueOf, enumValues: WifiCredentialsMetadata_SecurityType.values)
    ..aInt64(4, _omitFieldNames ? '' : 'payloadId')
    ..aInt64(5, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCredentialsMetadata clone() => WifiCredentialsMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCredentialsMetadata copyWith(void Function(WifiCredentialsMetadata) updates) => super.copyWith((message) => updates(message as WifiCredentialsMetadata)) as WifiCredentialsMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiCredentialsMetadata create() => WifiCredentialsMetadata._();
  WifiCredentialsMetadata createEmptyInstance() => create();
  static $pb.PbList<WifiCredentialsMetadata> createRepeated() => $pb.PbList<WifiCredentialsMetadata>();
  @$core.pragma('dart2js:noInline')
  static WifiCredentialsMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCredentialsMetadata>(create);
  static WifiCredentialsMetadata? _defaultInstance;

  /// The Wifi network name. This will be sent in introduction.
  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(2)
  set ssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(2)
  void clearSsid() => clearField(2);

  /// The security type of network (OPEN, WPA_PSK, WEP).
  @$pb.TagNumber(3)
  WifiCredentialsMetadata_SecurityType get securityType => $_getN(1);
  @$pb.TagNumber(3)
  set securityType(WifiCredentialsMetadata_SecurityType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecurityType() => $_has(1);
  @$pb.TagNumber(3)
  void clearSecurityType() => clearField(3);

  /// The BYTE payload id that will be sent as a follow up containing the
  /// password.
  @$pb.TagNumber(4)
  $fixnum.Int64 get payloadId => $_getI64(2);
  @$pb.TagNumber(4)
  set payloadId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayloadId() => $_has(2);
  @$pb.TagNumber(4)
  void clearPayloadId() => clearField(4);

  /// A uuid for the attachment. Should be unique across all attachments.
  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(3);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);
}

/// A frame used when sending messages over the wire.
/// NEXT_ID=3
class Frame extends $pb.GeneratedMessage {
  factory Frame({
    Frame_Version? version,
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
  Frame._() : super();
  factory Frame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Frame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Frame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<Frame_Version>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: Frame_Version.UNKNOWN_VERSION, valueOf: Frame_Version.valueOf, enumValues: Frame_Version.values)
    ..aOM<V1Frame>(2, _omitFieldNames ? '' : 'v1', subBuilder: V1Frame.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Frame clone() => Frame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Frame copyWith(void Function(Frame) updates) => super.copyWith((message) => updates(message as Frame)) as Frame;

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

/// NEXT_ID=7
class V1Frame extends $pb.GeneratedMessage {
  factory V1Frame({
    V1Frame_FrameType? type,
    IntroductionFrame? introduction,
    ConnectionResponseFrame? connectionResponse,
    PairedKeyEncryptionFrame? pairedKeyEncryption,
    PairedKeyResultFrame? pairedKeyResult,
    CertificateInfoFrame? certificateInfo,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (introduction != null) {
      $result.introduction = introduction;
    }
    if (connectionResponse != null) {
      $result.connectionResponse = connectionResponse;
    }
    if (pairedKeyEncryption != null) {
      $result.pairedKeyEncryption = pairedKeyEncryption;
    }
    if (pairedKeyResult != null) {
      $result.pairedKeyResult = pairedKeyResult;
    }
    if (certificateInfo != null) {
      $result.certificateInfo = certificateInfo;
    }
    return $result;
  }
  V1Frame._() : super();
  factory V1Frame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory V1Frame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'V1Frame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<V1Frame_FrameType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: V1Frame_FrameType.UNKNOWN_FRAME_TYPE, valueOf: V1Frame_FrameType.valueOf, enumValues: V1Frame_FrameType.values)
    ..aOM<IntroductionFrame>(2, _omitFieldNames ? '' : 'introduction', subBuilder: IntroductionFrame.create)
    ..aOM<ConnectionResponseFrame>(3, _omitFieldNames ? '' : 'connectionResponse', subBuilder: ConnectionResponseFrame.create)
    ..aOM<PairedKeyEncryptionFrame>(4, _omitFieldNames ? '' : 'pairedKeyEncryption', subBuilder: PairedKeyEncryptionFrame.create)
    ..aOM<PairedKeyResultFrame>(5, _omitFieldNames ? '' : 'pairedKeyResult', subBuilder: PairedKeyResultFrame.create)
    ..aOM<CertificateInfoFrame>(6, _omitFieldNames ? '' : 'certificateInfo', subBuilder: CertificateInfoFrame.create)
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

/// An introduction packet sent by the sending side. Contains a list of files
/// they'd like to share.
/// NEXT_ID=4
class IntroductionFrame extends $pb.GeneratedMessage {
  factory IntroductionFrame({
    $core.Iterable<FileMetadata>? fileMetadata,
    $core.Iterable<TextMetadata>? textMetadata,
    $core.String? requiredPackage,
    $core.Iterable<WifiCredentialsMetadata>? wifiCredentialsMetadata,
  }) {
    final $result = create();
    if (fileMetadata != null) {
      $result.fileMetadata.addAll(fileMetadata);
    }
    if (textMetadata != null) {
      $result.textMetadata.addAll(textMetadata);
    }
    if (requiredPackage != null) {
      $result.requiredPackage = requiredPackage;
    }
    if (wifiCredentialsMetadata != null) {
      $result.wifiCredentialsMetadata.addAll(wifiCredentialsMetadata);
    }
    return $result;
  }
  IntroductionFrame._() : super();
  factory IntroductionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntroductionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntroductionFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..pc<FileMetadata>(1, _omitFieldNames ? '' : 'fileMetadata', $pb.PbFieldType.PM, subBuilder: FileMetadata.create)
    ..pc<TextMetadata>(2, _omitFieldNames ? '' : 'textMetadata', $pb.PbFieldType.PM, subBuilder: TextMetadata.create)
    ..aOS(3, _omitFieldNames ? '' : 'requiredPackage')
    ..pc<WifiCredentialsMetadata>(4, _omitFieldNames ? '' : 'wifiCredentialsMetadata', $pb.PbFieldType.PM, subBuilder: WifiCredentialsMetadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntroductionFrame clone() => IntroductionFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntroductionFrame copyWith(void Function(IntroductionFrame) updates) => super.copyWith((message) => updates(message as IntroductionFrame)) as IntroductionFrame;

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

  /// The required app package to open the content. May be null.
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

/// A response packet sent by the receiving side. Accepts or rejects the list of
/// files.
/// NEXT_ID=2
class ConnectionResponseFrame extends $pb.GeneratedMessage {
  factory ConnectionResponseFrame({
    ConnectionResponseFrame_Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ConnectionResponseFrame._() : super();
  factory ConnectionResponseFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionResponseFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionResponseFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<ConnectionResponseFrame_Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ConnectionResponseFrame_Status.UNKNOWN, valueOf: ConnectionResponseFrame_Status.valueOf, enumValues: ConnectionResponseFrame_Status.values)
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

  /// The receiving side's response.
  @$pb.TagNumber(1)
  ConnectionResponseFrame_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(ConnectionResponseFrame_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// A paired key encryption packet sent between devices, contains signed data.
/// NEXT_ID=3
class PairedKeyEncryptionFrame extends $pb.GeneratedMessage {
  factory PairedKeyEncryptionFrame({
    $core.List<$core.int>? signedData,
    $core.List<$core.int>? secretIdHash,
    $core.List<$core.int>? optionalSignedData,
  }) {
    final $result = create();
    if (signedData != null) {
      $result.signedData = signedData;
    }
    if (secretIdHash != null) {
      $result.secretIdHash = secretIdHash;
    }
    if (optionalSignedData != null) {
      $result.optionalSignedData = optionalSignedData;
    }
    return $result;
  }
  PairedKeyEncryptionFrame._() : super();
  factory PairedKeyEncryptionFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairedKeyEncryptionFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PairedKeyEncryptionFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'signedData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'secretIdHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'optionalSignedData', $pb.PbFieldType.OY)
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

  /// The encrypted data in byte array format.
  @$pb.TagNumber(1)
  $core.List<$core.int> get signedData => $_getN(0);
  @$pb.TagNumber(1)
  set signedData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignedData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignedData() => clearField(1);

  /// The hash of a certificate id.
  @$pb.TagNumber(2)
  $core.List<$core.int> get secretIdHash => $_getN(1);
  @$pb.TagNumber(2)
  set secretIdHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecretIdHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretIdHash() => clearField(2);

  /// An optional encrypted data in byte array format.
  @$pb.TagNumber(3)
  $core.List<$core.int> get optionalSignedData => $_getN(2);
  @$pb.TagNumber(3)
  set optionalSignedData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOptionalSignedData() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptionalSignedData() => clearField(3);
}

/// A paired key verification result packet sent between devices.
/// NEXT_ID=2
class PairedKeyResultFrame extends $pb.GeneratedMessage {
  factory PairedKeyResultFrame({
    PairedKeyResultFrame_Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  PairedKeyResultFrame._() : super();
  factory PairedKeyResultFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairedKeyResultFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PairedKeyResultFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..e<PairedKeyResultFrame_Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: PairedKeyResultFrame_Status.UNKNOWN, valueOf: PairedKeyResultFrame_Status.valueOf, enumValues: PairedKeyResultFrame_Status.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairedKeyResultFrame clone() => PairedKeyResultFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairedKeyResultFrame copyWith(void Function(PairedKeyResultFrame) updates) => super.copyWith((message) => updates(message as PairedKeyResultFrame)) as PairedKeyResultFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairedKeyResultFrame create() => PairedKeyResultFrame._();
  PairedKeyResultFrame createEmptyInstance() => create();
  static $pb.PbList<PairedKeyResultFrame> createRepeated() => $pb.PbList<PairedKeyResultFrame>();
  @$core.pragma('dart2js:noInline')
  static PairedKeyResultFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairedKeyResultFrame>(create);
  static PairedKeyResultFrame? _defaultInstance;

  /// The verification result.
  @$pb.TagNumber(1)
  PairedKeyResultFrame_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(PairedKeyResultFrame_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// A package containing certificate info to be shared to remote device offline.
/// NEXT_ID=2
class CertificateInfoFrame extends $pb.GeneratedMessage {
  factory CertificateInfoFrame({
    $core.Iterable<PublicCertificate>? publicCertificate,
  }) {
    final $result = create();
    if (publicCertificate != null) {
      $result.publicCertificate.addAll(publicCertificate);
    }
    return $result;
  }
  CertificateInfoFrame._() : super();
  factory CertificateInfoFrame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateInfoFrame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CertificateInfoFrame', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..pc<PublicCertificate>(1, _omitFieldNames ? '' : 'publicCertificate', $pb.PbFieldType.PM, subBuilder: PublicCertificate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateInfoFrame clone() => CertificateInfoFrame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateInfoFrame copyWith(void Function(CertificateInfoFrame) updates) => super.copyWith((message) => updates(message as CertificateInfoFrame)) as CertificateInfoFrame;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertificateInfoFrame create() => CertificateInfoFrame._();
  CertificateInfoFrame createEmptyInstance() => create();
  static $pb.PbList<CertificateInfoFrame> createRepeated() => $pb.PbList<CertificateInfoFrame>();
  @$core.pragma('dart2js:noInline')
  static CertificateInfoFrame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateInfoFrame>(create);
  static CertificateInfoFrame? _defaultInstance;

  /// The public certificates to be shared with remote devices.
  @$pb.TagNumber(1)
  $core.List<PublicCertificate> get publicCertificate => $_getList(0);
}

/// A public certificate from the local device.
/// NEXT_ID=8
class PublicCertificate extends $pb.GeneratedMessage {
  factory PublicCertificate({
    $core.List<$core.int>? secretId,
    $core.List<$core.int>? authenticityKey,
    $core.List<$core.int>? publicKey,
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
    $core.List<$core.int>? encryptedMetadataBytes,
    $core.List<$core.int>? metadataEncryptionKeyTag,
  }) {
    final $result = create();
    if (secretId != null) {
      $result.secretId = secretId;
    }
    if (authenticityKey != null) {
      $result.authenticityKey = authenticityKey;
    }
    if (publicKey != null) {
      $result.publicKey = publicKey;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (encryptedMetadataBytes != null) {
      $result.encryptedMetadataBytes = encryptedMetadataBytes;
    }
    if (metadataEncryptionKeyTag != null) {
      $result.metadataEncryptionKeyTag = metadataEncryptionKeyTag;
    }
    return $result;
  }
  PublicCertificate._() : super();
  factory PublicCertificate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicCertificate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PublicCertificate', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'secretId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'authenticityKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..aInt64(4, _omitFieldNames ? '' : 'startTime')
    ..aInt64(5, _omitFieldNames ? '' : 'endTime')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'encryptedMetadataBytes', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'metadataEncryptionKeyTag', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicCertificate clone() => PublicCertificate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicCertificate copyWith(void Function(PublicCertificate) updates) => super.copyWith((message) => updates(message as PublicCertificate)) as PublicCertificate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublicCertificate create() => PublicCertificate._();
  PublicCertificate createEmptyInstance() => create();
  static $pb.PbList<PublicCertificate> createRepeated() => $pb.PbList<PublicCertificate>();
  @$core.pragma('dart2js:noInline')
  static PublicCertificate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicCertificate>(create);
  static PublicCertificate? _defaultInstance;

  /// The unique id of the public certificate.
  @$pb.TagNumber(1)
  $core.List<$core.int> get secretId => $_getN(0);
  @$pb.TagNumber(1)
  set secretId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecretId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretId() => clearField(1);

  /// A bytes representation of a Secret Key owned by contact, to decrypt the
  /// metadata_key stored within the advertisement.
  @$pb.TagNumber(2)
  $core.List<$core.int> get authenticityKey => $_getN(1);
  @$pb.TagNumber(2)
  set authenticityKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthenticityKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthenticityKey() => clearField(2);

  /// A bytes representation a public key of X509Certificate, owned by contact,
  /// to decrypt encrypted UKEY2 (from Nearby Connections API) as a hand shake in
  /// contact verification phase.
  @$pb.TagNumber(3)
  $core.List<$core.int> get publicKey => $_getN(2);
  @$pb.TagNumber(3)
  set publicKey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);

  /// The time in millis from epoch when this certificate becomes effective.
  @$pb.TagNumber(4)
  $fixnum.Int64 get startTime => $_getI64(3);
  @$pb.TagNumber(4)
  set startTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => clearField(4);

  /// The time in millis from epoch when this certificate expires.
  @$pb.TagNumber(5)
  $fixnum.Int64 get endTime => $_getI64(4);
  @$pb.TagNumber(5)
  set endTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);

  /// The encrypted metadata in bytes, contains personal information of the
  /// device/user who created this certificate. Needs to be decrypted into bytes,
  /// and converted back to EncryptedMetadata object to access fields.
  @$pb.TagNumber(6)
  $core.List<$core.int> get encryptedMetadataBytes => $_getN(5);
  @$pb.TagNumber(6)
  set encryptedMetadataBytes($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEncryptedMetadataBytes() => $_has(5);
  @$pb.TagNumber(6)
  void clearEncryptedMetadataBytes() => clearField(6);

  /// The tag for verifying metadata_encryption_key.
  @$pb.TagNumber(7)
  $core.List<$core.int> get metadataEncryptionKeyTag => $_getN(6);
  @$pb.TagNumber(7)
  set metadataEncryptionKeyTag($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMetadataEncryptionKeyTag() => $_has(6);
  @$pb.TagNumber(7)
  void clearMetadataEncryptionKeyTag() => clearField(7);
}

/// NEXT_ID=3
class WifiCredentials extends $pb.GeneratedMessage {
  factory WifiCredentials({
    $core.String? password,
    $core.bool? hiddenSsid,
  }) {
    final $result = create();
    if (password != null) {
      $result.password = password;
    }
    if (hiddenSsid != null) {
      $result.hiddenSsid = hiddenSsid;
    }
    return $result;
  }
  WifiCredentials._() : super();
  factory WifiCredentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WifiCredentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WifiCredentials', package: const $pb.PackageName(_omitMessageNames ? '' : 'sharing.nearby'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'password')
    ..aOB(2, _omitFieldNames ? '' : 'hiddenSsid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WifiCredentials clone() => WifiCredentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WifiCredentials copyWith(void Function(WifiCredentials) updates) => super.copyWith((message) => updates(message as WifiCredentials)) as WifiCredentials;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WifiCredentials create() => WifiCredentials._();
  WifiCredentials createEmptyInstance() => create();
  static $pb.PbList<WifiCredentials> createRepeated() => $pb.PbList<WifiCredentials>();
  @$core.pragma('dart2js:noInline')
  static WifiCredentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WifiCredentials>(create);
  static WifiCredentials? _defaultInstance;

  /// Wi-Fi password.
  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);

  /// True if the network is a hidden network that is not broadcasting its SSID.
  /// Default is false.
  @$pb.TagNumber(2)
  $core.bool get hiddenSsid => $_getBF(1);
  @$pb.TagNumber(2)
  set hiddenSsid($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHiddenSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearHiddenSsid() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
