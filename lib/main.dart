import 'dart:async';
import 'dart:io';
import 'package:crossdrop/animations.dart';
import 'package:crossdrop/app_config.dart';
import 'package:crossdrop/app_theme.dart';
import 'package:crossdrop/device.dart'; // Your device name helper
import 'package:crossdrop/nearby_share/api/models.dart';
import 'package:crossdrop/nearby_share/manager/nearby_manager.dart';
import 'package:crossdrop/notifications.dart'; // Import notification helpers
import 'package:crossdrop/window/on_close_window.dart';
import 'package:crossdrop/window/system_tray.dart';
import 'package:flutter/material.dart';
import 'package:adwaita/adwaita.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Notifications
  await initializeNotifications(
    _handleNotificationResponse,
  ); // Pass the handler

  // Window Setup
  await windowManager.ensureInitialized();
  final size = Platform.isLinux ? const Size(340, 360) : const Size(340, 410);
  WindowOptions windowOptions = WindowOptions(
    backgroundColor: Colors.transparent,
    titleBarStyle: TitleBarStyle.normal,
    windowButtonVisibility: true,
    size: size,
    minimumSize: size,
    maximumSize: size,
    title: AppConfig.name,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    windowManager.setPreventClose(true);
    windowManager.addListener(OnCloseWindowListener());
    await windowManager.show();
  });

  runApp(
    // Use MultiProvider to provide both managers/themes at the top level
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NearbyConnectionManager()),
        ChangeNotifierProvider(
          create: (_) => AppTheme(),
        ), // Provide AppTheme here
      ],
      child: const App(), // App and its descendants can now access both
    ),
  );
}

// Top-level or static handler for notification actions
void _handleNotificationResponse(String connectionId, bool accepted) {
  print('Handling notification response: $connectionId, Accepted: $accepted');
  // Access the manager instance (since this is top-level, find a way to get it)
  // Option 1: Make manager truly global (less ideal)
  // Option 2: Pass manager instance or use a locator pattern if needed here.
  // For simplicity with Provider, this function might need to be part of a class
  // that has access to the context, or we trigger an event that the UI listens to.
  // Let's assume the manager is accessible globally for this example:
  NearbyConnectionManager().respondToTransfer(connectionId, accepted);
}

enum AnimationPhase { idle, fadeIn, visible, fadeOut }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> implements NearbyEventsListener {
  AppSystemTray? appSystemTray;
  final TextEditingController _deviceNameController = TextEditingController();
  bool isTextFieldEditing = false;

  int _currentShapeIndex = 0;
  Timer? _animationTimer;
  AnimationPhase _animationPhase = AnimationPhase.idle;
  double _opacity = 0.0; // Target opacity for AnimatedOpacity

  final Duration _fadeInDuration = const Duration(milliseconds: 1000);
  final Duration _visibleDuration = const Duration(milliseconds: 100);
  final Duration _fadeOutDuration = const Duration(milliseconds: 1000);

  late NearbyConnectionManager _manager;

  @override
  void initState() {
    super.initState();
    // Manager is accessed later in didChangeDependencies
    _triggerNextAnimationFrame();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Access manager here, after Provider is available
    _manager = context.read<NearbyConnectionManager>();
    _manager.addNearbyListener(this); // Register as listener
    _initNearby(); // Initialize Nearby functionalities
  }

  Future<void> _initNearby() async {
    final currentDeviceName = await getDeviceName();
    if (mounted) {
      setState(() {
        _deviceNameController.text = currentDeviceName;
      });
      appSystemTray = AppSystemTray(currentDeviceName); // Initialize tray
      try {
        print("Starting broadcasting with name: $currentDeviceName");
        await _manager.startBroadcasting(currentDeviceName);
        // Optionally start discovery here too if needed immediately
        // await _manager.startDiscovery();
      } catch (e, s) {
        print("Failed to start broadcasting: $e\n$s");
        // Show error to user?
      }
    }
  }

  void _triggerNextAnimationFrame() {
    if (!mounted) return;
    _animationTimer?.cancel();
    Duration nextPhaseDelay;
    switch (_animationPhase) {
      case AnimationPhase.idle:
        setState(() => _opacity = 1.0);
        _animationPhase = AnimationPhase.fadeIn;
        nextPhaseDelay = _fadeInDuration;
        break;
      case AnimationPhase.fadeIn:
        _animationPhase = AnimationPhase.visible;
        nextPhaseDelay = _visibleDuration;
        break;
      case AnimationPhase.visible:
        setState(() => _opacity = 0.0);
        _animationPhase = AnimationPhase.fadeOut;
        nextPhaseDelay = _fadeOutDuration;
        break;
      case AnimationPhase.fadeOut:
        setState(
          () =>
              _currentShapeIndex =
                  (_currentShapeIndex + 1) % animationShapes.length,
        );
        _animationPhase = AnimationPhase.idle;
        nextPhaseDelay = Duration.zero;
        break;
    }
    _animationTimer = Timer(nextPhaseDelay, _triggerNextAnimationFrame);
  }

  Duration get _currentAnimationDuration {
    switch (_animationPhase) {
      case AnimationPhase.fadeIn:
        return _fadeInDuration;
      case AnimationPhase.fadeOut:
        return _fadeOutDuration;
      default:
        return _fadeOutDuration;
    }
  }

  @override
  void dispose() {
    _deviceNameController.dispose();
    _animationTimer?.cancel();
    _manager.removeNearbyListener(this); // Unregister listener
    // Decide whether to stop broadcasting/discovery on UI dispose.
    // If using system tray, maybe keep it running? For now, let's stop.
    _manager.stopBroadcasting();
    _manager.stopDiscovery();
    super.dispose();
  }

