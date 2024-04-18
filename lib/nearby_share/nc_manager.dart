import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:bonsoir/bonsoir.dart';
import 'package:crossdrop/device.dart';
import 'package:crossdrop/list_equality.dart';
import 'package:crossdrop/nearby_share/data_extensions.dart';
import 'package:crossdrop/nearby_share/inbound_nc.dart';
import 'package:crossdrop/nearby_share/outbound_nc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:uuid/uuid.dart';

class RemoteDeviceInfo {
  final String name;
  final DeviceType type;
  String? id;

  RemoteDeviceInfo({
    required this.name,
    required this.type,
    this.id,
  });

  factory RemoteDeviceInfo.fromEndpointInfo(EndpointInfo info) {
    return RemoteDeviceInfo(
      name: info.name,
      type: info.deviceType,
    );
  }
}

enum DeviceType {
  phone,
  tablet,
  computer,
  unknown;

  int get rawValue {
    switch (this) {
      case DeviceType.unknown:
        return 0;
      case DeviceType.phone:
        return 1;
      case DeviceType.tablet:
        return 2;
      case DeviceType.computer:
        return 3;
      default:
        return 0;
    }
  }

  factory DeviceType.fromRawValue(int value) {
    switch (value) {
      case 1:
        return DeviceType.phone;
      case 2:
        return DeviceType.tablet;
      case 3:
        return DeviceType.computer;
      default:
        return DeviceType.unknown;
    }
  }
}

class NearbyError implements Exception {
  final String message;

  NearbyError(this.message);

  static NearbyError protocolError(String message) => NearbyError("Protocol error: $message");

  static NearbyError requiredFieldMissing() => NearbyError("Required field missing");

  static NearbyError ukey2() => NearbyError("UKEY2 error");

  static NearbyError inputOutput(int cause) => NearbyError("Input/output error: $cause");

  static NearbyError canceled(CancellationReason reason) => NearbyError("Canceled: $reason");
}

enum CancellationReason {
  userRejected,
  userCanceled,
  notEnoughSpace,
  unsupportedType,
  timedOut,
}

class TransferMetadata {
  final List<FileMetadata> files;
  final String id;
  final String? pinCode;
  final String? textDescription;

  TransferMetadata({
    required this.files,
    required this.id,
    this.pinCode,
    this.textDescription,
  });
}

class FileMetadata {
  final String name;
  final Int64 size;
  final String mimeType;

  FileMetadata({
    required this.name,
    required this.size,
    required this.mimeType,
  });
}

class FoundServiceInfo {
  BonsoirService service;
  RemoteDeviceInfo? device;

  FoundServiceInfo({
    required this.service,
    this.device,
  });
}

class OutgoingTransferInfo {
  BonsoirService service;
  RemoteDeviceInfo device;
  OutboundNearbyConnection connection;

  OutgoingTransferInfo({
    required this.service,
    required this.device,
    required this.connection,
  });
}

class EndpointInfo {
  String name;
  DeviceType deviceType;

  EndpointInfo({
    required this.name,
    required this.deviceType,
  });

  static EndpointInfo? fromData(Uint8List data) {
    if (data.length <= 17) return null;

    int deviceNameLength = data[17];
    if (data.length < deviceNameLength + 18) return null;

    String deviceName = utf8.decode(data.sublist(18, 18 + deviceNameLength));
    int rawDeviceType = (data[0] & 7) >> 1;

    return EndpointInfo(
      name: deviceName,
      deviceType: DeviceType.fromRawValue(rawDeviceType),
    );
  }

  Uint8List serialize() {
    // 1 byte: Version(3 bits)|Visibility(1 bit)|Device Type(3 bits)|Reserved(1 bits)
    // Device types: unknown=0, phone=1, tablet=2, laptop=3
    List<int> endpointInfo = [deviceType.rawValue << 1];

    // 16 bytes: unknown random bytes
    for (int i = 0; i < 16; i++) {
      endpointInfo.add(Random().nextInt(256));
    }

    // Device name in UTF-8 prefixed with 1-byte length
    List<int> nameChars = utf8.encode(name);
    if (nameChars.length > 255) {
      nameChars = nameChars.sublist(0, 255);
    }

    endpointInfo.add(nameChars.length);
    endpointInfo.addAll(nameChars);

    return Uint8List.fromList(endpointInfo);
  }
}

