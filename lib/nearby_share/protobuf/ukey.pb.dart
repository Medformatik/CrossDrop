//
//  Generated code. Do not modify.
//  source: ukey.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ukey.pbenum.dart';

export 'ukey.pbenum.dart';

class Ukey2Message extends $pb.GeneratedMessage {
  factory Ukey2Message() => create();
  Ukey2Message._() : super();
  factory Ukey2Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ukey2Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ukey2Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..e<Ukey2Message_Type>(1, _omitFieldNames ? '' : 'messageType', $pb.PbFieldType.OE, defaultOrMaker: Ukey2Message_Type.UNKNOWN_DO_NOT_USE, valueOf: Ukey2Message_Type.valueOf, enumValues: Ukey2Message_Type.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'messageData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ukey2Message clone() => Ukey2Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ukey2Message copyWith(void Function(Ukey2Message) updates) => super.copyWith((message) => updates(message as Ukey2Message)) as Ukey2Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ukey2Message create() => Ukey2Message._();
  Ukey2Message createEmptyInstance() => create();
  static $pb.PbList<Ukey2Message> createRepeated() => $pb.PbList<Ukey2Message>();
  @$core.pragma('dart2js:noInline')
  static Ukey2Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ukey2Message>(create);
  static Ukey2Message? _defaultInstance;

  @$pb.TagNumber(1)
  Ukey2Message_Type get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType(Ukey2Message_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get messageData => $_getN(1);
  @$pb.TagNumber(2)
  set messageData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageData() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageData() => clearField(2);
}

class Ukey2Alert extends $pb.GeneratedMessage {
  factory Ukey2Alert() => create();
  Ukey2Alert._() : super();
  factory Ukey2Alert.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ukey2Alert.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ukey2Alert', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..e<Ukey2Alert_AlertType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Ukey2Alert_AlertType.BAD_MESSAGE, valueOf: Ukey2Alert_AlertType.valueOf, enumValues: Ukey2Alert_AlertType.values)
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ukey2Alert clone() => Ukey2Alert()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ukey2Alert copyWith(void Function(Ukey2Alert) updates) => super.copyWith((message) => updates(message as Ukey2Alert)) as Ukey2Alert;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ukey2Alert create() => Ukey2Alert._();
  Ukey2Alert createEmptyInstance() => create();
  static $pb.PbList<Ukey2Alert> createRepeated() => $pb.PbList<Ukey2Alert>();
  @$core.pragma('dart2js:noInline')
  static Ukey2Alert getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ukey2Alert>(create);
  static Ukey2Alert? _defaultInstance;

  @$pb.TagNumber(1)
  Ukey2Alert_AlertType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Ukey2Alert_AlertType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);
}

class Ukey2ClientInit_CipherCommitment extends $pb.GeneratedMessage {
  factory Ukey2ClientInit_CipherCommitment() => create();
  Ukey2ClientInit_CipherCommitment._() : super();
  factory Ukey2ClientInit_CipherCommitment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ukey2ClientInit_CipherCommitment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ukey2ClientInit.CipherCommitment', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..e<Ukey2HandshakeCipher>(1, _omitFieldNames ? '' : 'handshakeCipher', $pb.PbFieldType.OE, defaultOrMaker: Ukey2HandshakeCipher.RESERVED, valueOf: Ukey2HandshakeCipher.valueOf, enumValues: Ukey2HandshakeCipher.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'commitment', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ukey2ClientInit_CipherCommitment clone() => Ukey2ClientInit_CipherCommitment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ukey2ClientInit_CipherCommitment copyWith(void Function(Ukey2ClientInit_CipherCommitment) updates) => super.copyWith((message) => updates(message as Ukey2ClientInit_CipherCommitment)) as Ukey2ClientInit_CipherCommitment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ukey2ClientInit_CipherCommitment create() => Ukey2ClientInit_CipherCommitment._();
  Ukey2ClientInit_CipherCommitment createEmptyInstance() => create();
  static $pb.PbList<Ukey2ClientInit_CipherCommitment> createRepeated() => $pb.PbList<Ukey2ClientInit_CipherCommitment>();
  @$core.pragma('dart2js:noInline')
  static Ukey2ClientInit_CipherCommitment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ukey2ClientInit_CipherCommitment>(create);
  static Ukey2ClientInit_CipherCommitment? _defaultInstance;

