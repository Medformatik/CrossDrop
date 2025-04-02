//
//  Generated code. Do not modify.
//  source: wire_format.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FileMetadata_Type extends $pb.ProtobufEnum {
  static const FileMetadata_Type UNKNOWN = FileMetadata_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const FileMetadata_Type IMAGE = FileMetadata_Type._(1, _omitEnumNames ? '' : 'IMAGE');
  static const FileMetadata_Type VIDEO = FileMetadata_Type._(2, _omitEnumNames ? '' : 'VIDEO');
  static const FileMetadata_Type APP = FileMetadata_Type._(3, _omitEnumNames ? '' : 'APP');
  static const FileMetadata_Type AUDIO = FileMetadata_Type._(4, _omitEnumNames ? '' : 'AUDIO');

  static const $core.List<FileMetadata_Type> values = <FileMetadata_Type> [
    UNKNOWN,
    IMAGE,
    VIDEO,
    APP,
    AUDIO,
  ];

  static final $core.Map<$core.int, FileMetadata_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileMetadata_Type? valueOf($core.int value) => _byValue[value];

  const FileMetadata_Type._(super.v, super.n);
}

class TextMetadata_Type extends $pb.ProtobufEnum {
  static const TextMetadata_Type UNKNOWN = TextMetadata_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const TextMetadata_Type TEXT = TextMetadata_Type._(1, _omitEnumNames ? '' : 'TEXT');
  /// Open with browsers.
  static const TextMetadata_Type URL = TextMetadata_Type._(2, _omitEnumNames ? '' : 'URL');
  /// Open with map apps.
  static const TextMetadata_Type ADDRESS = TextMetadata_Type._(3, _omitEnumNames ? '' : 'ADDRESS');
  /// Dial.
  static const TextMetadata_Type PHONE_NUMBER = TextMetadata_Type._(4, _omitEnumNames ? '' : 'PHONE_NUMBER');

  static const $core.List<TextMetadata_Type> values = <TextMetadata_Type> [
    UNKNOWN,
    TEXT,
    URL,
    ADDRESS,
    PHONE_NUMBER,
  ];

  static final $core.Map<$core.int, TextMetadata_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TextMetadata_Type? valueOf($core.int value) => _byValue[value];

  const TextMetadata_Type._(super.v, super.n);
}

class WifiCredentialsMetadata_SecurityType extends $pb.ProtobufEnum {
  static const WifiCredentialsMetadata_SecurityType UNKNOWN_SECURITY_TYPE = WifiCredentialsMetadata_SecurityType._(0, _omitEnumNames ? '' : 'UNKNOWN_SECURITY_TYPE');
  static const WifiCredentialsMetadata_SecurityType OPEN = WifiCredentialsMetadata_SecurityType._(1, _omitEnumNames ? '' : 'OPEN');
  static const WifiCredentialsMetadata_SecurityType WPA_PSK = WifiCredentialsMetadata_SecurityType._(2, _omitEnumNames ? '' : 'WPA_PSK');
  static const WifiCredentialsMetadata_SecurityType WEP = WifiCredentialsMetadata_SecurityType._(3, _omitEnumNames ? '' : 'WEP');

  static const $core.List<WifiCredentialsMetadata_SecurityType> values = <WifiCredentialsMetadata_SecurityType> [
    UNKNOWN_SECURITY_TYPE,
    OPEN,
    WPA_PSK,
    WEP,
  ];

  static final $core.Map<$core.int, WifiCredentialsMetadata_SecurityType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WifiCredentialsMetadata_SecurityType? valueOf($core.int value) => _byValue[value];

  const WifiCredentialsMetadata_SecurityType._(super.v, super.n);
}

class Frame_Version extends $pb.ProtobufEnum {
  static const Frame_Version UNKNOWN_VERSION = Frame_Version._(0, _omitEnumNames ? '' : 'UNKNOWN_VERSION');
  static const Frame_Version V1 = Frame_Version._(1, _omitEnumNames ? '' : 'V1');

  static const $core.List<Frame_Version> values = <Frame_Version> [
    UNKNOWN_VERSION,
    V1,
  ];

  static final $core.Map<$core.int, Frame_Version> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Frame_Version? valueOf($core.int value) => _byValue[value];

  const Frame_Version._(super.v, super.n);
}

