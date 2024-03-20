import 'package:crossdrop/app.dart';
import 'package:crossdrop/constants/config.dart';
import 'package:crossdrop/nearby_share/nearby_connection_manager.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:window_manager/window_manager.dart';

late NearbyConnectionManager nearbyConnectionManager;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
    windowButtonVisibility: true,
    minimumSize: const Size(400, 250),
    maximumSize: const Size(800, 600),
    alwaysOnTop: true,
    title: AppConfig.name,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.hide();
  });

  await const MacosWindowUtilsConfig(
    toolbarStyle: NSWindowToolbarStyle.unified,
  ).apply();

  nearbyConnectionManager = NearbyConnectionManager();

  runApp(const App());
}
