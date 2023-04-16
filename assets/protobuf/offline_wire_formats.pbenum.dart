///
//  Generated code. Do not modify.
//  source: offline_wire_formats.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class OfflineFrame_Version extends $pb.ProtobufEnum {
  static const OfflineFrame_Version UNKNOWN_VERSION = OfflineFrame_Version._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_VERSION');
  static const OfflineFrame_Version V1 = OfflineFrame_Version._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'V1');

  static const $core.List<OfflineFrame_Version> values = <OfflineFrame_Version> [
    UNKNOWN_VERSION,
    V1,
  ];

  static final $core.Map<$core.int, OfflineFrame_Version> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OfflineFrame_Version? valueOf($core.int value) => _byValue[value];

  const OfflineFrame_Version._($core.int v, $core.String n) : super(v, n);
}

class V1Frame_FrameType extends $pb.ProtobufEnum {
  static const V1Frame_FrameType UNKNOWN_FRAME_TYPE = V1Frame_FrameType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_FRAME_TYPE');
  static const V1Frame_FrameType CONNECTION_REQUEST = V1Frame_FrameType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTION_REQUEST');
  static const V1Frame_FrameType CONNECTION_RESPONSE = V1Frame_FrameType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTION_RESPONSE');
  static const V1Frame_FrameType PAYLOAD_TRANSFER = V1Frame_FrameType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYLOAD_TRANSFER');
  static const V1Frame_FrameType BANDWIDTH_UPGRADE_NEGOTIATION = V1Frame_FrameType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BANDWIDTH_UPGRADE_NEGOTIATION');
  static const V1Frame_FrameType KEEP_ALIVE = V1Frame_FrameType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KEEP_ALIVE');
  static const V1Frame_FrameType DISCONNECTION = V1Frame_FrameType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTION');
  static const V1Frame_FrameType PAIRED_KEY_ENCRYPTION = V1Frame_FrameType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAIRED_KEY_ENCRYPTION');

  static const $core.List<V1Frame_FrameType> values = <V1Frame_FrameType> [
    UNKNOWN_FRAME_TYPE,
    CONNECTION_REQUEST,
    CONNECTION_RESPONSE,
    PAYLOAD_TRANSFER,
    BANDWIDTH_UPGRADE_NEGOTIATION,
    KEEP_ALIVE,
    DISCONNECTION,
    PAIRED_KEY_ENCRYPTION,
  ];

  static final $core.Map<$core.int, V1Frame_FrameType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static V1Frame_FrameType? valueOf($core.int value) => _byValue[value];

  const V1Frame_FrameType._($core.int v, $core.String n) : super(v, n);
}

class ConnectionRequestFrame_Medium extends $pb.ProtobufEnum {
  static const ConnectionRequestFrame_Medium UNKNOWN_MEDIUM = ConnectionRequestFrame_Medium._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_MEDIUM');
  static const ConnectionRequestFrame_Medium MDNS = ConnectionRequestFrame_Medium._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MDNS');
  static const ConnectionRequestFrame_Medium BLUETOOTH = ConnectionRequestFrame_Medium._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLUETOOTH');
  static const ConnectionRequestFrame_Medium WIFI_HOTSPOT = ConnectionRequestFrame_Medium._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_HOTSPOT');
  static const ConnectionRequestFrame_Medium BLE = ConnectionRequestFrame_Medium._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLE');
  static const ConnectionRequestFrame_Medium WIFI_LAN = ConnectionRequestFrame_Medium._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_LAN');
  static const ConnectionRequestFrame_Medium WIFI_AWARE = ConnectionRequestFrame_Medium._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_AWARE');
  static const ConnectionRequestFrame_Medium NFC = ConnectionRequestFrame_Medium._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NFC');
  static const ConnectionRequestFrame_Medium WIFI_DIRECT = ConnectionRequestFrame_Medium._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_DIRECT');
  static const ConnectionRequestFrame_Medium WEB_RTC = ConnectionRequestFrame_Medium._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEB_RTC');
  static const ConnectionRequestFrame_Medium BLE_L2CAP = ConnectionRequestFrame_Medium._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLE_L2CAP');
  static const ConnectionRequestFrame_Medium USB = ConnectionRequestFrame_Medium._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'USB');

  static const $core.List<ConnectionRequestFrame_Medium> values = <ConnectionRequestFrame_Medium> [
    UNKNOWN_MEDIUM,
    MDNS,
    BLUETOOTH,
    WIFI_HOTSPOT,
    BLE,
    WIFI_LAN,
    WIFI_AWARE,
    NFC,
    WIFI_DIRECT,
    WEB_RTC,
    BLE_L2CAP,
    USB,
  ];

  static final $core.Map<$core.int, ConnectionRequestFrame_Medium> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectionRequestFrame_Medium? valueOf($core.int value) => _byValue[value];

  const ConnectionRequestFrame_Medium._($core.int v, $core.String n) : super(v, n);
}

