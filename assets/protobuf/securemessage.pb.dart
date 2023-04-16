///
//  Generated code. Do not modify.
//  source: securemessage.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'securemessage.pbenum.dart';

export 'securemessage.pbenum.dart';

class SecureMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SecureMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerAndBody', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.QY)
  ;

  SecureMessage._() : super();
  factory SecureMessage({
    $core.List<$core.int>? headerAndBody,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (headerAndBody != null) {
      _result.headerAndBody = headerAndBody;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SecureMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SecureMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SecureMessage clone() => SecureMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SecureMessage copyWith(void Function(SecureMessage) updates) => super.copyWith((message) => updates(message as SecureMessage)) as SecureMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecureMessage create() => SecureMessage._();
  SecureMessage createEmptyInstance() => create();
  static $pb.PbList<SecureMessage> createRepeated() => $pb.PbList<SecureMessage>();
  @$core.pragma('dart2js:noInline')
  static SecureMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SecureMessage>(create);
  static SecureMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get headerAndBody => $_getN(0);
  @$pb.TagNumber(1)
  set headerAndBody($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeaderAndBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeaderAndBody() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Header', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..e<SigScheme>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatureScheme', $pb.PbFieldType.QE, defaultOrMaker: SigScheme.HMAC_SHA256, valueOf: SigScheme.valueOf, enumValues: SigScheme.values)
    ..e<EncScheme>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encryptionScheme', $pb.PbFieldType.QE, defaultOrMaker: EncScheme.NONE, valueOf: EncScheme.valueOf, enumValues: EncScheme.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationKeyId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decryptionKeyId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iv', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicMetadata', $pb.PbFieldType.OY)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedDataLength', $pb.PbFieldType.OU3)
  ;

  Header._() : super();
  factory Header({
    SigScheme? signatureScheme,
    EncScheme? encryptionScheme,
    $core.List<$core.int>? verificationKeyId,
    $core.List<$core.int>? decryptionKeyId,
    $core.List<$core.int>? iv,
    $core.List<$core.int>? publicMetadata,
    $core.int? associatedDataLength,
  }) {
    final _result = create();
    if (signatureScheme != null) {
      _result.signatureScheme = signatureScheme;
    }
    if (encryptionScheme != null) {
      _result.encryptionScheme = encryptionScheme;
    }
    if (verificationKeyId != null) {
      _result.verificationKeyId = verificationKeyId;
    }
    if (decryptionKeyId != null) {
      _result.decryptionKeyId = decryptionKeyId;
    }
    if (iv != null) {
      _result.iv = iv;
    }
    if (publicMetadata != null) {
      _result.publicMetadata = publicMetadata;
    }
    if (associatedDataLength != null) {
      _result.associatedDataLength = associatedDataLength;
    }
    return _result;
  }
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Header clone() => Header()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header)) as Header; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Header create() => Header._();
  Header createEmptyInstance() => create();
  static $pb.PbList<Header> createRepeated() => $pb.PbList<Header>();
  @$core.pragma('dart2js:noInline')
  static Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Header>(create);
  static Header? _defaultInstance;

  @$pb.TagNumber(1)
  SigScheme get signatureScheme => $_getN(0);
  @$pb.TagNumber(1)
  set signatureScheme(SigScheme v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignatureScheme() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignatureScheme() => clearField(1);

  @$pb.TagNumber(2)
  EncScheme get encryptionScheme => $_getN(1);
  @$pb.TagNumber(2)
  set encryptionScheme(EncScheme v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncryptionScheme() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptionScheme() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get verificationKeyId => $_getN(2);
  @$pb.TagNumber(3)
  set verificationKeyId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerificationKeyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerificationKeyId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get decryptionKeyId => $_getN(3);
  @$pb.TagNumber(4)
  set decryptionKeyId($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDecryptionKeyId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecryptionKeyId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get iv => $_getN(4);
  @$pb.TagNumber(5)
  set iv($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIv() => $_has(4);
  @$pb.TagNumber(5)
  void clearIv() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get publicMetadata => $_getN(5);
  @$pb.TagNumber(6)
  set publicMetadata($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublicMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublicMetadata() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get associatedDataLength => $_getIZ(6);
  @$pb.TagNumber(7)
  set associatedDataLength($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssociatedDataLength() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssociatedDataLength() => clearField(7);
}

class HeaderAndBody extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HeaderAndBody', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..aQM<Header>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: Header.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', $pb.PbFieldType.QY)
  ;

  HeaderAndBody._() : super();
  factory HeaderAndBody({
    Header? header,
    $core.List<$core.int>? body,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory HeaderAndBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderAndBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeaderAndBody clone() => HeaderAndBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeaderAndBody copyWith(void Function(HeaderAndBody) updates) => super.copyWith((message) => updates(message as HeaderAndBody)) as HeaderAndBody; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeaderAndBody create() => HeaderAndBody._();
  HeaderAndBody createEmptyInstance() => create();
  static $pb.PbList<HeaderAndBody> createRepeated() => $pb.PbList<HeaderAndBody>();
  @$core.pragma('dart2js:noInline')
  static HeaderAndBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderAndBody>(create);
  static HeaderAndBody? _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get body => $_getN(1);
  @$pb.TagNumber(2)
  set body($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

class HeaderAndBodyInternal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HeaderAndBodyInternal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', $pb.PbFieldType.QY)
  ;

  HeaderAndBodyInternal._() : super();
  factory HeaderAndBodyInternal({
    $core.List<$core.int>? header,
    $core.List<$core.int>? body,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory HeaderAndBodyInternal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderAndBodyInternal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeaderAndBodyInternal clone() => HeaderAndBodyInternal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeaderAndBodyInternal copyWith(void Function(HeaderAndBodyInternal) updates) => super.copyWith((message) => updates(message as HeaderAndBodyInternal)) as HeaderAndBodyInternal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeaderAndBodyInternal create() => HeaderAndBodyInternal._();
  HeaderAndBodyInternal createEmptyInstance() => create();
  static $pb.PbList<HeaderAndBodyInternal> createRepeated() => $pb.PbList<HeaderAndBodyInternal>();
  @$core.pragma('dart2js:noInline')
  static HeaderAndBodyInternal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderAndBodyInternal>(create);
  static HeaderAndBodyInternal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get body => $_getN(1);
  @$pb.TagNumber(2)
  set body($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

class EcP256PublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EcP256PublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.QY)
  ;

  EcP256PublicKey._() : super();
  factory EcP256PublicKey({
    $core.List<$core.int>? x,
    $core.List<$core.int>? y,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    return _result;
  }
  factory EcP256PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcP256PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EcP256PublicKey clone() => EcP256PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EcP256PublicKey copyWith(void Function(EcP256PublicKey) updates) => super.copyWith((message) => updates(message as EcP256PublicKey)) as EcP256PublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcP256PublicKey create() => EcP256PublicKey._();
  EcP256PublicKey createEmptyInstance() => create();
  static $pb.PbList<EcP256PublicKey> createRepeated() => $pb.PbList<EcP256PublicKey>();
  @$core.pragma('dart2js:noInline')
  static EcP256PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcP256PublicKey>(create);
  static EcP256PublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class SimpleRsaPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SimpleRsaPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'n', $pb.PbFieldType.QY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'e', $pb.PbFieldType.O3, defaultOrMaker: 65537)
  ;

  SimpleRsaPublicKey._() : super();
  factory SimpleRsaPublicKey({
    $core.List<$core.int>? n,
    $core.int? e,
  }) {
    final _result = create();
    if (n != null) {
      _result.n = n;
    }
    if (e != null) {
      _result.e = e;
    }
    return _result;
  }
  factory SimpleRsaPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SimpleRsaPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SimpleRsaPublicKey clone() => SimpleRsaPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SimpleRsaPublicKey copyWith(void Function(SimpleRsaPublicKey) updates) => super.copyWith((message) => updates(message as SimpleRsaPublicKey)) as SimpleRsaPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SimpleRsaPublicKey create() => SimpleRsaPublicKey._();
  SimpleRsaPublicKey createEmptyInstance() => create();
  static $pb.PbList<SimpleRsaPublicKey> createRepeated() => $pb.PbList<SimpleRsaPublicKey>();
  @$core.pragma('dart2js:noInline')
  static SimpleRsaPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SimpleRsaPublicKey>(create);
  static SimpleRsaPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get n => $_getN(0);
  @$pb.TagNumber(1)
  set n($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasN() => $_has(0);
  @$pb.TagNumber(1)
  void clearN() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get e => $_getI(1, 65537);
  @$pb.TagNumber(2)
  set e($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasE() => $_has(1);
  @$pb.TagNumber(2)
  void clearE() => clearField(2);
}

class DhPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DhPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.QY)
  ;

  DhPublicKey._() : super();
  factory DhPublicKey({
    $core.List<$core.int>? y,
  }) {
    final _result = create();
    if (y != null) {
      _result.y = y;
    }
    return _result;
  }
  factory DhPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DhPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DhPublicKey clone() => DhPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DhPublicKey copyWith(void Function(DhPublicKey) updates) => super.copyWith((message) => updates(message as DhPublicKey)) as DhPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DhPublicKey create() => DhPublicKey._();
  DhPublicKey createEmptyInstance() => create();
  static $pb.PbList<DhPublicKey> createRepeated() => $pb.PbList<DhPublicKey>();
  @$core.pragma('dart2js:noInline')
  static DhPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DhPublicKey>(create);
  static DhPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get y => $_getN(0);
  @$pb.TagNumber(1)
  set y($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasY() => $_has(0);
  @$pb.TagNumber(1)
  void clearY() => clearField(1);
}

class GenericPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenericPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'securemessage'), createEmptyInstance: create)
    ..e<PublicKeyType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: PublicKeyType.EC_P256, valueOf: PublicKeyType.valueOf, enumValues: PublicKeyType.values)
    ..aOM<EcP256PublicKey>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecP256PublicKey', subBuilder: EcP256PublicKey.create)
    ..aOM<SimpleRsaPublicKey>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsa2048PublicKey', subBuilder: SimpleRsaPublicKey.create)
    ..aOM<DhPublicKey>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dh2048PublicKey', subBuilder: DhPublicKey.create)
  ;

  GenericPublicKey._() : super();
  factory GenericPublicKey({
    PublicKeyType? type,
    EcP256PublicKey? ecP256PublicKey,
    SimpleRsaPublicKey? rsa2048PublicKey,
    DhPublicKey? dh2048PublicKey,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (ecP256PublicKey != null) {
      _result.ecP256PublicKey = ecP256PublicKey;
    }
    if (rsa2048PublicKey != null) {
      _result.rsa2048PublicKey = rsa2048PublicKey;
    }
    if (dh2048PublicKey != null) {
      _result.dh2048PublicKey = dh2048PublicKey;
    }
    return _result;
  }
  factory GenericPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenericPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenericPublicKey clone() => GenericPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenericPublicKey copyWith(void Function(GenericPublicKey) updates) => super.copyWith((message) => updates(message as GenericPublicKey)) as GenericPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenericPublicKey create() => GenericPublicKey._();
  GenericPublicKey createEmptyInstance() => create();
  static $pb.PbList<GenericPublicKey> createRepeated() => $pb.PbList<GenericPublicKey>();
  @$core.pragma('dart2js:noInline')
  static GenericPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenericPublicKey>(create);
  static GenericPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  PublicKeyType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PublicKeyType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  EcP256PublicKey get ecP256PublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set ecP256PublicKey(EcP256PublicKey v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEcP256PublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearEcP256PublicKey() => clearField(2);
  @$pb.TagNumber(2)
  EcP256PublicKey ensureEcP256PublicKey() => $_ensure(1);

  @$pb.TagNumber(3)
  SimpleRsaPublicKey get rsa2048PublicKey => $_getN(2);
  @$pb.TagNumber(3)
  set rsa2048PublicKey(SimpleRsaPublicKey v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRsa2048PublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearRsa2048PublicKey() => clearField(3);
  @$pb.TagNumber(3)
  SimpleRsaPublicKey ensureRsa2048PublicKey() => $_ensure(2);

  @$pb.TagNumber(4)
  DhPublicKey get dh2048PublicKey => $_getN(3);
  @$pb.TagNumber(4)
  set dh2048PublicKey(DhPublicKey v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDh2048PublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearDh2048PublicKey() => clearField(4);
  @$pb.TagNumber(4)
  DhPublicKey ensureDh2048PublicKey() => $_ensure(3);
}

