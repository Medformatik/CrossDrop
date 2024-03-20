import 'dart:io';

import 'package:crossdrop/constants/config.dart';
import 'package:crossdrop/macos/macos_app.dart';
import 'package:crossdrop/material/material_app.dart';
import 'package:crossdrop/constants/theme.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:system_tray/system_tray.dart';
import 'package:window_manager/window_manager.dart';

class App extends StatefulWidget {
  const App({super.key});

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
    String path = Platform.isWindows ? 'assets/icons/system_tray_icon.ico' : 'assets/icons/system_tray_icon.png';

    // We first init the systray menu and then add the menu entries
    await _systemTray.initSystemTray(iconPath: path, toolTip: 'CrossDrop: Nearby Share for all platforms');

    // handle system tray event
    _systemTray.registerSystemTrayEventHandler((eventName) {
      if (eventName == kSystemTrayEventClick) {
        Platform.isWindows ? windowManager.show() : _systemTray.popUpContextMenu();
      } else if (eventName == kSystemTrayEventRightClick) {
        Platform.isWindows ? _systemTray.popUpContextMenu() : windowManager.show();
      }
    });

    await menu.buildFrom([
      MenuItemLabel(label: 'Visible to everyone'),
      MenuItemLabel(label: 'Device name: ${_deviceNameController.text}'),
      MenuSeparator(),
      MenuItemLabel(label: 'Show settings', onClicked: (menuItem) => windowManager.show()),
      MenuItemLabel(label: 'Hide settings', onClicked: (menuItem) => windowManager.hide()),
      MenuItemLabel(
          label: 'Quit ${AppConfig.name}',
          onClicked: (menuItem) {
            windowManager.close();
            exit(0);
          }),
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
            deviceName = info.name;
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
        return Platform.isMacOS
            ? AppMacos(
                appTheme: appTheme,
                deviceNameController: _deviceNameController,
              )
            : AppMaterial(
                appTheme: appTheme,
                deviceNameController: _deviceNameController,
              );
      },
    );
  }
}