class ConnectionResponseFrame_ResponseStatus extends $pb.ProtobufEnum {
  static const ConnectionResponseFrame_ResponseStatus UNKNOWN_RESPONSE_STATUS = ConnectionResponseFrame_ResponseStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_RESPONSE_STATUS');
  static const ConnectionResponseFrame_ResponseStatus ACCEPT = ConnectionResponseFrame_ResponseStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCEPT');
  static const ConnectionResponseFrame_ResponseStatus REJECT = ConnectionResponseFrame_ResponseStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECT');

  static const $core.List<ConnectionResponseFrame_ResponseStatus> values = <ConnectionResponseFrame_ResponseStatus> [
    UNKNOWN_RESPONSE_STATUS,
    ACCEPT,
    REJECT,
  ];

  static final $core.Map<$core.int, ConnectionResponseFrame_ResponseStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectionResponseFrame_ResponseStatus? valueOf($core.int value) => _byValue[value];

  const ConnectionResponseFrame_ResponseStatus._($core.int v, $core.String n) : super(v, n);
}

class PayloadTransferFrame_PacketType extends $pb.ProtobufEnum {
  static const PayloadTransferFrame_PacketType UNKNOWN_PACKET_TYPE = PayloadTransferFrame_PacketType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_PACKET_TYPE');
  static const PayloadTransferFrame_PacketType DATA = PayloadTransferFrame_PacketType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA');
  static const PayloadTransferFrame_PacketType CONTROL = PayloadTransferFrame_PacketType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTROL');

  static const $core.List<PayloadTransferFrame_PacketType> values = <PayloadTransferFrame_PacketType> [
    UNKNOWN_PACKET_TYPE,
    DATA,
    CONTROL,
  ];

  static final $core.Map<$core.int, PayloadTransferFrame_PacketType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayloadTransferFrame_PacketType? valueOf($core.int value) => _byValue[value];

  const PayloadTransferFrame_PacketType._($core.int v, $core.String n) : super(v, n);
}

class PayloadTransferFrame_PayloadHeader_PayloadType extends $pb.ProtobufEnum {
  static const PayloadTransferFrame_PayloadHeader_PayloadType UNKNOWN_PAYLOAD_TYPE = PayloadTransferFrame_PayloadHeader_PayloadType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_PAYLOAD_TYPE');
  static const PayloadTransferFrame_PayloadHeader_PayloadType BYTES = PayloadTransferFrame_PayloadHeader_PayloadType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BYTES');
  static const PayloadTransferFrame_PayloadHeader_PayloadType FILE = PayloadTransferFrame_PayloadHeader_PayloadType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE');
  static const PayloadTransferFrame_PayloadHeader_PayloadType STREAM = PayloadTransferFrame_PayloadHeader_PayloadType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STREAM');

  static const $core.List<PayloadTransferFrame_PayloadHeader_PayloadType> values = <PayloadTransferFrame_PayloadHeader_PayloadType> [
    UNKNOWN_PAYLOAD_TYPE,
    BYTES,
    FILE,
    STREAM,
  ];

