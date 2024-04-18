import 'dart:io';

import 'package:system_tray/system_tray.dart';
import 'package:window_manager/window_manager.dart';

class AppSystemTray {
  final String _deviceName;

  AppSystemTray(this._deviceName);

  final SystemTray _systemTray = SystemTray();
  final Menu menu = Menu();

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

    updateDeviceName(_deviceName);
  }

  Future<void> updateDeviceName(String deviceName) async {
    await menu.buildFrom([
      MenuItemLabel(label: 'Visible to everyone', enabled: false),
      MenuItemLabel(label: 'Device name: $deviceName', enabled: false),
      MenuItemLabel(label: 'Settings', onClicked: (menuItem) => windowManager.show()),
      MenuItemLabel(
          label: 'Quit',
          onClicked: (menuItem) {
            windowManager.close();
            exit(0);
          }),
    ]);
    await _systemTray.setContextMenu(menu);
  }
}
