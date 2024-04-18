//
//  Generated code. Do not modify.
//  source: offline_wire_formats.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use offlineFrameDescriptor instead')
const OfflineFrame$json = {
  '1': 'OfflineFrame',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.OfflineFrame.Version', '10': 'version'},
    {'1': 'v1', '3': 2, '4': 1, '5': 11, '6': '.location.nearby.connections.V1Frame', '10': 'v1'},
  ],
  '4': [OfflineFrame_Version$json],
};

@$core.Deprecated('Use offlineFrameDescriptor instead')
const OfflineFrame_Version$json = {
  '1': 'Version',
  '2': [
    {'1': 'UNKNOWN_VERSION', '2': 0},
    {'1': 'V1', '2': 1},
  ],
};

/// Descriptor for `OfflineFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlineFrameDescriptor = $convert.base64Decode(
    'CgxPZmZsaW5lRnJhbWUSSwoHdmVyc2lvbhgBIAEoDjIxLmxvY2F0aW9uLm5lYXJieS5jb25uZW'
    'N0aW9ucy5PZmZsaW5lRnJhbWUuVmVyc2lvblIHdmVyc2lvbhI0CgJ2MRgCIAEoCzIkLmxvY2F0'
    'aW9uLm5lYXJieS5jb25uZWN0aW9ucy5WMUZyYW1lUgJ2MSImCgdWZXJzaW9uEhMKD1VOS05PV0'
    '5fVkVSU0lPThAAEgYKAlYxEAE=');

@$core.Deprecated('Use v1FrameDescriptor instead')
const V1Frame$json = {
  '1': 'V1Frame',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.V1Frame.FrameType', '10': 'type'},
    {'1': 'connection_request', '3': 2, '4': 1, '5': 11, '6': '.location.nearby.connections.ConnectionRequestFrame', '10': 'connectionRequest'},
    {'1': 'connection_response', '3': 3, '4': 1, '5': 11, '6': '.location.nearby.connections.ConnectionResponseFrame', '10': 'connectionResponse'},
    {'1': 'payload_transfer', '3': 4, '4': 1, '5': 11, '6': '.location.nearby.connections.PayloadTransferFrame', '10': 'payloadTransfer'},
    {'1': 'bandwidth_upgrade_negotiation', '3': 5, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame', '10': 'bandwidthUpgradeNegotiation'},
    {'1': 'keep_alive', '3': 6, '4': 1, '5': 11, '6': '.location.nearby.connections.KeepAliveFrame', '10': 'keepAlive'},
    {'1': 'disconnection', '3': 7, '4': 1, '5': 11, '6': '.location.nearby.connections.DisconnectionFrame', '10': 'disconnection'},
    {'1': 'paired_key_encryption', '3': 8, '4': 1, '5': 11, '6': '.location.nearby.connections.PairedKeyEncryptionFrame', '10': 'pairedKeyEncryption'},
  ],
  '4': [V1Frame_FrameType$json],
};

@$core.Deprecated('Use v1FrameDescriptor instead')
const V1Frame_FrameType$json = {
  '1': 'FrameType',
  '2': [
    {'1': 'UNKNOWN_FRAME_TYPE', '2': 0},
    {'1': 'CONNECTION_REQUEST', '2': 1},
    {'1': 'CONNECTION_RESPONSE', '2': 2},
    {'1': 'PAYLOAD_TRANSFER', '2': 3},
    {'1': 'BANDWIDTH_UPGRADE_NEGOTIATION', '2': 4},
    {'1': 'KEEP_ALIVE', '2': 5},
    {'1': 'DISCONNECTION', '2': 6},
    {'1': 'PAIRED_KEY_ENCRYPTION', '2': 7},
  ],
};

/// Descriptor for `V1Frame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List v1FrameDescriptor = $convert.base64Decode(
    'CgdWMUZyYW1lEkIKBHR5cGUYASABKA4yLi5sb2NhdGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuVj'
    'FGcmFtZS5GcmFtZVR5cGVSBHR5cGUSYgoSY29ubmVjdGlvbl9yZXF1ZXN0GAIgASgLMjMubG9j'
    'YXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25zLkNvbm5lY3Rpb25SZXF1ZXN0RnJhbWVSEWNvbm5lY3'
    'Rpb25SZXF1ZXN0EmUKE2Nvbm5lY3Rpb25fcmVzcG9uc2UYAyABKAsyNC5sb2NhdGlvbi5uZWFy'
    'YnkuY29ubmVjdGlvbnMuQ29ubmVjdGlvblJlc3BvbnNlRnJhbWVSEmNvbm5lY3Rpb25SZXNwb2'
    '5zZRJcChBwYXlsb2FkX3RyYW5zZmVyGAQgASgLMjEubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rp'
    'b25zLlBheWxvYWRUcmFuc2ZlckZyYW1lUg9wYXlsb2FkVHJhbnNmZXISgQEKHWJhbmR3aWR0aF'
    '91cGdyYWRlX25lZ290aWF0aW9uGAUgASgLMj0ubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25z'
    'LkJhbmR3aWR0aFVwZ3JhZGVOZWdvdGlhdGlvbkZyYW1lUhtiYW5kd2lkdGhVcGdyYWRlTmVnb3'
    'RpYXRpb24SSgoKa2VlcF9hbGl2ZRgGIAEoCzIrLmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9u'
    'cy5LZWVwQWxpdmVGcmFtZVIJa2VlcEFsaXZlElUKDWRpc2Nvbm5lY3Rpb24YByABKAsyLy5sb2'
    'NhdGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuRGlzY29ubmVjdGlvbkZyYW1lUg1kaXNjb25uZWN0'
    'aW9uEmkKFXBhaXJlZF9rZXlfZW5jcnlwdGlvbhgIIAEoCzI1LmxvY2F0aW9uLm5lYXJieS5jb2'
    '5uZWN0aW9ucy5QYWlyZWRLZXlFbmNyeXB0aW9uRnJhbWVSE3BhaXJlZEtleUVuY3J5cHRpb24i'
    'ywEKCUZyYW1lVHlwZRIWChJVTktOT1dOX0ZSQU1FX1RZUEUQABIWChJDT05ORUNUSU9OX1JFUV'
    'VFU1QQARIXChNDT05ORUNUSU9OX1JFU1BPTlNFEAISFAoQUEFZTE9BRF9UUkFOU0ZFUhADEiEK'
    'HUJBTkRXSURUSF9VUEdSQURFX05FR09USUFUSU9OEAQSDgoKS0VFUF9BTElWRRAFEhEKDURJU0'
    'NPTk5FQ1RJT04QBhIZChVQQUlSRURfS0VZX0VOQ1JZUFRJT04QBw==');