  Future<void> _saveDeviceName() async {
    if (!mounted) return;
    FocusScope.of(context).unfocus();
    setState(() => isTextFieldEditing = false);
    final newName = _deviceNameController.text;
    if (newName.isEmpty) {
      // Optionally revert or show error
      final oldName = await getDeviceName();
      _deviceNameController.text = oldName;
      return;
    }
    await setDeviceName(newName);
    appSystemTray?.updateDeviceName(newName);

    // Update manager: Stop and restart broadcasting with new name
    // (Or ideally, update TXT record dynamically if Bonsoir supports it)
    try {
      print("Restarting broadcast with new name: $newName");
      // TODO: Check if Bonsoir allows updating TXT record without restart
      await _manager.stopBroadcasting();
      await _manager.startBroadcasting(newName);
    } catch (e, s) {
      print("Error restarting broadcast after name change: $e\n$s");
      // Handle error, maybe revert name?
    }
  }

  // --- NearbyEventsListener Implementation ---

  @override
  void onDeviceFound(RemoteDeviceInfo device) {
    print("UI Listener: Device Found - ${device.name} (${device.id})");
    // TODO: Update UI list of discovered devices (if applicable)
    setState(() {
      // Trigger rebuild if UI depends on discoveredDevices list from manager
    });
  }

  @override
  void onDeviceLost(String deviceId) {
    print("UI Listener: Device Lost - $deviceId");
    // TODO: Update UI list of discovered devices
    setState(() {
      // Trigger rebuild
    });
  }

  @override
  void onTransferRequest(
    TransferMetadata transfer,
    RemoteDeviceInfo device,
    String connectionId,
  ) {
    print(
      "UI Listener: Incoming Transfer Request - ID: ${transfer.id} from ${device.name}",
    );
    // Show notification for user consent
    showTransferNotification(
      transfer.copyWith(id: connectionId),
      device,
    ); // Ensure notification uses connectionId
  }

  @override
  void onTransferFinished(String connectionId, bool success, Exception? error) {
    print(
      "UI Listener: Transfer Finished - ID: $connectionId, Success: $success, Error: $error",
    );
    // Clear the transfer notification
    cancelNotification(connectionId);
    if (!success && error != null && error is! NearbyCancellationException) {
      // Show error notification for non-cancellation errors
      // Find device info if possible (might need to store active transfers in manager/UI)
      showErrorNotification(connectionId, null, error.toString());
    }
    // TODO: Update UI related to this transfer
  }

  @override
  void onOutgoingTransferStarted(String deviceId, String connectionId) {
    print(
      "UI Listener: Outgoing Transfer Started - DeviceID: $deviceId, ConnID: $connectionId",
    );
    // TODO: Update UI (e.g., show progress indicator)
  }

  @override
  void onOutgoingTransferProgress(String connectionId, double progress) {
    // print("UI Listener: Outgoing Progress - ConnID: $connectionId, Progress: $progress");
    // TODO: Update UI progress indicator
  }

  @override
  void onOutgoingPinAvailable(String connectionId, String pin) {
    print("UI Listener: Outgoing PIN - ConnID: $connectionId, PIN: $pin");
    // TODO: Display PIN to user
  }

  @override
  Widget build(BuildContext context) {
    // Watch for manager state changes if UI needs to react (e.g., show status)
    final manager = context.watch<NearbyConnectionManager>();
    final appTheme = context.watch<AppTheme>();

    return MaterialApp(
      title: AppConfig.name,
      theme: Platform.isLinux ? AdwaitaThemeData.light() : ThemeData.light(),
      darkTheme: Platform.isLinux ? AdwaitaThemeData.dark() : ThemeData.dark(),
      themeMode: appTheme.mode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Platform.isIOS ? AppBar(/* ... */) : null,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                manager.isBroadcasting
                    ? 'Ready to receive'
                    : 'Not visible', // Example reacting to state
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 140,
                height: 140,
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: _currentAnimationDuration,
                  curve: Curves.easeOut,
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: ShapeDecoration(
                      shape: animationShapes[_currentShapeIndex],
                      color: const Color.fromRGBO(13, 85, 201, 1.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                manager.isBroadcasting
                    ? 'Receiving from everyone'
                    : 'Start visibility to receive', // Example
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                fit: StackFit.passthrough,
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Device name'),
                    maxLines: 1,
                    controller: _deviceNameController,
                    onChanged: (_) => setState(() => isTextFieldEditing = true),
                    onSubmitted: (_) => _saveDeviceName(), // Save on Enter key
                  ),
                  if (isTextFieldEditing)
                    Positioned(
                      right: 0,
                      child: ElevatedButton(
                        onPressed: _saveDeviceName, // Use common save function
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(8), // Adjust padding
                          minimumSize: const Size(
                            36,
                            36,
                          ), // Ensure minimum size
                          backgroundColor: const Color.fromRGBO(
                            53,
                            132,
                            228,
                            1.0,
                          ),
                          foregroundColor: Colors.white, // Set icon color
                        ),
                        child: const Icon(Icons.done, size: 20),
                      ),
                    ),
                ],
              ),
              // TODO: Add UI for discovered devices and initiating transfers
            ],
          ),
        ),
      ),
    );
  }
}

// Helper extension for TransferMetadata if needed for notifications
extension TransferMetadataExt on TransferMetadata {
  TransferMetadata copyWith({
    List<ShareFileMetadata>? files,
    String? id,
    String? pinCode,
    String? textDescription,
  }) {
    return TransferMetadata(
      files: files ?? this.files,
      id: id ?? this.id,
      pinCode: pinCode ?? this.pinCode,
      textDescription: textDescription ?? this.textDescription,
    );
  }
}