class NearbyConnectionManager {
  late ServerSocket _server;
  final Uint8List endpointID = _generateEndpointID();
  final Map<String, InboundNearbyConnection> _activeConnections = {};
  final Map<String, FoundServiceInfo> _foundServices = {};
  final Map<String, OutgoingTransferInfo> _outgoingTransfers = {};

  int _discoveryRefCount = 0;
  BonsoirDiscovery? discovery;

  Future<void> startTcpListener() async {
    _server = await ServerSocket.bind(InternetAddress.anyIPv4, 65535);
    await _initMdns();
    _server.listen((socket) {
      final String id = const Uuid().v4();
      final InboundNearbyConnection connection = InboundNearbyConnection(connection: socket, id: id);
      _activeConnections[id] = connection;
      connection.start();
    });
  }

  static Uint8List _generateEndpointID() {
    List<int> id = [];
    String alphabet = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    List<int> alphabetBytes = alphabet.runes.map((int rune) => rune).toList();

    for (int i = 0; i < 4; i++) {
      id.add(alphabetBytes[Random().nextInt(alphabetBytes.length)]);
    }

    return Uint8List.fromList(id);
  }

  Future<void> _initMdns() async {
    final Uint8List nameBytes = Uint8List.fromList([
      0x23,
      endpointID[0],
      endpointID[1],
      endpointID[2],
      endpointID[3],
      0xFC,
      0x9F,
      0x5E,
      0,
      0,
    ]);
    final String name = nameBytes.urlSafeBase64EncodedString();
    final EndpointInfo endpointInfo = EndpointInfo(name: await getDeviceName(), deviceType: DeviceType.computer);

    final int port = _server.port;
    /*
    mdnsService=NetService(domain: "", type: "_FC9F5ED42C8A._tcp.", name: name, port: port)
		mdnsService?.delegate=self
		mdnsService?.setTXTRecord(NetService.data(fromTXTRecord: [
			"n": endpointInfo.serialize().urlSafeBase64EncodedString().data(using: .utf8)!
		]))
		mdnsService?.publish()
    */

    final BonsoirService service = BonsoirService(
      name: name,
      type: "_FC9F5ED42C8A._tcp.",
      port: port,
      attributes: {
        "n": endpointInfo.serialize().urlSafeBase64EncodedString(),
      },
    );

    final BonsoirBroadcast broadcast = BonsoirBroadcast(service: service);
    await broadcast.ready;
    await broadcast.start();

    /* final Registration registration = await register(
      Service(
        host: "",
        name: name,
        type: "_FC9F5ED42C8A._tcp.",
        port: port,
        txt: {
          "n": endpointInfo.serialize(),
        },
      ),
    ); */
  }

  void connectionWasTerminated(InboundNearbyConnection connection, Exception? error) {
    if (_activeConnections.containsKey(connection.id)) {
      _activeConnections.remove(connection.id);
    }
  }

  Future<void> startDeviceDiscovery() async {
    if (_discoveryRefCount == 0) {
      _foundServices.clear();
      if (discovery == null) {
        discovery = BonsoirDiscovery(type: "_FC9F5ED42C8A._tcp");
        await discovery?.ready;
        discovery?.eventStream?.listen((event) {
          if (event.type == BonsoirDiscoveryEventType.discoveryServiceFound) {
            _maybeAddFoundDevice(event.service!);
          } else if (event.type == BonsoirDiscoveryEventType.discoveryServiceLost) {
            _maybeRemoveFoundDevice(event.service!);
          }
        });
      }
      await discovery?.start();
    }
    _discoveryRefCount += 1;
  }

  Future<void> stopDeviceDiscovery() async {
    _discoveryRefCount -= 1;
    if (_discoveryRefCount == 0) {
      await discovery?.stop();
      discovery = null;
    }
  }

  void cancelOutgoingTransfer(String id) {
    if (_outgoingTransfers.containsKey(id)) {
      _outgoingTransfers.remove(id);
    }
  }

