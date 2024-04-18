//
//  Generated code. Do not modify.
//  source: securemessage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'securemessage.pbenum.dart';

export 'securemessage.pbenum.dart';

class SecureMessage extends $pb.GeneratedMessage {
  factory SecureMessage({
    $core.List<$core.int>? headerAndBody,
    $core.List<$core.int>? signature,
  }) {
    final $result = create();
    if (headerAndBody != null) {
      $result.headerAndBody = headerAndBody;
    }
    if (signature != null) {
      $result.signature = signature;
    }
    return $result;
  }
  SecureMessage._() : super();
  factory SecureMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SecureMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SecureMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'headerAndBody', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.QY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SecureMessage clone() => SecureMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SecureMessage copyWith(void Function(SecureMessage) updates) => super.copyWith((message) => updates(message as SecureMessage)) as SecureMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecureMessage create() => SecureMessage._();
  SecureMessage createEmptyInstance() => create();
  static $pb.PbList<SecureMessage> createRepeated() => $pb.PbList<SecureMessage>();
  @$core.pragma('dart2js:noInline')
  static SecureMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SecureMessage>(create);
  static SecureMessage? _defaultInstance;

  /// Must contain a HeaderAndBody message
  @$pb.TagNumber(1)
  $core.List<$core.int> get headerAndBody => $_getN(0);
  @$pb.TagNumber(1)
  set headerAndBody($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeaderAndBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeaderAndBody() => clearField(1);

  /// Signature of header_and_body
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
  factory Header({
    SigScheme? signatureScheme,
    EncScheme? encryptionScheme,
    $core.List<$core.int>? verificationKeyId,
    $core.List<$core.int>? decryptionKeyId,
    $core.List<$core.int>? iv,
    $core.List<$core.int>? publicMetadata,
    $core.int? associatedDataLength,
  }) {
    final $result = create();
    if (signatureScheme != null) {
      $result.signatureScheme = signatureScheme;
    }
    if (encryptionScheme != null) {
      $result.encryptionScheme = encryptionScheme;
    }
    if (verificationKeyId != null) {
      $result.verificationKeyId = verificationKeyId;
    }
    if (decryptionKeyId != null) {
      $result.decryptionKeyId = decryptionKeyId;
    }
    if (iv != null) {
      $result.iv = iv;
    }
    if (publicMetadata != null) {
      $result.publicMetadata = publicMetadata;
    }
    if (associatedDataLength != null) {
      $result.associatedDataLength = associatedDataLength;
    }
    return $result;
  }
  Header._() : super();
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Header', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..e<SigScheme>(1, _omitFieldNames ? '' : 'signatureScheme', $pb.PbFieldType.QE, defaultOrMaker: SigScheme.HMAC_SHA256, valueOf: SigScheme.valueOf, enumValues: SigScheme.values)
    ..e<EncScheme>(2, _omitFieldNames ? '' : 'encryptionScheme', $pb.PbFieldType.QE, defaultOrMaker: EncScheme.NONE, valueOf: EncScheme.valueOf, enumValues: EncScheme.values)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'verificationKeyId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'decryptionKeyId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'iv', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'publicMetadata', $pb.PbFieldType.OY)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'associatedDataLength', $pb.PbFieldType.OU3)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Header clone() => Header()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header)) as Header;

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

  /// Identifies the verification key
  @$pb.TagNumber(3)
  $core.List<$core.int> get verificationKeyId => $_getN(2);
  @$pb.TagNumber(3)
  set verificationKeyId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerificationKeyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerificationKeyId() => clearField(3);

  /// Identifies the decryption key
  @$pb.TagNumber(4)
  $core.List<$core.int> get decryptionKeyId => $_getN(3);
  @$pb.TagNumber(4)
  set decryptionKeyId($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDecryptionKeyId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecryptionKeyId() => clearField(4);

  /// Encryption may use an IV
  @$pb.TagNumber(5)
  $core.List<$core.int> get iv => $_getN(4);
  @$pb.TagNumber(5)
  set iv($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIv() => $_has(4);
  @$pb.TagNumber(5)
  void clearIv() => clearField(5);

  /// Arbitrary per-protocol public data, to be sent with the plain-text header
  @$pb.TagNumber(6)
  $core.List<$core.int> get publicMetadata => $_getN(5);
  @$pb.TagNumber(6)
  set publicMetadata($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublicMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublicMetadata() => clearField(6);

  /// The length of some associated data this is not sent in this SecureMessage,
  /// but which will be bound to the signature.
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
  factory HeaderAndBody({
    Header? header,
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  HeaderAndBody._() : super();
  factory HeaderAndBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderAndBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HeaderAndBody', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..aQM<Header>(1, _omitFieldNames ? '' : 'header', subBuilder: Header.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'body', $pb.PbFieldType.QY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeaderAndBody clone() => HeaderAndBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeaderAndBody copyWith(void Function(HeaderAndBody) updates) => super.copyWith((message) => updates(message as HeaderAndBody)) as HeaderAndBody;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeaderAndBody create() => HeaderAndBody._();
  HeaderAndBody createEmptyInstance() => create();
  static $pb.PbList<HeaderAndBody> createRepeated() => $pb.PbList<HeaderAndBody>();
  @$core.pragma('dart2js:noInline')
  static HeaderAndBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderAndBody>(create);
  static HeaderAndBody? _defaultInstance;

  /// Public data about this message (to be bound in the signature)
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

  /// Payload data
  @$pb.TagNumber(2)
  $core.List<$core.int> get body => $_getN(1);
  @$pb.TagNumber(2)
  set body($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

/// Must be kept wire-format compatible with HeaderAndBody. Provides the
/// SecureMessage code with a consistent wire-format representation that
/// remains stable irrespective of protobuf implementation choices. This
/// low-level representation of a HeaderAndBody should not be used by
/// any code outside of the SecureMessage library implementation/tests.
class HeaderAndBodyInternal extends $pb.GeneratedMessage {
  factory HeaderAndBodyInternal({
    $core.List<$core.int>? header,
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (header != null) {
      $result.header = header;
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  HeaderAndBodyInternal._() : super();
  factory HeaderAndBodyInternal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderAndBodyInternal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HeaderAndBodyInternal', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'header', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'body', $pb.PbFieldType.QY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeaderAndBodyInternal clone() => HeaderAndBodyInternal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeaderAndBodyInternal copyWith(void Function(HeaderAndBodyInternal) updates) => super.copyWith((message) => updates(message as HeaderAndBodyInternal)) as HeaderAndBodyInternal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeaderAndBodyInternal create() => HeaderAndBodyInternal._();
  HeaderAndBodyInternal createEmptyInstance() => create();
  static $pb.PbList<HeaderAndBodyInternal> createRepeated() => $pb.PbList<HeaderAndBodyInternal>();
  @$core.pragma('dart2js:noInline')
  static HeaderAndBodyInternal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderAndBodyInternal>(create);
  static HeaderAndBodyInternal? _defaultInstance;

  /// A raw (wire-format) byte encoding of a Header, suitable for hashing
  @$pb.TagNumber(1)
  $core.List<$core.int> get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);

  /// Payload data
  @$pb.TagNumber(2)
  $core.List<$core.int> get body => $_getN(1);
  @$pb.TagNumber(2)
  set body($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

/// A convenience proto for encoding NIST P-256 elliptic curve public keys
class EcP256PublicKey extends $pb.GeneratedMessage {
  factory EcP256PublicKey({
    $core.List<$core.int>? x,
    $core.List<$core.int>? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  EcP256PublicKey._() : super();
  factory EcP256PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcP256PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EcP256PublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.QY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EcP256PublicKey clone() => EcP256PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EcP256PublicKey copyWith(void Function(EcP256PublicKey) updates) => super.copyWith((message) => updates(message as EcP256PublicKey)) as EcP256PublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EcP256PublicKey create() => EcP256PublicKey._();
  EcP256PublicKey createEmptyInstance() => create();
  static $pb.PbList<EcP256PublicKey> createRepeated() => $pb.PbList<EcP256PublicKey>();
  @$core.pragma('dart2js:noInline')
  static EcP256PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcP256PublicKey>(create);
  static EcP256PublicKey? _defaultInstance;

  /// x and y are encoded in big-endian two's complement (slightly wasteful)
  /// Client MUST verify (x,y) is a valid point on NIST P256
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

/// A convenience proto for encoding RSA public keys with small exponents
class SimpleRsaPublicKey extends $pb.GeneratedMessage {
  factory SimpleRsaPublicKey({
    $core.List<$core.int>? n,
    $core.int? e,
  }) {
    final $result = create();
    if (n != null) {
      $result.n = n;
    }
    if (e != null) {
      $result.e = e;
    }
    return $result;
  }
  SimpleRsaPublicKey._() : super();
  factory SimpleRsaPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SimpleRsaPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SimpleRsaPublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'n', $pb.PbFieldType.QY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'e', $pb.PbFieldType.O3, defaultOrMaker: 65537)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SimpleRsaPublicKey clone() => SimpleRsaPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SimpleRsaPublicKey copyWith(void Function(SimpleRsaPublicKey) updates) => super.copyWith((message) => updates(message as SimpleRsaPublicKey)) as SimpleRsaPublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimpleRsaPublicKey create() => SimpleRsaPublicKey._();
  SimpleRsaPublicKey createEmptyInstance() => create();
  static $pb.PbList<SimpleRsaPublicKey> createRepeated() => $pb.PbList<SimpleRsaPublicKey>();
  @$core.pragma('dart2js:noInline')
  static SimpleRsaPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SimpleRsaPublicKey>(create);
  static SimpleRsaPublicKey? _defaultInstance;

  /// Encoded in big-endian two's complement
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

/// A convenience proto for encoding Diffie-Hellman public keys,
/// for use only when Elliptic Curve based key exchanges are not possible.
/// (Note that the group parameters must be specified separately)
class DhPublicKey extends $pb.GeneratedMessage {
  factory DhPublicKey({
    $core.List<$core.int>? y,
  }) {
    final $result = create();
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  DhPublicKey._() : super();
  factory DhPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DhPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DhPublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'y', $pb.PbFieldType.QY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DhPublicKey clone() => DhPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DhPublicKey copyWith(void Function(DhPublicKey) updates) => super.copyWith((message) => updates(message as DhPublicKey)) as DhPublicKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DhPublicKey create() => DhPublicKey._();
  DhPublicKey createEmptyInstance() => create();
  static $pb.PbList<DhPublicKey> createRepeated() => $pb.PbList<DhPublicKey>();
  @$core.pragma('dart2js:noInline')
  static DhPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DhPublicKey>(create);
  static DhPublicKey? _defaultInstance;

  /// Big-endian two's complement encoded group element
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
  factory GenericPublicKey({
    PublicKeyType? type,
    EcP256PublicKey? ecP256PublicKey,
    SimpleRsaPublicKey? rsa2048PublicKey,
    DhPublicKey? dh2048PublicKey,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (ecP256PublicKey != null) {
      $result.ecP256PublicKey = ecP256PublicKey;
    }
    if (rsa2048PublicKey != null) {
      $result.rsa2048PublicKey = rsa2048PublicKey;
    }
    if (dh2048PublicKey != null) {
      $result.dh2048PublicKey = dh2048PublicKey;
    }
    return $result;
  }
  GenericPublicKey._() : super();
  factory GenericPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenericPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenericPublicKey', package: const $pb.PackageName(_omitMessageNames ? '' : 'securemessage'), createEmptyInstance: create)
    ..e<PublicKeyType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: PublicKeyType.EC_P256, valueOf: PublicKeyType.valueOf, enumValues: PublicKeyType.values)
    ..aOM<EcP256PublicKey>(2, _omitFieldNames ? '' : 'ecP256PublicKey', subBuilder: EcP256PublicKey.create)
    ..aOM<SimpleRsaPublicKey>(3, _omitFieldNames ? '' : 'rsa2048PublicKey', subBuilder: SimpleRsaPublicKey.create)
    ..aOM<DhPublicKey>(4, _omitFieldNames ? '' : 'dh2048PublicKey', subBuilder: DhPublicKey.create)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenericPublicKey clone() => GenericPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenericPublicKey copyWith(void Function(GenericPublicKey) updates) => super.copyWith((message) => updates(message as GenericPublicKey)) as GenericPublicKey;

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

  /// Use only as a last resort
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
