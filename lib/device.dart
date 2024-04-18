import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> getDeviceName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String deviceName = prefs.getString('deviceName') ?? '';
  if (deviceName.isEmpty) {
    if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      deviceName = iosDeviceInfo.name;
    } else if (Platform.isLinux) {
      deviceName = Platform.localHostname;
    } else if (Platform.isMacOS) {
      deviceName = Platform.localHostname;
    } else {
      deviceName = 'Unknown';
    }
    await prefs.setString('deviceName', deviceName);
  }
  return deviceName;
}

Future<void> setDeviceName(String deviceName) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('deviceName', deviceName);
}