  static final $core.Map<$core.int, PayloadTransferFrame_PayloadHeader_PayloadType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayloadTransferFrame_PayloadHeader_PayloadType? valueOf($core.int value) => _byValue[value];

  const PayloadTransferFrame_PayloadHeader_PayloadType._($core.int v, $core.String n) : super(v, n);
}

class PayloadTransferFrame_PayloadChunk_Flags extends $pb.ProtobufEnum {
  static const PayloadTransferFrame_PayloadChunk_Flags LAST_CHUNK = PayloadTransferFrame_PayloadChunk_Flags._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LAST_CHUNK');

  static const $core.List<PayloadTransferFrame_PayloadChunk_Flags> values = <PayloadTransferFrame_PayloadChunk_Flags> [
    LAST_CHUNK,
  ];

  static final $core.Map<$core.int, PayloadTransferFrame_PayloadChunk_Flags> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayloadTransferFrame_PayloadChunk_Flags? valueOf($core.int value) => _byValue[value];

  const PayloadTransferFrame_PayloadChunk_Flags._($core.int v, $core.String n) : super(v, n);
}

class PayloadTransferFrame_ControlMessage_EventType extends $pb.ProtobufEnum {
  static const PayloadTransferFrame_ControlMessage_EventType UNKNOWN_EVENT_TYPE = PayloadTransferFrame_ControlMessage_EventType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_EVENT_TYPE');
  static const PayloadTransferFrame_ControlMessage_EventType PAYLOAD_ERROR = PayloadTransferFrame_ControlMessage_EventType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYLOAD_ERROR');
  static const PayloadTransferFrame_ControlMessage_EventType PAYLOAD_CANCELED = PayloadTransferFrame_ControlMessage_EventType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYLOAD_CANCELED');
  static const PayloadTransferFrame_ControlMessage_EventType PAYLOAD_RECEIVED_ACK = PayloadTransferFrame_ControlMessage_EventType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYLOAD_RECEIVED_ACK');

  static const $core.List<PayloadTransferFrame_ControlMessage_EventType> values = <PayloadTransferFrame_ControlMessage_EventType> [
    UNKNOWN_EVENT_TYPE,
    PAYLOAD_ERROR,
    PAYLOAD_CANCELED,
    PAYLOAD_RECEIVED_ACK,
  ];

  static final $core.Map<$core.int, PayloadTransferFrame_ControlMessage_EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayloadTransferFrame_ControlMessage_EventType? valueOf($core.int value) => _byValue[value];

  const PayloadTransferFrame_ControlMessage_EventType._($core.int v, $core.String n) : super(v, n);
}

class BandwidthUpgradeNegotiationFrame_EventType extends $pb.ProtobufEnum {
  static const BandwidthUpgradeNegotiationFrame_EventType UNKNOWN_EVENT_TYPE = BandwidthUpgradeNegotiationFrame_EventType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_EVENT_TYPE');
  static const BandwidthUpgradeNegotiationFrame_EventType UPGRADE_PATH_AVAILABLE = BandwidthUpgradeNegotiationFrame_EventType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPGRADE_PATH_AVAILABLE');
  static const BandwidthUpgradeNegotiationFrame_EventType LAST_WRITE_TO_PRIOR_CHANNEL = BandwidthUpgradeNegotiationFrame_EventType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LAST_WRITE_TO_PRIOR_CHANNEL');
  static const BandwidthUpgradeNegotiationFrame_EventType SAFE_TO_CLOSE_PRIOR_CHANNEL = BandwidthUpgradeNegotiationFrame_EventType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAFE_TO_CLOSE_PRIOR_CHANNEL');
  static const BandwidthUpgradeNegotiationFrame_EventType CLIENT_INTRODUCTION = BandwidthUpgradeNegotiationFrame_EventType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLIENT_INTRODUCTION');
  static const BandwidthUpgradeNegotiationFrame_EventType UPGRADE_FAILURE = BandwidthUpgradeNegotiationFrame_EventType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPGRADE_FAILURE');
  static const BandwidthUpgradeNegotiationFrame_EventType CLIENT_INTRODUCTION_ACK = BandwidthUpgradeNegotiationFrame_EventType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLIENT_INTRODUCTION_ACK');