@$core.Deprecated('Use connectionRequestFrameDescriptor instead')
const ConnectionRequestFrame$json = {
  '1': 'ConnectionRequestFrame',
  '2': [
    {'1': 'endpoint_id', '3': 1, '4': 1, '5': 9, '10': 'endpointId'},
    {'1': 'endpoint_name', '3': 2, '4': 1, '5': 9, '10': 'endpointName'},
    {'1': 'handshake_data', '3': 3, '4': 1, '5': 12, '10': 'handshakeData'},
    {'1': 'nonce', '3': 4, '4': 1, '5': 5, '10': 'nonce'},
    {'1': 'mediums', '3': 5, '4': 3, '5': 14, '6': '.location.nearby.connections.ConnectionRequestFrame.Medium', '10': 'mediums'},
    {'1': 'endpoint_info', '3': 6, '4': 1, '5': 12, '10': 'endpointInfo'},
    {'1': 'medium_metadata', '3': 7, '4': 1, '5': 11, '6': '.location.nearby.connections.MediumMetadata', '10': 'mediumMetadata'},
    {'1': 'keep_alive_interval_millis', '3': 8, '4': 1, '5': 5, '10': 'keepAliveIntervalMillis'},
    {'1': 'keep_alive_timeout_millis', '3': 9, '4': 1, '5': 5, '10': 'keepAliveTimeoutMillis'},
    {'1': 'device_type', '3': 10, '4': 1, '5': 5, '7': '0', '10': 'deviceType'},
    {'1': 'device_info', '3': 11, '4': 1, '5': 12, '10': 'deviceInfo'},
  ],
  '4': [ConnectionRequestFrame_Medium$json],
};

@$core.Deprecated('Use connectionRequestFrameDescriptor instead')
const ConnectionRequestFrame_Medium$json = {
  '1': 'Medium',
  '2': [
    {'1': 'UNKNOWN_MEDIUM', '2': 0},
    {
      '1': 'MDNS',
      '2': 1,
      '3': {'1': true},
    },
    {'1': 'BLUETOOTH', '2': 2},
    {'1': 'WIFI_HOTSPOT', '2': 3},
    {'1': 'BLE', '2': 4},
    {'1': 'WIFI_LAN', '2': 5},
    {'1': 'WIFI_AWARE', '2': 6},
    {'1': 'NFC', '2': 7},
    {'1': 'WIFI_DIRECT', '2': 8},
    {'1': 'WEB_RTC', '2': 9},
    {'1': 'BLE_L2CAP', '2': 10},
    {'1': 'USB', '2': 11},
  ],
};

/// Descriptor for `ConnectionRequestFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionRequestFrameDescriptor = $convert.base64Decode(
    'ChZDb25uZWN0aW9uUmVxdWVzdEZyYW1lEh8KC2VuZHBvaW50X2lkGAEgASgJUgplbmRwb2ludE'
    'lkEiMKDWVuZHBvaW50X25hbWUYAiABKAlSDGVuZHBvaW50TmFtZRIlCg5oYW5kc2hha2VfZGF0'
    'YRgDIAEoDFINaGFuZHNoYWtlRGF0YRIUCgVub25jZRgEIAEoBVIFbm9uY2USVAoHbWVkaXVtcx'
    'gFIAMoDjI6LmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5Db25uZWN0aW9uUmVxdWVzdEZy'
    'YW1lLk1lZGl1bVIHbWVkaXVtcxIjCg1lbmRwb2ludF9pbmZvGAYgASgMUgxlbmRwb2ludEluZm'
    '8SVAoPbWVkaXVtX21ldGFkYXRhGAcgASgLMisubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25z'
    'Lk1lZGl1bU1ldGFkYXRhUg5tZWRpdW1NZXRhZGF0YRI7ChprZWVwX2FsaXZlX2ludGVydmFsX2'
    '1pbGxpcxgIIAEoBVIXa2VlcEFsaXZlSW50ZXJ2YWxNaWxsaXMSOQoZa2VlcF9hbGl2ZV90aW1l'
    'b3V0X21pbGxpcxgJIAEoBVIWa2VlcEFsaXZlVGltZW91dE1pbGxpcxIiCgtkZXZpY2VfdHlwZR'
    'gKIAEoBToBMFIKZGV2aWNlVHlwZRIfCgtkZXZpY2VfaW5mbxgLIAEoDFIKZGV2aWNlSW5mbyKx'
    'AQoGTWVkaXVtEhIKDlVOS05PV05fTUVESVVNEAASDAoETUROUxABGgIIARINCglCTFVFVE9PVE'
    'gQAhIQCgxXSUZJX0hPVFNQT1QQAxIHCgNCTEUQBBIMCghXSUZJX0xBThAFEg4KCldJRklfQVdB'
    'UkUQBhIHCgNORkMQBxIPCgtXSUZJX0RJUkVDVBAIEgsKB1dFQl9SVEMQCRINCglCTEVfTDJDQV'
    'AQChIHCgNVU0IQCw==');

@$core.Deprecated('Use connectionResponseFrameDescriptor instead')
const ConnectionResponseFrame$json = {
  '1': 'ConnectionResponseFrame',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'status',
    },
    {'1': 'handshake_data', '3': 2, '4': 1, '5': 12, '10': 'handshakeData'},
    {'1': 'response', '3': 3, '4': 1, '5': 14, '6': '.location.nearby.connections.ConnectionResponseFrame.ResponseStatus', '10': 'response'},
    {'1': 'os_info', '3': 4, '4': 1, '5': 11, '6': '.location.nearby.connections.OsInfo', '10': 'osInfo'},
    {'1': 'multiplex_socket_bitmask', '3': 5, '4': 1, '5': 5, '10': 'multiplexSocketBitmask'},
    {'1': 'nearby_connections_version', '3': 6, '4': 1, '5': 5, '10': 'nearbyConnectionsVersion'},
  ],
  '4': [ConnectionResponseFrame_ResponseStatus$json],
};

