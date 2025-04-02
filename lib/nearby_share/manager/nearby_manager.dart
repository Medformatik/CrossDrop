import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bonsoir/bonsoir.dart';
import 'package:crossdrop/nearby_share/api/models.dart';
import 'package:crossdrop/nearby_share/connections/inbound_connection.dart';
import 'package:crossdrop/nearby_share/connections/outbound_connection.dart';
import 'package:crossdrop/nearby_share/utils/data_extension.dart';
import 'package:flutter/foundation.dart'; // For ChangeNotifier
import 'package:uuid/uuid.dart';

// --- Interfaces (similar to Swift protocols) ---

abstract class NearbyEventsListener {
  void onDeviceFound(RemoteDeviceInfo device);
  void onDeviceLost(String deviceId);
  void onTransferRequest(
    TransferMetadata transfer,
    RemoteDeviceInfo device,
    String connectionId,
  );
  void onTransferFinished(String connectionId, bool success, Exception? error);
  void onOutgoingTransferStarted(String deviceId, String connectionId);
  void onOutgoingTransferProgress(String connectionId, double progress);
  void onOutgoingPinAvailable(String connectionId, String pin);
}

class NearbyConnectionManager extends ChangeNotifier
    implements
        InboundNearbyConnectionDelegate,
        OutboundNearbyConnectionDelegate {
  static final NearbyConnectionManager _instance =
      NearbyConnectionManager._internal();
  factory NearbyConnectionManager() => _instance;

  NearbyConnectionManager._internal();

  ServerSocket? _serverSocket;
  BonsoirBroadcast? _bonsoirBroadcast;
  BonsoirDiscovery? _bonsoirDiscovery;

  final String _endpointId = String.fromCharCodes(generateRandomBytes(4));
  String? _deviceName;

  bool _isBroadcasting = false;
  bool _isDiscovering = false;

  final Map<String, InboundNearbyConnection> _inboundConnections = {};
  final Map<String, OutboundNearbyConnection> _outboundConnections = {};
  // Store RemoteDeviceInfo directly, updated with IP/port on resolution
  final Map<String, RemoteDeviceInfo> _discoveredDevices = {};

  // Renamed listener management methods
  final List<NearbyEventsListener> _nearbyListeners = [];

  void addNearbyListener(NearbyEventsListener listener) {
    _nearbyListeners.add(listener);
    // Notify listener of currently discovered devices
    _discoveredDevices.values
        .where((d) => d.isResolved)
        .forEach(listener.onDeviceFound);
  }

  void removeNearbyListener(NearbyEventsListener listener) {
    _nearbyListeners.remove(listener);
  }

  // --- Broadcasting ---
  Future<void> startBroadcasting(String deviceName) async {
    if (_isBroadcasting) return;
    _deviceName = deviceName;

    try {
      _serverSocket = await ServerSocket.bind(InternetAddress.anyIPv4, 0);
      _serverSocket!.listen(
        _handleIncomingConnection,
        onError: (e, s) {
          print("Server socket error: $e\n$s");
          stopBroadcasting();
        },
        onDone: () {
          print("Server socket closed");
          stopBroadcasting();
        },
      );

      final port = _serverSocket!.port;
      print("TCP Listener started on port $port");

      final service = BonsoirService(
        name: _generateBonsoirName(_endpointId),
        type: '_FC9F5ED42C8A._tcp',
        port: port,
        attributes: await _generateTxtAttributes(deviceName),
      );

      _bonsoirBroadcast = BonsoirBroadcast(service: service);
      await _bonsoirBroadcast!.ready;
      await _bonsoirBroadcast!.start();

      _isBroadcasting = true;
      print(
        "Started broadcasting Nearby Share service as $_deviceName ($_endpointId) on port $port",
      );
      notifyListeners();
    } catch (e, s) {
      print("Error starting broadcasting: $e\n$s");
      await stopBroadcasting();
      rethrow;
    }
  }

  Future<void> stopBroadcasting() async {
    if (!_isBroadcasting) return;
    await _bonsoirBroadcast?.stop();
    _bonsoirBroadcast = null;
    await _serverSocket?.close();
    _serverSocket = null;
    await Future.wait(
      _inboundConnections.values.map((conn) => conn.disconnect()),
    );
    _inboundConnections.clear();
    _isBroadcasting = false;
    print("Stopped broadcasting Nearby Share service");
    notifyListeners();
  }

  bool get isBroadcasting => _isBroadcasting;

  // --- Discovery ---
  Future<void> startDiscovery() async {
    if (_isDiscovering) return;
    _discoveredDevices.clear(); // Clear previous results on start

    _bonsoirDiscovery = BonsoirDiscovery(type: '_FC9F5ED42C8A._tcp');
    await _bonsoirDiscovery!.ready;

    _bonsoirDiscovery!.eventStream!.listen(
      (event) {
        try {
          // Add try-catch around event handling
          if (event.service == null) return; // Ignore events without service

          if (event.type == BonsoirDiscoveryEventType.discoveryServiceFound) {
            // Attempt resolution immediately if not resolved
            if (event.service is! ResolvedBonsoirService) {
              print("Service ${event.service!.name} found, resolving...");
              event.service!.resolve(_bonsoirDiscovery!.serviceResolver);
            } else {
              // Already resolved (maybe from cache?)
              _handleDiscoveredOrResolvedService(
                event.service as ResolvedBonsoirService,
              );
            }
          } else if (event.type ==
              BonsoirDiscoveryEventType.discoveryServiceResolved) {
            // Explicitly handle resolved event
            if (event.service is ResolvedBonsoirService) {
              _handleDiscoveredOrResolvedService(
                event.service as ResolvedBonsoirService,
              );
            }
          } else if (event.type ==
              BonsoirDiscoveryEventType.discoveryServiceLost) {
            _handleLostService(event.service!);
          }
        } catch (e, s) {
          print(
            "Error handling discovery event for ${event.service?.name}: $e\n$s",
          );
        }
      },
      onError: (e, s) {
        print("Discovery stream error: $e\n$s");
        stopDiscovery(); // Stop discovery on stream error
      },
    );

    await _bonsoirDiscovery!.start();
    _isDiscovering = true;
    print("Started Nearby Share discovery");
    notifyListeners();
  }

  Future<void> stopDiscovery() async {
    if (!_isDiscovering) return;
    await _bonsoirDiscovery?.stop();
    _bonsoirDiscovery = null;
    _discoveredDevices.clear();
    _isDiscovering = false;
    print("Stopped Nearby Share discovery");
    notifyListeners();
  }

  bool get isDiscovering => _isDiscovering;
  List<RemoteDeviceInfo> get discoveredDevices =>
      _discoveredDevices.values.where((d) => d.isResolved).toList();

  // --- Transfer Initiation / Response ---
  Future<void> initiateTransfer(
    String endpointId,
    List<String> filePaths,
  ) async {
    final device = _discoveredDevices[endpointId];

    if (device == null || !device.isResolved) {
      // Check if device exists and is resolved
      throw ArgumentError(
        "Device with ID $endpointId not found or not resolved.",
      );
    }
    if (filePaths.isEmpty) {
      throw ArgumentError("File paths list cannot be empty.");
    }

    print("Initiating transfer to ${device.name} ($endpointId)");

    if (_outboundConnections.values.any(
      (conn) => conn.remoteDeviceInfo?.id == endpointId,
    )) {
      print("Outgoing connection to $endpointId already exists.");
      // Optionally notify UI or just return
      return;
    }

    try {
      final ip = device.ipAddress!; // Use stored IP
      final port = device.port!; // Use stored port

      final socket = await Socket.connect(
        ip,
        port,
        timeout: const Duration(seconds: 10),
      );
      print("Socket connected to $ip:$port");

      final connectionId = const Uuid().v4();
      final connection = OutboundNearbyConnection(
        socket,
        connectionId,
        filePaths,
      );
      connection.delegate = this;
      connection.remoteDeviceInfo = device;

      _outboundConnections[connectionId] = connection;
      for (var l in _nearbyListeners) {
        l.onOutgoingTransferStarted(endpointId, connectionId);
      }
      connection.start();
    } catch (e, s) {
      print("Failed to initiate transfer to $endpointId: $e\n$s");
      for (var l in _nearbyListeners) {
        // Notify failure if connection couldn't even start
        // Need a way to map back to the UI element expecting this transfer
        l.onTransferFinished(
          endpointId,
          false,
          e is Exception ? e : Exception(e.toString()),
        );
      }
      rethrow;
    }
  }

  Future<void> respondToTransfer(String connectionId, bool accept) async {
    final connection = _inboundConnections[connectionId];
    if (connection == null) {
      print(
        "Cannot respond to transfer: Connection ID $connectionId not found.",
      );
      return;
    }
    await connection.submitUserConsent(accept);
  }

  // --- Internal Handlers ---
  void _handleIncomingConnection(Socket socket) {
    final remoteAddr = socket.remoteAddress.address;
    final remotePort = socket.remotePort;
    print("Incoming connection from $remoteAddr:$remotePort");

    final connectionId = const Uuid().v4();
    final connection = InboundNearbyConnection(socket, connectionId);
    connection.delegate = this;
    _inboundConnections[connectionId] = connection;
    connection.onClose.whenComplete(() {
      print("Inbound connection $connectionId closed completely.");
      _inboundConnections.remove(connectionId);
    });
    connection.start();
  }

  // Combined handler for found and resolved services
  void _handleDiscoveredOrResolvedService(ResolvedBonsoirService service) {
    final endpointId = _getEndpointIdFromService(service);
    if (endpointId == null || endpointId == _endpointId) return;

    final txt = service.attributes;
    final ip = service.host; // Use host from ResolvedBonsoirService
    final port = service.port;

    if (ip == null) {
      print("Ignoring resolved service ${service.name}: missing host/IP");
      return;
    }

    // ignore: unnecessary_null_comparison
    if (txt == null) {
      print(
        "Ignoring service ${service.name}: missing TXT attributes even after resolution",
      );
      return;
    }
    final endpointInfoEncoded = txt['n'];
    if (endpointInfoEncoded == null) {
      print("Ignoring service ${service.name}: missing 'n' attribute in TXT");
      return;
    }
    final endpointInfoBytes = endpointInfoEncoded.fromUrlSafeBase64();
    if (endpointInfoBytes == null) {
      print("Ignoring service ${service.name}: failed to decode 'n' attribute");
      return;
    }

    try {
      final endpointInfo = EndpointInfo.deserialize(endpointInfoBytes);
      final existingDevice = _discoveredDevices[endpointId];

      // Create or update device info with resolved details
      final newDeviceInfo = RemoteDeviceInfo(
        name: endpointInfo.name,
        type: endpointInfo.deviceType,
        id: endpointId,
        ipAddress: ip, // Store resolved IP
        port: port, // Store resolved port
      );

      bool needsNotify = false;
      if (existingDevice == null) {
        print(
          "Device Found & Resolved: ${newDeviceInfo.name} ($endpointId) at $ip:$port",
        );
        _discoveredDevices[endpointId] = newDeviceInfo;
        needsNotify = true;
      } else if (existingDevice.name != newDeviceInfo.name ||
          !existingDevice.isResolved) {
        // Update if name changed or if it wasn't resolved before
        print(
          "Device Updated: ${newDeviceInfo.name} ($endpointId) at $ip:$port",
        );
        _discoveredDevices[endpointId] = newDeviceInfo;
        needsNotify = true;
      }

      if (needsNotify) {
        for (var l in _nearbyListeners) {
          l.onDeviceFound(newDeviceInfo);
        }
        notifyListeners();
      }
    } catch (e, s) {
      print("Error parsing endpoint info for service ${service.name}: $e\n$s");
    }
  }

  void _handleLostService(BonsoirService service) {
    final endpointId = _getEndpointIdFromService(service);
    if (endpointId != null) {
      if (_discoveredDevices.remove(endpointId) != null) {
        print("Device Lost: $endpointId");
        for (var l in _nearbyListeners) {
          l.onDeviceLost(endpointId);
        }
        notifyListeners();
      }
    }
  }

  // --- Delegate Implementations ---
  @override
  void obtainUserConsent(
    TransferMetadata transfer,
    RemoteDeviceInfo device,
    InboundNearbyConnection connection,
  ) {
    print(
      "Manager: Received transfer request ${transfer.id} from ${device.name}",
    );
    for (var l in _nearbyListeners) {
      l.onTransferRequest(transfer, device, connection.id);
    }
  }

  @override
  void connectionTerminated(
    InboundNearbyConnection connection,
    Exception? error,
  ) {
    print(
      "Manager: Inbound connection ${connection.id} terminated. Error: $error",
    );
    _inboundConnections.remove(connection.id);
    for (var l in _nearbyListeners) {
      l.onTransferFinished(connection.id, error == null, error);
    }
  }

  @override
  void outboundConnectionEstablished(OutboundNearbyConnection connection) {
    print(
      "Manager: Outbound connection ${connection.id} established. PIN: ${connection.pinCode}",
    );
    if (connection.remoteDeviceInfo != null && connection.pinCode != null) {
      for (var l in _nearbyListeners) {
        l.onOutgoingPinAvailable(connection.id, connection.pinCode!);
      }
    }
  }

  @override
  void outboundConnectionFailed(
    OutboundNearbyConnection connection,
    Exception error,
  ) {
    print("Manager: Outbound connection ${connection.id} failed: $error");
    _outboundConnections.remove(connection.id);
    for (var l in _nearbyListeners) {
      l.onTransferFinished(connection.id, false, error);
    }
  }

  @override
  void outboundTransferAccepted(OutboundNearbyConnection connection) {
    print("Manager: Outbound transfer ${connection.id} accepted by receiver.");
  }

  @override
  void outboundTransferProgress(
    OutboundNearbyConnection connection,
    double progress,
  ) {
    for (var l in _nearbyListeners) {
      l.onOutgoingTransferProgress(connection.id, progress);
    }
  }

  @override
  void outboundTransferFinished(OutboundNearbyConnection connection) {
    print("Manager: Outbound transfer ${connection.id} finished successfully.");
    _outboundConnections.remove(connection.id);
    for (var l in _nearbyListeners) {
      l.onTransferFinished(connection.id, true, null);
    }
  }

  // --- Helpers ---
  String _generateBonsoirName(String endpointId) {
    final nameBytes = [
      0x23,
      ...utf8.encode(endpointId),
      0xFC,
      0x9F,
      0x5E,
      0,
      0,
    ];
    return Uint8List.fromList(nameBytes).toUrlSafeBase64();
  }

  Future<Map<String, String>> _generateTxtAttributes(String deviceName) async {
    final endpointInfo = EndpointInfo(
      name: deviceName,
      deviceType: DeviceType.computer,
    );
    return {'n': endpointInfo.serialize().toUrlSafeBase64()};
  }

  String? _getEndpointIdFromService(BonsoirService service) {
    try {
      final nameData = service.name.fromUrlSafeBase64();
      if (nameData != null && nameData.length >= 5 && nameData[0] == 0x23) {
        return String.fromCharCodes(nameData.sublist(1, 5));
      }
    } catch (e) {
      print("Error parsing endpoint ID from service name ${service.name}: $e");
    }
    return null;
  }
}
