import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:adwaita/adwaita.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_manager/window_manager.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:system_tray/system_tray.dart';

import 'theme.dart';

class AppConfig {
  static String get name => 'CrossDrop';
}

class OnCloseWindowListener with WindowListener {
  @override
  void onWindowClose() {
    windowManager.hide();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isLinux) {
    OnCloseWindowListener onCloseWindowListener = OnCloseWindowListener();

    await windowManager.ensureInitialized();

    WindowOptions windowOptions = WindowOptions(
      backgroundColor: Colors.transparent,
      titleBarStyle: TitleBarStyle.normal,
      windowButtonVisibility: true,
      size: const Size(340, 360),
      title: AppConfig.name,
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      windowManager.setPreventClose(true);
      windowManager.addListener(onCloseWindowListener);
      await windowManager.hide();
    });
  }

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late String currentDeviceName;

  final TextEditingController _deviceNameController = TextEditingController();
  bool isTextFieldEditing = false;

  final List<ShapeBorder> animationShapes = [
    const CircleBorder(),
    const StarBorder(
      points: 8.00,
      rotation: 0.00,
      innerRadiusRatio: 0.50,
      pointRounding: 0.60,
      valleyRounding: 0.29,
      squash: 0.00,
    ),
    const StarBorder(
      points: 3.95,
      rotation: 45.0,
      innerRadiusRatio: 0.43,
      pointRounding: 0.69,
      valleyRounding: 0.11,
      squash: 0.00,
    ),
    const StarBorder.polygon(
      sides: 5.00,
      rotation: 0.00,
      pointRounding: 0.35,
      squash: 0.00,
    ),
  ];

  final SystemTray _systemTray = SystemTray();
  final Menu menu = Menu();

  @override
  void initState() async {
    super.initState();
    await _initializeDeviceName();
    if (Platform.isLinux) {
      await initSystemTray();
      await initSystemTrayMenu();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _deviceNameController.dispose();
  }

  Future<void> _initializeDeviceName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String deviceName = prefs.getString('deviceName') ?? '';
    if (deviceName.isEmpty) {
      if (Platform.isIOS) {
        DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        deviceName = iosDeviceInfo.name;
      } else if (Platform.isLinux) {
        deviceName = Platform.localHostname;
      }
      await prefs.setString('deviceName', deviceName);
    }
    currentDeviceName = deviceName;
    setState(() => _deviceNameController.text = deviceName);
  }

  Future<void> initSystemTray() async {
    String path = 'assets/icons/system_tray_icon.png';
    await _systemTray.initSystemTray(iconPath: path, toolTip: 'CrossDrop');

    // handle system tray event
    _systemTray.registerSystemTrayEventHandler((eventName) {
      if (eventName == kSystemTrayEventClick) {
        _systemTray.popUpContextMenu();
      } else if (eventName == kSystemTrayEventRightClick) {
        windowManager.show();
      }
    });
  }

  Future<void> initSystemTrayMenu() async {
    await menu.buildFrom([
      MenuItemLabel(label: 'Visible to everyone', enabled: false),
      MenuItemLabel(label: 'Device name: $currentDeviceName', enabled: false),
      MenuItemLabel(label: 'Settings', onClicked: (menuItem) => windowManager.show()),
      MenuItemLabel(label: 'Quit', onClicked: (menuItem) {
        windowManager.close();
        exit(0);
      }),
    ]);
    await _systemTray.setContextMenu(menu);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final appTheme = context.watch<AppTheme>();
        return MaterialApp(
          title: AppConfig.name,
          theme: Platform.isLinux ? AdwaitaThemeData.light() : ThemeData.light(),
          darkTheme: Platform.isLinux ? AdwaitaThemeData.dark() : ThemeData.dark(),
          themeMode: appTheme.mode,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: Platform.isIOS ? AppBar(title: Text(AppConfig.name, textAlign: TextAlign.center), centerTitle: true) : null,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text('Ready to receive', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  Stack(
                    fit: StackFit.passthrough,
                    children: animationShapes.asMap().entries.map((entry) {
                      int index = entry.key;
                      ShapeBorder shape = entry.value;
                      return Container(
                        width: 140,
                        height: 140,
                        decoration: ShapeDecoration(
                          shape: shape,
                          color: const Color.fromRGBO(13, 85, 201, 1.0),
                        ),
                      )
                        .animate(onPlay: (controller) => controller.repeat())
                        .then(delay: const Duration(seconds: 2) * index)
                        .fadeIn(curve: Curves.easeOut, duration: const Duration(seconds: 1))
                        .fadeOut(delay: const Duration(seconds: 1))
                        .then(delay: const Duration(seconds: 2) * (animationShapes.length - (index + 1)));
                    }).toList(),
                  ),
                  const SizedBox(height: 40),
                  const Text('Receiving from everyone', textAlign: TextAlign.start, style: TextStyle(fontSize: 16)),
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
                      ),
                      if (isTextFieldEditing)
                        Positioned(
                          right: 0,
                          child: ElevatedButton(
                            onPressed: () async {
                              setState(() => isTextFieldEditing = false);
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              currentDeviceName = _deviceNameController.text;
                              await prefs.setString('deviceName', _deviceNameController.text);
                              await initSystemTrayMenu();
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: const Color.fromRGBO(53, 132, 228, 1.0),
                            ),
                            child: const Icon(Icons.done),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
