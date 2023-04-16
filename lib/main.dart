import 'dart:async';
import 'dart:io';

import 'package:crossdrop/window/platform_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_manager/window_manager.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:system_tray/system_tray.dart';

import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
    windowButtonVisibility: true,
    minimumSize: Size(400, 250),
    maximumSize: Size(800, 600),
    title: 'Crossdrop',
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final TextEditingController _deviceNameController = TextEditingController();

  final SystemTray _systemTray = SystemTray();
  final Menu menu = Menu();

  @override
  void initState() {
    super.initState();
    initSystemTray();
    initDeviceNameController();
  }

  @override
  void dispose() {
    super.dispose();
    _deviceNameController.dispose();
  }

  Future<void> initSystemTray() async {
    String path = Platform.isWindows ? 'assets/icons/app_icon.ico' : 'assets/icons/app_icon.png';

    // We first init the systray menu and then add the menu entries
    await _systemTray.initSystemTray(iconPath: path, toolTip: 'Crossdrop: Nearby Share for all platforms');

    // handle system tray event
    _systemTray.registerSystemTrayEventHandler((eventName) {
      if (eventName == kSystemTrayEventClick) {
        Platform.isWindows ? windowManager.show() : _systemTray.popUpContextMenu();
      } else if (eventName == kSystemTrayEventRightClick) {
        Platform.isWindows ? _systemTray.popUpContextMenu() : windowManager.show();
      }
    });

    await menu.buildFrom([
      MenuItemLabel(label: 'Show', onClicked: (menuItem) => windowManager.show()),
      MenuItemLabel(label: 'Hide', onClicked: (menuItem) => windowManager.hide()),
      MenuItemLabel(label: 'Exit', onClicked: (menuItem) => windowManager.close()),
    ]);

    _systemTray.setContextMenu(menu);
  }

  Future<void> initDeviceNameController() async {
    // Get deviceName from SharedPreferences and device name from device_info_plus
    // If text in controller is empty, set to deviceName from SharedPreferences if it exists and is not empty, otherwise set to device name from device_info_plus
    SharedPreferences.getInstance().then((prefs) {
      String deviceName = prefs.getString('deviceName') ?? '';
      if (deviceName.isEmpty) {
        DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        if (Platform.isIOS) {
          deviceInfo.iosInfo.then((info) {
            deviceName = info.name ?? info.model ?? '';
            SharedPreferences.getInstance().then((prefs) {
              prefs.setString('deviceName', deviceName);
              setState(() {
                _deviceNameController.text = deviceName;
              });
            });
          });
        } else if (Platform.isMacOS) {
          deviceInfo.macOsInfo.then((info) {
            deviceName = info.computerName;
            SharedPreferences.getInstance().then((prefs) {
              prefs.setString('deviceName', deviceName);
              setState(() {
                _deviceNameController.text = deviceName;
              });
            });
          });
        } else if (Platform.isLinux) {
          deviceInfo.linuxInfo.then((info) {
            deviceName = info.prettyName;
            SharedPreferences.getInstance().then((prefs) {
              prefs.setString('deviceName', deviceName);
              setState(() {
                _deviceNameController.text = deviceName;
              });
            });
          });
        }
      } else {
        setState(() {
          _deviceNameController.text = deviceName;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final appTheme = context.watch<AppTheme>();
        return MacosApp(
          title: 'Crossdrop',
          theme: MacosThemeData.light(),
          darkTheme: MacosThemeData.dark(),
          themeMode: appTheme.mode,
          debugShowCheckedModeBanner: false,
          home: AppPlatformMenuBar(
            child: MacosWindow(
              child: MacosScaffold(
                toolBar: const ToolBar(
                  title: Text(
                    'Crossdrop',
                    textAlign: TextAlign.center,
                  ),
                  centerTitle: true,
                ),
                children: [
                  ContentArea(
                    builder: (context, scrollController) {
                      return SingleChildScrollView(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 300.0,
                              child: MacosTextField(
                                placeholder: 'Device name',
                                maxLines: 1,
                                controller: _deviceNameController,
                                onEditingComplete: () async {
                                  SharedPreferences prefs = await SharedPreferences.getInstance();
                                  prefs.setString('deviceName', _deviceNameController.text);
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