class V1Frame_FrameType extends $pb.ProtobufEnum {
  static const V1Frame_FrameType UNKNOWN_FRAME_TYPE = V1Frame_FrameType._(0, _omitEnumNames ? '' : 'UNKNOWN_FRAME_TYPE');
  static const V1Frame_FrameType INTRODUCTION = V1Frame_FrameType._(1, _omitEnumNames ? '' : 'INTRODUCTION');
  static const V1Frame_FrameType RESPONSE = V1Frame_FrameType._(2, _omitEnumNames ? '' : 'RESPONSE');
  static const V1Frame_FrameType PAIRED_KEY_ENCRYPTION = V1Frame_FrameType._(3, _omitEnumNames ? '' : 'PAIRED_KEY_ENCRYPTION');
  static const V1Frame_FrameType PAIRED_KEY_RESULT = V1Frame_FrameType._(4, _omitEnumNames ? '' : 'PAIRED_KEY_RESULT');
  static const V1Frame_FrameType CERTIFICATE_INFO = V1Frame_FrameType._(5, _omitEnumNames ? '' : 'CERTIFICATE_INFO');
  static const V1Frame_FrameType CANCEL = V1Frame_FrameType._(6, _omitEnumNames ? '' : 'CANCEL');

  static const $core.List<V1Frame_FrameType> values = <V1Frame_FrameType> [
    UNKNOWN_FRAME_TYPE,
    INTRODUCTION,
    RESPONSE,
    PAIRED_KEY_ENCRYPTION,
    PAIRED_KEY_RESULT,
    CERTIFICATE_INFO,
    CANCEL,
  ];

  static final $core.Map<$core.int, V1Frame_FrameType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static V1Frame_FrameType? valueOf($core.int value) => _byValue[value];

  const V1Frame_FrameType._(super.v, super.n);
}

class ConnectionResponseFrame_Status extends $pb.ProtobufEnum {
  static const ConnectionResponseFrame_Status UNKNOWN = ConnectionResponseFrame_Status._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ConnectionResponseFrame_Status ACCEPT = ConnectionResponseFrame_Status._(1, _omitEnumNames ? '' : 'ACCEPT');
  static const ConnectionResponseFrame_Status REJECT = ConnectionResponseFrame_Status._(2, _omitEnumNames ? '' : 'REJECT');
  static const ConnectionResponseFrame_Status NOT_ENOUGH_SPACE = ConnectionResponseFrame_Status._(3, _omitEnumNames ? '' : 'NOT_ENOUGH_SPACE');
  static const ConnectionResponseFrame_Status UNSUPPORTED_ATTACHMENT_TYPE = ConnectionResponseFrame_Status._(4, _omitEnumNames ? '' : 'UNSUPPORTED_ATTACHMENT_TYPE');
  static const ConnectionResponseFrame_Status TIMED_OUT = ConnectionResponseFrame_Status._(5, _omitEnumNames ? '' : 'TIMED_OUT');

  static const $core.List<ConnectionResponseFrame_Status> values = <ConnectionResponseFrame_Status> [
    UNKNOWN,
    ACCEPT,
    REJECT,
    NOT_ENOUGH_SPACE,
    UNSUPPORTED_ATTACHMENT_TYPE,
    TIMED_OUT,
  ];

  static final $core.Map<$core.int, ConnectionResponseFrame_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectionResponseFrame_Status? valueOf($core.int value) => _byValue[value];

  const ConnectionResponseFrame_Status._(super.v, super.n);
}

class PairedKeyResultFrame_Status extends $pb.ProtobufEnum {
  static const PairedKeyResultFrame_Status UNKNOWN = PairedKeyResultFrame_Status._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const PairedKeyResultFrame_Status SUCCESS = PairedKeyResultFrame_Status._(1, _omitEnumNames ? '' : 'SUCCESS');
  static const PairedKeyResultFrame_Status FAIL = PairedKeyResultFrame_Status._(2, _omitEnumNames ? '' : 'FAIL');
  static const PairedKeyResultFrame_Status UNABLE = PairedKeyResultFrame_Status._(3, _omitEnumNames ? '' : 'UNABLE');

  static const $core.List<PairedKeyResultFrame_Status> values = <PairedKeyResultFrame_Status> [
    UNKNOWN,
    SUCCESS,
    FAIL,
    UNABLE,
  ];

  static final $core.Map<$core.int, PairedKeyResultFrame_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PairedKeyResultFrame_Status? valueOf($core.int value) => _byValue[value];

  const PairedKeyResultFrame_Status._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