  @$pb.TagNumber(1)
  Ukey2HandshakeCipher get handshakeCipher => $_getN(0);
  @$pb.TagNumber(1)
  set handshakeCipher(Ukey2HandshakeCipher v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHandshakeCipher() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandshakeCipher() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get commitment => $_getN(1);
  @$pb.TagNumber(2)
  set commitment($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommitment() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitment() => clearField(2);
}

class Ukey2ClientInit extends $pb.GeneratedMessage {
  factory Ukey2ClientInit() => create();
  Ukey2ClientInit._() : super();
  factory Ukey2ClientInit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ukey2ClientInit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ukey2ClientInit', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'random', $pb.PbFieldType.OY)
    ..pc<Ukey2ClientInit_CipherCommitment>(3, _omitFieldNames ? '' : 'cipherCommitments', $pb.PbFieldType.PM, subBuilder: Ukey2ClientInit_CipherCommitment.create)
    ..aOS(4, _omitFieldNames ? '' : 'nextProtocol')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ukey2ClientInit clone() => Ukey2ClientInit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ukey2ClientInit copyWith(void Function(Ukey2ClientInit) updates) => super.copyWith((message) => updates(message as Ukey2ClientInit)) as Ukey2ClientInit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ukey2ClientInit create() => Ukey2ClientInit._();
  Ukey2ClientInit createEmptyInstance() => create();
  static $pb.PbList<Ukey2ClientInit> createRepeated() => $pb.PbList<Ukey2ClientInit>();
  @$core.pragma('dart2js:noInline')
  static Ukey2ClientInit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ukey2ClientInit>(create);
  static Ukey2ClientInit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get random => $_getN(1);
  @$pb.TagNumber(2)
  set random($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRandom() => $_has(1);
  @$pb.TagNumber(2)
  void clearRandom() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Ukey2ClientInit_CipherCommitment> get cipherCommitments => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get nextProtocol => $_getSZ(3);
  @$pb.TagNumber(4)
  set nextProtocol($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNextProtocol() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextProtocol() => clearField(4);
}

class Ukey2ServerInit extends $pb.GeneratedMessage {
  factory Ukey2ServerInit() => create();
  Ukey2ServerInit._() : super();
  factory Ukey2ServerInit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ukey2ServerInit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ukey2ServerInit', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'random', $pb.PbFieldType.OY)
    ..e<Ukey2HandshakeCipher>(3, _omitFieldNames ? '' : 'handshakeCipher', $pb.PbFieldType.OE, defaultOrMaker: Ukey2HandshakeCipher.RESERVED, valueOf: Ukey2HandshakeCipher.valueOf, enumValues: Ukey2HandshakeCipher.values)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ukey2ServerInit clone() => Ukey2ServerInit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ukey2ServerInit copyWith(void Function(Ukey2ServerInit) updates) => super.copyWith((message) => updates(message as Ukey2ServerInit)) as Ukey2ServerInit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ukey2ServerInit create() => Ukey2ServerInit._();
  Ukey2ServerInit createEmptyInstance() => create();
  static $pb.PbList<Ukey2ServerInit> createRepeated() => $pb.PbList<Ukey2ServerInit>();
  @$core.pragma('dart2js:noInline')
  static Ukey2ServerInit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ukey2ServerInit>(create);
  static Ukey2ServerInit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get random => $_getN(1);
  @$pb.TagNumber(2)
  set random($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRandom() => $_has(1);
  @$pb.TagNumber(2)
  void clearRandom() => clearField(2);

  @$pb.TagNumber(3)
  Ukey2HandshakeCipher get handshakeCipher => $_getN(2);
  @$pb.TagNumber(3)
  set handshakeCipher(Ukey2HandshakeCipher v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHandshakeCipher() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshakeCipher() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get publicKey => $_getN(3);
  @$pb.TagNumber(4)
  set publicKey($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);
}

class Ukey2ClientFinished extends $pb.GeneratedMessage {
  factory Ukey2ClientFinished() => create();
  Ukey2ClientFinished._() : super();
  factory Ukey2ClientFinished.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ukey2ClientFinished.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ukey2ClientFinished', package: const $pb.PackageName(_omitMessageNames ? '' : 'securegcm'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ukey2ClientFinished clone() => Ukey2ClientFinished()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ukey2ClientFinished copyWith(void Function(Ukey2ClientFinished) updates) => super.copyWith((message) => updates(message as Ukey2ClientFinished)) as Ukey2ClientFinished;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ukey2ClientFinished create() => Ukey2ClientFinished._();
  Ukey2ClientFinished createEmptyInstance() => create();
  static $pb.PbList<Ukey2ClientFinished> createRepeated() => $pb.PbList<Ukey2ClientFinished>();
  @$core.pragma('dart2js:noInline')
  static Ukey2ClientFinished getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ukey2ClientFinished>(create);
  static Ukey2ClientFinished? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