@$core.Deprecated('Use connectionResponseFrameDescriptor instead')
const ConnectionResponseFrame_ResponseStatus$json = {
  '1': 'ResponseStatus',
  '2': [
    {'1': 'UNKNOWN_RESPONSE_STATUS', '2': 0},
    {'1': 'ACCEPT', '2': 1},
    {'1': 'REJECT', '2': 2},
  ],
};

/// Descriptor for `ConnectionResponseFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionResponseFrameDescriptor = $convert.base64Decode(
    'ChdDb25uZWN0aW9uUmVzcG9uc2VGcmFtZRIaCgZzdGF0dXMYASABKAVCAhgBUgZzdGF0dXMSJQ'
    'oOaGFuZHNoYWtlX2RhdGEYAiABKAxSDWhhbmRzaGFrZURhdGESXwoIcmVzcG9uc2UYAyABKA4y'
    'Qy5sb2NhdGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuQ29ubmVjdGlvblJlc3BvbnNlRnJhbWUuUm'
    'VzcG9uc2VTdGF0dXNSCHJlc3BvbnNlEjwKB29zX2luZm8YBCABKAsyIy5sb2NhdGlvbi5uZWFy'
    'YnkuY29ubmVjdGlvbnMuT3NJbmZvUgZvc0luZm8SOAoYbXVsdGlwbGV4X3NvY2tldF9iaXRtYX'
    'NrGAUgASgFUhZtdWx0aXBsZXhTb2NrZXRCaXRtYXNrEjwKGm5lYXJieV9jb25uZWN0aW9uc192'
    'ZXJzaW9uGAYgASgFUhhuZWFyYnlDb25uZWN0aW9uc1ZlcnNpb24iRQoOUmVzcG9uc2VTdGF0dX'
    'MSGwoXVU5LTk9XTl9SRVNQT05TRV9TVEFUVVMQABIKCgZBQ0NFUFQQARIKCgZSRUpFQ1QQAg==');

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame$json = {
  '1': 'PayloadTransferFrame',
  '2': [
    {'1': 'packet_type', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.PayloadTransferFrame.PacketType', '10': 'packetType'},
    {'1': 'payload_header', '3': 2, '4': 1, '5': 11, '6': '.location.nearby.connections.PayloadTransferFrame.PayloadHeader', '10': 'payloadHeader'},
    {'1': 'payload_chunk', '3': 3, '4': 1, '5': 11, '6': '.location.nearby.connections.PayloadTransferFrame.PayloadChunk', '10': 'payloadChunk'},
    {'1': 'control_message', '3': 4, '4': 1, '5': 11, '6': '.location.nearby.connections.PayloadTransferFrame.ControlMessage', '10': 'controlMessage'},
  ],
  '3': [PayloadTransferFrame_PayloadHeader$json, PayloadTransferFrame_PayloadChunk$json, PayloadTransferFrame_ControlMessage$json],
  '4': [PayloadTransferFrame_PacketType$json],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_PayloadHeader$json = {
  '1': 'PayloadHeader',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.location.nearby.connections.PayloadTransferFrame.PayloadHeader.PayloadType', '10': 'type'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 3, '10': 'totalSize'},
    {'1': 'is_sensitive', '3': 4, '4': 1, '5': 8, '10': 'isSensitive'},
    {'1': 'file_name', '3': 5, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'parent_folder', '3': 6, '4': 1, '5': 9, '10': 'parentFolder'},
  ],
  '4': [PayloadTransferFrame_PayloadHeader_PayloadType$json],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_PayloadHeader_PayloadType$json = {
  '1': 'PayloadType',
  '2': [
    {'1': 'UNKNOWN_PAYLOAD_TYPE', '2': 0},
    {'1': 'BYTES', '2': 1},
    {'1': 'FILE', '2': 2},
    {'1': 'STREAM', '2': 3},
  ],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_PayloadChunk$json = {
  '1': 'PayloadChunk',
  '2': [
    {'1': 'flags', '3': 1, '4': 1, '5': 5, '10': 'flags'},
    {'1': 'offset', '3': 2, '4': 1, '5': 3, '10': 'offset'},
    {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
  '4': [PayloadTransferFrame_PayloadChunk_Flags$json],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_PayloadChunk_Flags$json = {
  '1': 'Flags',
  '2': [
    {'1': 'LAST_CHUNK', '2': 1},
  ],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_ControlMessage$json = {
  '1': 'ControlMessage',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.PayloadTransferFrame.ControlMessage.EventType', '10': 'event'},
    {'1': 'offset', '3': 2, '4': 1, '5': 3, '10': 'offset'},
  ],
  '4': [PayloadTransferFrame_ControlMessage_EventType$json],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_ControlMessage_EventType$json = {
  '1': 'EventType',
  '2': [
    {'1': 'UNKNOWN_EVENT_TYPE', '2': 0},
    {'1': 'PAYLOAD_ERROR', '2': 1},
    {'1': 'PAYLOAD_CANCELED', '2': 2},
    {'1': 'PAYLOAD_RECEIVED_ACK', '2': 3},
  ],
};

@$core.Deprecated('Use payloadTransferFrameDescriptor instead')
const PayloadTransferFrame_PacketType$json = {
  '1': 'PacketType',
  '2': [
    {'1': 'UNKNOWN_PACKET_TYPE', '2': 0},
    {'1': 'DATA', '2': 1},
    {'1': 'CONTROL', '2': 2},
  ],
};

/// Descriptor for `PayloadTransferFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payloadTransferFrameDescriptor = $convert.base64Decode(
    'ChRQYXlsb2FkVHJhbnNmZXJGcmFtZRJdCgtwYWNrZXRfdHlwZRgBIAEoDjI8LmxvY2F0aW9uLm'
    '5lYXJieS5jb25uZWN0aW9ucy5QYXlsb2FkVHJhbnNmZXJGcmFtZS5QYWNrZXRUeXBlUgpwYWNr'
    'ZXRUeXBlEmYKDnBheWxvYWRfaGVhZGVyGAIgASgLMj8ubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3'
    'Rpb25zLlBheWxvYWRUcmFuc2ZlckZyYW1lLlBheWxvYWRIZWFkZXJSDXBheWxvYWRIZWFkZXIS'
    'YwoNcGF5bG9hZF9jaHVuaxgDIAEoCzI+LmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5QYX'
    'lsb2FkVHJhbnNmZXJGcmFtZS5QYXlsb2FkQ2h1bmtSDHBheWxvYWRDaHVuaxJpCg9jb250cm9s'
    'X21lc3NhZ2UYBCABKAsyQC5sb2NhdGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuUGF5bG9hZFRyYW'
    '5zZmVyRnJhbWUuQ29udHJvbE1lc3NhZ2VSDmNvbnRyb2xNZXNzYWdlGs4CCg1QYXlsb2FkSGVh'
    'ZGVyEg4KAmlkGAEgASgDUgJpZBJfCgR0eXBlGAIgASgOMksubG9jYXRpb24ubmVhcmJ5LmNvbm'
    '5lY3Rpb25zLlBheWxvYWRUcmFuc2ZlckZyYW1lLlBheWxvYWRIZWFkZXIuUGF5bG9hZFR5cGVS'
    'BHR5cGUSHQoKdG90YWxfc2l6ZRgDIAEoA1IJdG90YWxTaXplEiEKDGlzX3NlbnNpdGl2ZRgEIA'
    'EoCFILaXNTZW5zaXRpdmUSGwoJZmlsZV9uYW1lGAUgASgJUghmaWxlTmFtZRIjCg1wYXJlbnRf'
    'Zm9sZGVyGAYgASgJUgxwYXJlbnRGb2xkZXIiSAoLUGF5bG9hZFR5cGUSGAoUVU5LTk9XTl9QQV'
    'lMT0FEX1RZUEUQABIJCgVCWVRFUxABEggKBEZJTEUQAhIKCgZTVFJFQU0QAxppCgxQYXlsb2Fk'
    'Q2h1bmsSFAoFZmxhZ3MYASABKAVSBWZsYWdzEhYKBm9mZnNldBgCIAEoA1IGb2Zmc2V0EhIKBG'
    'JvZHkYAyABKAxSBGJvZHkiFwoFRmxhZ3MSDgoKTEFTVF9DSFVOSxABGvIBCg5Db250cm9sTWVz'
    'c2FnZRJgCgVldmVudBgBIAEoDjJKLmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5QYXlsb2'
    'FkVHJhbnNmZXJGcmFtZS5Db250cm9sTWVzc2FnZS5FdmVudFR5cGVSBWV2ZW50EhYKBm9mZnNl'
    'dBgCIAEoA1IGb2Zmc2V0ImYKCUV2ZW50VHlwZRIWChJVTktOT1dOX0VWRU5UX1RZUEUQABIRCg'
    '1QQVlMT0FEX0VSUk9SEAESFAoQUEFZTE9BRF9DQU5DRUxFRBACEhgKFFBBWUxPQURfUkVDRUlW'
    'RURfQUNLEAMiPAoKUGFja2V0VHlwZRIXChNVTktOT1dOX1BBQ0tFVF9UWVBFEAASCAoEREFUQR'
    'ABEgsKB0NPTlRST0wQAg==');

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame$json = {
  '1': 'BandwidthUpgradeNegotiationFrame',
  '2': [
    {'1': 'event_type', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.EventType', '10': 'eventType'},
    {'1': 'upgrade_path_info', '3': 2, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo', '10': 'upgradePathInfo'},
    {'1': 'client_introduction', '3': 3, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.ClientIntroduction', '10': 'clientIntroduction'},
    {'1': 'client_introduction_ack', '3': 4, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.ClientIntroductionAck', '10': 'clientIntroductionAck'},
  ],
  '3': [BandwidthUpgradeNegotiationFrame_UpgradePathInfo$json, BandwidthUpgradeNegotiationFrame_ClientIntroduction$json, BandwidthUpgradeNegotiationFrame_ClientIntroductionAck$json],
  '4': [BandwidthUpgradeNegotiationFrame_EventType$json],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo$json = {
  '1': 'UpgradePathInfo',
  '2': [
    {'1': 'medium', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.Medium', '10': 'medium'},
    {'1': 'wifi_hotspot_credentials', '3': 2, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiHotspotCredentials', '10': 'wifiHotspotCredentials'},
    {'1': 'wifi_lan_socket', '3': 3, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiLanSocket', '10': 'wifiLanSocket'},
    {'1': 'bluetooth_credentials', '3': 4, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.BluetoothCredentials', '10': 'bluetoothCredentials'},
    {'1': 'wifi_aware_credentials', '3': 5, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiAwareCredentials', '10': 'wifiAwareCredentials'},
    {'1': 'wifi_direct_credentials', '3': 6, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WifiDirectCredentials', '10': 'wifiDirectCredentials'},
    {'1': 'web_rtc_credentials', '3': 8, '4': 1, '5': 11, '6': '.location.nearby.connections.BandwidthUpgradeNegotiationFrame.UpgradePathInfo.WebRtcCredentials', '10': 'webRtcCredentials'},
    {'1': 'supports_disabling_encryption', '3': 7, '4': 1, '5': 8, '10': 'supportsDisablingEncryption'},
    {'1': 'supports_client_introduction_ack', '3': 9, '4': 1, '5': 8, '10': 'supportsClientIntroductionAck'},
  ],
  '3': [BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials$json, BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket$json, BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials$json, BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials$json, BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials$json, BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials$json],
  '4': [BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium$json],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiHotspotCredentials$json = {
  '1': 'WifiHotspotCredentials',
  '2': [
    {'1': 'ssid', '3': 1, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'port', '3': 3, '4': 1, '5': 5, '10': 'port'},
    {'1': 'gateway', '3': 4, '4': 1, '5': 9, '7': '0.0.0.0', '10': 'gateway'},
    {'1': 'frequency', '3': 5, '4': 1, '5': 5, '7': '-1', '10': 'frequency'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiLanSocket$json = {
  '1': 'WifiLanSocket',
  '2': [
    {'1': 'ip_address', '3': 1, '4': 1, '5': 12, '10': 'ipAddress'},
    {'1': 'wifi_port', '3': 2, '4': 1, '5': 5, '10': 'wifiPort'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_BluetoothCredentials$json = {
  '1': 'BluetoothCredentials',
  '2': [
    {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'mac_address', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiAwareCredentials$json = {
  '1': 'WifiAwareCredentials',
  '2': [
    {'1': 'service_id', '3': 1, '4': 1, '5': 9, '10': 'serviceId'},
    {'1': 'service_info', '3': 2, '4': 1, '5': 12, '10': 'serviceInfo'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WifiDirectCredentials$json = {
  '1': 'WifiDirectCredentials',
  '2': [
    {'1': 'ssid', '3': 1, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'port', '3': 3, '4': 1, '5': 5, '10': 'port'},
    {'1': 'frequency', '3': 4, '4': 1, '5': 5, '10': 'frequency'},
    {'1': 'gateway', '3': 5, '4': 1, '5': 9, '7': '0.0.0.0', '10': 'gateway'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_WebRtcCredentials$json = {
  '1': 'WebRtcCredentials',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 9, '10': 'peerId'},
    {'1': 'location_hint', '3': 2, '4': 1, '5': 11, '6': '.location.nearby.connections.LocationHint', '10': 'locationHint'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_UpgradePathInfo_Medium$json = {
  '1': 'Medium',
  '2': [
    {'1': 'UNKNOWN_MEDIUM', '2': 0},
    {
      '1': 'MDNS',
      '2': 1,
      '3': {'1': true},
    },
    {'1': 'BLUETOOTH', '2': 2},
    {'1': 'WIFI_HOTSPOT', '2': 3},
    {'1': 'BLE', '2': 4},
    {'1': 'WIFI_LAN', '2': 5},
    {'1': 'WIFI_AWARE', '2': 6},
    {'1': 'NFC', '2': 7},
    {'1': 'WIFI_DIRECT', '2': 8},
    {'1': 'WEB_RTC', '2': 9},
    {'1': 'USB', '2': 11},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_ClientIntroduction$json = {
  '1': 'ClientIntroduction',
  '2': [
    {'1': 'endpoint_id', '3': 1, '4': 1, '5': 9, '10': 'endpointId'},
    {'1': 'supports_disabling_encryption', '3': 2, '4': 1, '5': 8, '10': 'supportsDisablingEncryption'},
  ],
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_ClientIntroductionAck$json = {
  '1': 'ClientIntroductionAck',
};

@$core.Deprecated('Use bandwidthUpgradeNegotiationFrameDescriptor instead')
const BandwidthUpgradeNegotiationFrame_EventType$json = {
  '1': 'EventType',
  '2': [
    {'1': 'UNKNOWN_EVENT_TYPE', '2': 0},
    {'1': 'UPGRADE_PATH_AVAILABLE', '2': 1},
    {'1': 'LAST_WRITE_TO_PRIOR_CHANNEL', '2': 2},
    {'1': 'SAFE_TO_CLOSE_PRIOR_CHANNEL', '2': 3},
    {'1': 'CLIENT_INTRODUCTION', '2': 4},
    {'1': 'UPGRADE_FAILURE', '2': 5},
    {'1': 'CLIENT_INTRODUCTION_ACK', '2': 6},
  ],
};

/// Descriptor for `BandwidthUpgradeNegotiationFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bandwidthUpgradeNegotiationFrameDescriptor = $convert.base64Decode(
    'CiBCYW5kd2lkdGhVcGdyYWRlTmVnb3RpYXRpb25GcmFtZRJmCgpldmVudF90eXBlGAEgASgOMk'
    'cubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25zLkJhbmR3aWR0aFVwZ3JhZGVOZWdvdGlhdGlv'
    'bkZyYW1lLkV2ZW50VHlwZVIJZXZlbnRUeXBlEnkKEXVwZ3JhZGVfcGF0aF9pbmZvGAIgASgLMk'
    '0ubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25zLkJhbmR3aWR0aFVwZ3JhZGVOZWdvdGlhdGlv'
    'bkZyYW1lLlVwZ3JhZGVQYXRoSW5mb1IPdXBncmFkZVBhdGhJbmZvEoEBChNjbGllbnRfaW50cm'
    '9kdWN0aW9uGAMgASgLMlAubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25zLkJhbmR3aWR0aFVw'
    'Z3JhZGVOZWdvdGlhdGlvbkZyYW1lLkNsaWVudEludHJvZHVjdGlvblISY2xpZW50SW50cm9kdW'
    'N0aW9uEosBChdjbGllbnRfaW50cm9kdWN0aW9uX2FjaxgEIAEoCzJTLmxvY2F0aW9uLm5lYXJi'
    'eS5jb25uZWN0aW9ucy5CYW5kd2lkdGhVcGdyYWRlTmVnb3RpYXRpb25GcmFtZS5DbGllbnRJbn'
    'Ryb2R1Y3Rpb25BY2tSFWNsaWVudEludHJvZHVjdGlvbkFjaxqdEAoPVXBncmFkZVBhdGhJbmZv'
    'EmwKBm1lZGl1bRgBIAEoDjJULmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5CYW5kd2lkdG'
    'hVcGdyYWRlTmVnb3RpYXRpb25GcmFtZS5VcGdyYWRlUGF0aEluZm8uTWVkaXVtUgZtZWRpdW0S'
    'ngEKGHdpZmlfaG90c3BvdF9jcmVkZW50aWFscxgCIAEoCzJkLmxvY2F0aW9uLm5lYXJieS5jb2'
    '5uZWN0aW9ucy5CYW5kd2lkdGhVcGdyYWRlTmVnb3RpYXRpb25GcmFtZS5VcGdyYWRlUGF0aElu'
    'Zm8uV2lmaUhvdHNwb3RDcmVkZW50aWFsc1IWd2lmaUhvdHNwb3RDcmVkZW50aWFscxKDAQoPd2'
    'lmaV9sYW5fc29ja2V0GAMgASgLMlsubG9jYXRpb24ubmVhcmJ5LmNvbm5lY3Rpb25zLkJhbmR3'
    'aWR0aFVwZ3JhZGVOZWdvdGlhdGlvbkZyYW1lLlVwZ3JhZGVQYXRoSW5mby5XaWZpTGFuU29ja2'
    'V0Ug13aWZpTGFuU29ja2V0EpcBChVibHVldG9vdGhfY3JlZGVudGlhbHMYBCABKAsyYi5sb2Nh'
    'dGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuQmFuZHdpZHRoVXBncmFkZU5lZ290aWF0aW9uRnJhbW'
    'UuVXBncmFkZVBhdGhJbmZvLkJsdWV0b290aENyZWRlbnRpYWxzUhRibHVldG9vdGhDcmVkZW50'
    'aWFscxKYAQoWd2lmaV9hd2FyZV9jcmVkZW50aWFscxgFIAEoCzJiLmxvY2F0aW9uLm5lYXJieS'
    '5jb25uZWN0aW9ucy5CYW5kd2lkdGhVcGdyYWRlTmVnb3RpYXRpb25GcmFtZS5VcGdyYWRlUGF0'
    'aEluZm8uV2lmaUF3YXJlQ3JlZGVudGlhbHNSFHdpZmlBd2FyZUNyZWRlbnRpYWxzEpsBChd3aW'
    'ZpX2RpcmVjdF9jcmVkZW50aWFscxgGIAEoCzJjLmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9u'
    'cy5CYW5kd2lkdGhVcGdyYWRlTmVnb3RpYXRpb25GcmFtZS5VcGdyYWRlUGF0aEluZm8uV2lmaU'
    'RpcmVjdENyZWRlbnRpYWxzUhV3aWZpRGlyZWN0Q3JlZGVudGlhbHMSjwEKE3dlYl9ydGNfY3Jl'
    'ZGVudGlhbHMYCCABKAsyXy5sb2NhdGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuQmFuZHdpZHRoVX'
    'BncmFkZU5lZ290aWF0aW9uRnJhbWUuVXBncmFkZVBhdGhJbmZvLldlYlJ0Y0NyZWRlbnRpYWxz'
    'UhF3ZWJSdGNDcmVkZW50aWFscxJCCh1zdXBwb3J0c19kaXNhYmxpbmdfZW5jcnlwdGlvbhgHIA'
    'EoCFIbc3VwcG9ydHNEaXNhYmxpbmdFbmNyeXB0aW9uEkcKIHN1cHBvcnRzX2NsaWVudF9pbnRy'
    'b2R1Y3Rpb25fYWNrGAkgASgIUh1zdXBwb3J0c0NsaWVudEludHJvZHVjdGlvbkFjaxqhAQoWV2'
    'lmaUhvdHNwb3RDcmVkZW50aWFscxISCgRzc2lkGAEgASgJUgRzc2lkEhoKCHBhc3N3b3JkGAIg'
    'ASgJUghwYXNzd29yZBISCgRwb3J0GAMgASgFUgRwb3J0EiEKB2dhdGV3YXkYBCABKAk6BzAuMC'
    '4wLjBSB2dhdGV3YXkSIAoJZnJlcXVlbmN5GAUgASgFOgItMVIJZnJlcXVlbmN5GksKDVdpZmlM'
    'YW5Tb2NrZXQSHQoKaXBfYWRkcmVzcxgBIAEoDFIJaXBBZGRyZXNzEhsKCXdpZmlfcG9ydBgCIA'
    'EoBVIId2lmaVBvcnQaWgoUQmx1ZXRvb3RoQ3JlZGVudGlhbHMSIQoMc2VydmljZV9uYW1lGAEg'
    'ASgJUgtzZXJ2aWNlTmFtZRIfCgttYWNfYWRkcmVzcxgCIAEoCVIKbWFjQWRkcmVzcxp0ChRXaW'
    'ZpQXdhcmVDcmVkZW50aWFscxIdCgpzZXJ2aWNlX2lkGAEgASgJUglzZXJ2aWNlSWQSIQoMc2Vy'
    'dmljZV9pbmZvGAIgASgMUgtzZXJ2aWNlSW5mbxIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcm'
    'QanAEKFVdpZmlEaXJlY3RDcmVkZW50aWFscxISCgRzc2lkGAEgASgJUgRzc2lkEhoKCHBhc3N3'
    'b3JkGAIgASgJUghwYXNzd29yZBISCgRwb3J0GAMgASgFUgRwb3J0EhwKCWZyZXF1ZW5jeRgEIA'
    'EoBVIJZnJlcXVlbmN5EiEKB2dhdGV3YXkYBSABKAk6BzAuMC4wLjBSB2dhdGV3YXkafAoRV2Vi'
    'UnRjQ3JlZGVudGlhbHMSFwoHcGVlcl9pZBgBIAEoCVIGcGVlcklkEk4KDWxvY2F0aW9uX2hpbn'
    'QYAiABKAsyKS5sb2NhdGlvbi5uZWFyYnkuY29ubmVjdGlvbnMuTG9jYXRpb25IaW50Ugxsb2Nh'
    'dGlvbkhpbnQiogEKBk1lZGl1bRISCg5VTktOT1dOX01FRElVTRAAEgwKBE1ETlMQARoCCAESDQ'
    'oJQkxVRVRPT1RIEAISEAoMV0lGSV9IT1RTUE9UEAMSBwoDQkxFEAQSDAoIV0lGSV9MQU4QBRIO'
    'CgpXSUZJX0FXQVJFEAYSBwoDTkZDEAcSDwoLV0lGSV9ESVJFQ1QQCBILCgdXRUJfUlRDEAkSBw'
    'oDVVNCEAsaeQoSQ2xpZW50SW50cm9kdWN0aW9uEh8KC2VuZHBvaW50X2lkGAEgASgJUgplbmRw'
    'b2ludElkEkIKHXN1cHBvcnRzX2Rpc2FibGluZ19lbmNyeXB0aW9uGAIgASgIUhtzdXBwb3J0c0'
    'Rpc2FibGluZ0VuY3J5cHRpb24aFwoVQ2xpZW50SW50cm9kdWN0aW9uQWNrIswBCglFdmVudFR5'
    'cGUSFgoSVU5LTk9XTl9FVkVOVF9UWVBFEAASGgoWVVBHUkFERV9QQVRIX0FWQUlMQUJMRRABEh'
    '8KG0xBU1RfV1JJVEVfVE9fUFJJT1JfQ0hBTk5FTBACEh8KG1NBRkVfVE9fQ0xPU0VfUFJJT1Jf'
    'Q0hBTk5FTBADEhcKE0NMSUVOVF9JTlRST0RVQ1RJT04QBBITCg9VUEdSQURFX0ZBSUxVUkUQBR'
    'IbChdDTElFTlRfSU5UUk9EVUNUSU9OX0FDSxAG');

@$core.Deprecated('Use keepAliveFrameDescriptor instead')
const KeepAliveFrame$json = {
  '1': 'KeepAliveFrame',
  '2': [
    {'1': 'ack', '3': 1, '4': 1, '5': 8, '10': 'ack'},
  ],
};

/// Descriptor for `KeepAliveFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keepAliveFrameDescriptor = $convert.base64Decode(
    'Cg5LZWVwQWxpdmVGcmFtZRIQCgNhY2sYASABKAhSA2Fjaw==');

@$core.Deprecated('Use disconnectionFrameDescriptor instead')
const DisconnectionFrame$json = {
  '1': 'DisconnectionFrame',
  '2': [
    {'1': 'request_safe_to_disconnect', '3': 1, '4': 1, '5': 8, '10': 'requestSafeToDisconnect'},
    {'1': 'ack_safe_to_disconnect', '3': 2, '4': 1, '5': 8, '10': 'ackSafeToDisconnect'},
  ],
};

/// Descriptor for `DisconnectionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectionFrameDescriptor = $convert.base64Decode(
    'ChJEaXNjb25uZWN0aW9uRnJhbWUSOwoacmVxdWVzdF9zYWZlX3RvX2Rpc2Nvbm5lY3QYASABKA'
    'hSF3JlcXVlc3RTYWZlVG9EaXNjb25uZWN0EjMKFmFja19zYWZlX3RvX2Rpc2Nvbm5lY3QYAiAB'
    'KAhSE2Fja1NhZmVUb0Rpc2Nvbm5lY3Q=');

@$core.Deprecated('Use pairedKeyEncryptionFrameDescriptor instead')
const PairedKeyEncryptionFrame$json = {
  '1': 'PairedKeyEncryptionFrame',
  '2': [
    {'1': 'signed_data', '3': 1, '4': 1, '5': 12, '10': 'signedData'},
  ],
};

/// Descriptor for `PairedKeyEncryptionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairedKeyEncryptionFrameDescriptor = $convert.base64Decode(
    'ChhQYWlyZWRLZXlFbmNyeXB0aW9uRnJhbWUSHwoLc2lnbmVkX2RhdGEYASABKAxSCnNpZ25lZE'
    'RhdGE=');

@$core.Deprecated('Use mediumMetadataDescriptor instead')
const MediumMetadata$json = {
  '1': 'MediumMetadata',
  '2': [
    {'1': 'supports_5_ghz', '3': 1, '4': 1, '5': 8, '10': 'supports5Ghz'},
    {'1': 'bssid', '3': 2, '4': 1, '5': 9, '10': 'bssid'},
    {'1': 'ip_address', '3': 3, '4': 1, '5': 12, '10': 'ipAddress'},
    {'1': 'supports_6_ghz', '3': 4, '4': 1, '5': 8, '10': 'supports6Ghz'},
    {'1': 'mobile_radio', '3': 5, '4': 1, '5': 8, '10': 'mobileRadio'},
    {'1': 'ap_frequency', '3': 6, '4': 1, '5': 5, '7': '-1', '10': 'apFrequency'},
    {'1': 'available_channels', '3': 7, '4': 1, '5': 11, '6': '.location.nearby.connections.AvailableChannels', '10': 'availableChannels'},
    {'1': 'wifi_direct_cli_usable_channels', '3': 8, '4': 1, '5': 11, '6': '.location.nearby.connections.WifiDirectCliUsableChannels', '10': 'wifiDirectCliUsableChannels'},
    {'1': 'wifi_lan_usable_channels', '3': 9, '4': 1, '5': 11, '6': '.location.nearby.connections.WifiLanUsableChannels', '10': 'wifiLanUsableChannels'},
    {'1': 'wifi_aware_usable_channels', '3': 10, '4': 1, '5': 11, '6': '.location.nearby.connections.WifiAwareUsableChannels', '10': 'wifiAwareUsableChannels'},
    {'1': 'wifi_hotspot_sta_usable_channels', '3': 11, '4': 1, '5': 11, '6': '.location.nearby.connections.WifiHotspotStaUsableChannels', '10': 'wifiHotspotStaUsableChannels'},
  ],
};

/// Descriptor for `MediumMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediumMetadataDescriptor = $convert.base64Decode(
    'Cg5NZWRpdW1NZXRhZGF0YRIkCg5zdXBwb3J0c181X2doehgBIAEoCFIMc3VwcG9ydHM1R2h6Eh'
    'QKBWJzc2lkGAIgASgJUgVic3NpZBIdCgppcF9hZGRyZXNzGAMgASgMUglpcEFkZHJlc3MSJAoO'
    'c3VwcG9ydHNfNl9naHoYBCABKAhSDHN1cHBvcnRzNkdoehIhCgxtb2JpbGVfcmFkaW8YBSABKA'
    'hSC21vYmlsZVJhZGlvEiUKDGFwX2ZyZXF1ZW5jeRgGIAEoBToCLTFSC2FwRnJlcXVlbmN5El0K'
    'EmF2YWlsYWJsZV9jaGFubmVscxgHIAEoCzIuLmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy'
    '5BdmFpbGFibGVDaGFubmVsc1IRYXZhaWxhYmxlQ2hhbm5lbHMSfgofd2lmaV9kaXJlY3RfY2xp'
    'X3VzYWJsZV9jaGFubmVscxgIIAEoCzI4LmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5XaW'
    'ZpRGlyZWN0Q2xpVXNhYmxlQ2hhbm5lbHNSG3dpZmlEaXJlY3RDbGlVc2FibGVDaGFubmVscxJr'
    'Chh3aWZpX2xhbl91c2FibGVfY2hhbm5lbHMYCSABKAsyMi5sb2NhdGlvbi5uZWFyYnkuY29ubm'
    'VjdGlvbnMuV2lmaUxhblVzYWJsZUNoYW5uZWxzUhV3aWZpTGFuVXNhYmxlQ2hhbm5lbHMScQoa'
    'd2lmaV9hd2FyZV91c2FibGVfY2hhbm5lbHMYCiABKAsyNC5sb2NhdGlvbi5uZWFyYnkuY29ubm'
    'VjdGlvbnMuV2lmaUF3YXJlVXNhYmxlQ2hhbm5lbHNSF3dpZmlBd2FyZVVzYWJsZUNoYW5uZWxz'
    'EoEBCiB3aWZpX2hvdHNwb3Rfc3RhX3VzYWJsZV9jaGFubmVscxgLIAEoCzI5LmxvY2F0aW9uLm'
    '5lYXJieS5jb25uZWN0aW9ucy5XaWZpSG90c3BvdFN0YVVzYWJsZUNoYW5uZWxzUhx3aWZpSG90'
    'c3BvdFN0YVVzYWJsZUNoYW5uZWxz');

@$core.Deprecated('Use availableChannelsDescriptor instead')
const AvailableChannels$json = {
  '1': 'AvailableChannels',
  '2': [
    {
      '1': 'channels',
      '3': 1,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'channels',
    },
  ],
};

/// Descriptor for `AvailableChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List availableChannelsDescriptor = $convert.base64Decode(
    'ChFBdmFpbGFibGVDaGFubmVscxIeCghjaGFubmVscxgBIAMoBUICEAFSCGNoYW5uZWxz');

@$core.Deprecated('Use wifiDirectCliUsableChannelsDescriptor instead')
const WifiDirectCliUsableChannels$json = {
  '1': 'WifiDirectCliUsableChannels',
  '2': [
    {
      '1': 'channels',
      '3': 1,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'channels',
    },
  ],
};

/// Descriptor for `WifiDirectCliUsableChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiDirectCliUsableChannelsDescriptor = $convert.base64Decode(
    'ChtXaWZpRGlyZWN0Q2xpVXNhYmxlQ2hhbm5lbHMSHgoIY2hhbm5lbHMYASADKAVCAhABUghjaG'
    'FubmVscw==');

@$core.Deprecated('Use wifiLanUsableChannelsDescriptor instead')
const WifiLanUsableChannels$json = {
  '1': 'WifiLanUsableChannels',
  '2': [
    {
      '1': 'channels',
      '3': 1,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'channels',
    },
  ],
};

/// Descriptor for `WifiLanUsableChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiLanUsableChannelsDescriptor = $convert.base64Decode(
    'ChVXaWZpTGFuVXNhYmxlQ2hhbm5lbHMSHgoIY2hhbm5lbHMYASADKAVCAhABUghjaGFubmVscw'
    '==');

@$core.Deprecated('Use wifiAwareUsableChannelsDescriptor instead')
const WifiAwareUsableChannels$json = {
  '1': 'WifiAwareUsableChannels',
  '2': [
    {
      '1': 'channels',
      '3': 1,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'channels',
    },
  ],
};

/// Descriptor for `WifiAwareUsableChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiAwareUsableChannelsDescriptor = $convert.base64Decode(
    'ChdXaWZpQXdhcmVVc2FibGVDaGFubmVscxIeCghjaGFubmVscxgBIAMoBUICEAFSCGNoYW5uZW'
    'xz');

@$core.Deprecated('Use wifiHotspotStaUsableChannelsDescriptor instead')
const WifiHotspotStaUsableChannels$json = {
  '1': 'WifiHotspotStaUsableChannels',
  '2': [
    {
      '1': 'channels',
      '3': 1,
      '4': 3,
      '5': 5,
      '8': {'2': true},
      '10': 'channels',
    },
  ],
};

/// Descriptor for `WifiHotspotStaUsableChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wifiHotspotStaUsableChannelsDescriptor = $convert.base64Decode(
    'ChxXaWZpSG90c3BvdFN0YVVzYWJsZUNoYW5uZWxzEh4KCGNoYW5uZWxzGAEgAygFQgIQAVIIY2'
    'hhbm5lbHM=');

@$core.Deprecated('Use locationHintDescriptor instead')
const LocationHint$json = {
  '1': 'LocationHint',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 9, '10': 'location'},
    {'1': 'format', '3': 2, '4': 1, '5': 14, '6': '.location.nearby.connections.LocationStandard.Format', '10': 'format'},
  ],
};

/// Descriptor for `LocationHint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationHintDescriptor = $convert.base64Decode(
    'CgxMb2NhdGlvbkhpbnQSGgoIbG9jYXRpb24YASABKAlSCGxvY2F0aW9uEkwKBmZvcm1hdBgCIA'
    'EoDjI0LmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5Mb2NhdGlvblN0YW5kYXJkLkZvcm1h'
    'dFIGZm9ybWF0');

@$core.Deprecated('Use locationStandardDescriptor instead')
const LocationStandard$json = {
  '1': 'LocationStandard',
  '4': [LocationStandard_Format$json],
};

@$core.Deprecated('Use locationStandardDescriptor instead')
const LocationStandard_Format$json = {
  '1': 'Format',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'E164_CALLING', '2': 1},
    {'1': 'ISO_3166_1_ALPHA_2', '2': 2},
  ],
};

/// Descriptor for `LocationStandard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationStandardDescriptor = $convert.base64Decode(
    'ChBMb2NhdGlvblN0YW5kYXJkIj8KBkZvcm1hdBILCgdVTktOT1dOEAASEAoMRTE2NF9DQUxMSU'
    '5HEAESFgoSSVNPXzMxNjZfMV9BTFBIQV8yEAI=');

@$core.Deprecated('Use osInfoDescriptor instead')
const OsInfo$json = {
  '1': 'OsInfo',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.location.nearby.connections.OsInfo.OsType', '10': 'type'},
  ],
  '4': [OsInfo_OsType$json],
};

@$core.Deprecated('Use osInfoDescriptor instead')
const OsInfo_OsType$json = {
  '1': 'OsType',
  '2': [
    {'1': 'UNKNOWN_OS_TYPE', '2': 0},
    {'1': 'ANDROID', '2': 1},
    {'1': 'CHROME_OS', '2': 2},
    {'1': 'WINDOWS', '2': 3},
    {'1': 'APPLE', '2': 4},
    {'1': 'LINUX', '2': 100},
  ],
};

/// Descriptor for `OsInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List osInfoDescriptor = $convert.base64Decode(
    'CgZPc0luZm8SPgoEdHlwZRgBIAEoDjIqLmxvY2F0aW9uLm5lYXJieS5jb25uZWN0aW9ucy5Pc0'
    'luZm8uT3NUeXBlUgR0eXBlIlwKBk9zVHlwZRITCg9VTktOT1dOX09TX1RZUEUQABILCgdBTkRS'
    'T0lEEAESDQoJQ0hST01FX09TEAISCwoHV0lORE9XUxADEgkKBUFQUExFEAQSCQoFTElOVVgQZA'
    '==');

