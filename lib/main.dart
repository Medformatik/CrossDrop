import 'dart:async';
import 'dart:io';
import 'package:crossdrop/animations.dart';
import 'package:crossdrop/app_config.dart';
import 'package:crossdrop/app_theme.dart';
import 'package:crossdrop/device.dart';
import 'package:crossdrop/window/on_close_window.dart';
import 'package:crossdrop/window/system_tray.dart';
import 'package:flutter/material.dart';
import 'package:adwaita/adwaita.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Future<String> deviceName;

  late AppSystemTray appSystemTray;

  final TextEditingController _deviceNameController = TextEditingController();
  bool isTextFieldEditing = false;

  @override
  void initState() {
    super.initState();
    deviceName = getDeviceName();
    deviceName.then((value) {
      setState(() {
        _deviceNameController.text = value;
      });
      appSystemTray = AppSystemTray(value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _deviceNameController.dispose();
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
                              await setDeviceName(_deviceNameController.text);
                              await appSystemTray.updateDeviceName(_deviceNameController.text);
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