  String? _endpointId(BonsoirService service) {
    final Uint8List nameData = DataExtensions.dataFromUrlSafeBase64(service.name);
    if (nameData.length < 10) return null;
    final int pcp = nameData[0];
    if (pcp != 0x23) return null;
    final String endpointId = utf8.decode(nameData.sublist(1, 5));
    final Uint8List serviceIdHash = nameData.sublist(5, 8);
    if (!ListEquality().equals(serviceIdHash, Uint8List.fromList([0xFC, 0x9F, 0x5E]))) return null;
    return endpointId;
  }

  void _maybeAddFoundDevice(BonsoirService service) {
    final String? endpointId = _endpointId(service);
    if (endpointId == null) return;
    final FoundServiceInfo foundService = FoundServiceInfo(service: service);

    final String? endpointInfoEncoded = service.attributes["n"];
    if (endpointInfoEncoded == null) return;
    final Uint8List endpointInfo = DataExtensions.dataFromUrlSafeBase64(endpointInfoEncoded);
    if (endpointInfo.length < 19) return;

    final int deviceTypeRaw = (endpointInfo[0] >> 1) & 7;
    final DeviceType deviceType = DeviceType.fromRawValue(deviceTypeRaw);
    final int deviceNameLength = endpointInfo[17];
    if (endpointInfo.length < deviceNameLength + 17) return;
    final String deviceName = utf8.decode(endpointInfo.sublist(18, 18 + deviceNameLength));

    final RemoteDeviceInfo deviceInfo = RemoteDeviceInfo(name: deviceName, type: deviceType, id: endpointId);
    foundService.device = deviceInfo;
    _foundServices[endpointId] = foundService;
  }

  void _maybeRemoveFoundDevice(BonsoirService service) {
    final String? endpointId = _endpointId(service);
    if (endpointId == null) return;
    if (_foundServices.containsKey(endpointId)) {
      _foundServices.remove(endpointId);
    }
  }

  Future<void> startOutgoingTransfer(String deviceId, List<Uri> urls) async {
    final FoundServiceInfo? info = _foundServices[deviceId];
    if (info == null) return;
    final host = info.service.toJson()['service.ip'] ?? info.service.toJson()['service.host'];
    final Socket socket = await Socket.connect(host!, info.service.port);
    final OutboundNearbyConnection connection = OutboundNearbyConnection(connection: socket, id: deviceId, urlsToSend: urls);
    _outgoingTransfers[deviceId] = OutgoingTransferInfo(service: info.service, device: info.device!, connection: connection);
    await connection.start();
  }

  Future<void> outboundConnectionTransferWasEstablished(OutboundNearbyConnection connection) async {
    final OutgoingTransferInfo? transfer = _outgoingTransfers[connection.id];
    if (transfer == null) return;
    await transfer.delegate.connectionWasEstablished(pinCode: connection.pinCode!);
  }

  Future<void> outboundConnectionTransferAccepted(OutboundNearbyConnection connection) async {
    final OutgoingTransferInfo? transfer = _outgoingTransfers[connection.id];
    if (transfer == null) return;
    await transfer.delegate.transferAccepted();
  }

  Future<void> outboundConnectionTransferProgress(OutboundNearbyConnection connection, double progress) async{
    final OutgoingTransferInfo? transfer = _outgoingTransfers[connection.id];
    if (transfer == null) return;
    await transfer.delegate.transferProgress(progress: progress);
  }

  Future<void> outboundConnectionError(OutboundNearbyConnection connection, Exception error)async {
    final OutgoingTransferInfo? transfer = _outgoingTransfers[connection.id];
    if (transfer == null) return;
    await transfer.delegate.connectionFailed(with: error);
    if (_outgoingTransfers.containsKey(connection.id)) {
      _outgoingTransfers.remove(connection.id);
    }
  }

  Future<void> outboundConnectionTransferFinished(OutboundNearbyConnection connection) async{
    final OutgoingTransferInfo? transfer = _outgoingTransfers[connection.id];
    if (transfer == null) return;
    await transfer.delegate.transferFinished();
    if (_outgoingTransfers.containsKey(connection.id)) {
      _outgoingTransfers.remove(connection.id);
    }
  }
}