  static const $core.List<BandwidthUpgradeNegotiationFrame_EventType> values = <BandwidthUpgradeNegotiationFrame_EventType> [
    UNKNOWN_EVENT_TYPE,
    UPGRADE_PATH_AVAILABLE,
    LAST_WRITE_TO_PRIOR_CHANNEL,
    SAFE_TO_CLOSE_PRIOR_CHANNEL,
    CLIENT_INTRODUCTION,
    UPGRADE_FAILURE,
    CLIENT_INTRODUCTION_ACK,
  ];

  static final $core.Map<$core.int, BandwidthUpgradeNegotiationFrame_EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BandwidthUpgradeNegotiationFrame_EventType? valueOf($core.int value) => _byValue[value];

  const BandwidthUpgradeNegotiationFrame_EventType._($core.int v, $core.String n) : super(v, n);
}

class BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium extends $pb.ProtobufEnum {
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium UNKNOWN_MEDIUM = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_MEDIUM');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium MDNS = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MDNS');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium BLUETOOTH = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLUETOOTH');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium WIFI_HOTSPOT = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_HOTSPOT');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium BLE = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLE');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium WIFI_LAN = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_LAN');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium WIFI_AWARE = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_AWARE');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium NFC = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NFC');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium WIFI_DIRECT = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WIFI_DIRECT');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium WEB_RTC = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEB_RTC');
  static const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium USB = BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'USB');

  static const $core.List<BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium> values = <BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium> [
    UNKNOWN_MEDIUM,
    MDNS,
    BLUETOOTH,
    WIFI_HOTSPOT,
    BLE,
    WIFI_LAN,
    WIFI_AWARE,
    NFC,
    WIFI_DIRECT,
    WEB_RTC,
    USB,
  ];

  static final $core.Map<$core.int, BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium? valueOf($core.int value) => _byValue[value];

  const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium._($core.int v, $core.String n) : super(v, n);
}

class LocationStandard_Format extends $pb.ProtobufEnum {
  static const LocationStandard_Format UNKNOWN = LocationStandard_Format._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const LocationStandard_Format E164_CALLING = LocationStandard_Format._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'E164_CALLING');
  static const LocationStandard_Format ISO_3166_1_ALPHA_2 = LocationStandard_Format._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ISO_3166_1_ALPHA_2');

  static const $core.List<LocationStandard_Format> values = <LocationStandard_Format> [
    UNKNOWN,
    E164_CALLING,
    ISO_3166_1_ALPHA_2,
  ];

  static final $core.Map<$core.int, LocationStandard_Format> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocationStandard_Format? valueOf($core.int value) => _byValue[value];

  const LocationStandard_Format._($core.int v, $core.String n) : super(v, n);
}

class OsInfo_OsType extends $pb.ProtobufEnum {
  static const OsInfo_OsType UNKNOWN_OS_TYPE = OsInfo_OsType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_OS_TYPE');
  static const OsInfo_OsType ANDROID = OsInfo_OsType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID');
  static const OsInfo_OsType CHROME_OS = OsInfo_OsType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHROME_OS');
  static const OsInfo_OsType WINDOWS = OsInfo_OsType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WINDOWS');
  static const OsInfo_OsType APPLE = OsInfo_OsType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPLE');
  static const OsInfo_OsType LINUX = OsInfo_OsType._(100, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LINUX');

  static const $core.List<OsInfo_OsType> values = <OsInfo_OsType> [
    UNKNOWN_OS_TYPE,
    ANDROID,
    CHROME_OS,
    WINDOWS,
    APPLE,
    LINUX,
  ];

  static final $core.Map<$core.int, OsInfo_OsType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OsInfo_OsType? valueOf($core.int value) => _byValue[value];

  const OsInfo_OsType._($core.int v, $core.String n) : super(v, n);
}

