//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import bonsoir_darwin
import device_info_plus
import flutter_local_notifications
import nsd_macos
import screen_retriever
import shared_preferences_foundation
import system_tray
import window_manager

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  SwiftBonsoirPlugin.register(with: registry.registrar(forPlugin: "SwiftBonsoirPlugin"))
  DeviceInfoPlusMacosPlugin.register(with: registry.registrar(forPlugin: "DeviceInfoPlusMacosPlugin"))
  FlutterLocalNotificationsPlugin.register(with: registry.registrar(forPlugin: "FlutterLocalNotificationsPlugin"))
  NsdMacosPlugin.register(with: registry.registrar(forPlugin: "NsdMacosPlugin"))
  ScreenRetrieverPlugin.register(with: registry.registrar(forPlugin: "ScreenRetrieverPlugin"))
  SharedPreferencesPlugin.register(with: registry.registrar(forPlugin: "SharedPreferencesPlugin"))
  SystemTrayPlugin.register(with: registry.registrar(forPlugin: "SystemTrayPlugin"))
  WindowManagerPlugin.register(with: registry.registrar(forPlugin: "WindowManagerPlugin"))
}
