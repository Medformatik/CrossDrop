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

enum AnimationPhase { idle, fadeIn, visible, fadeOut }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Future<String> deviceName;
  AppSystemTray? appSystemTray;

  final TextEditingController _deviceNameController = TextEditingController();
  bool isTextFieldEditing = false;

  int _currentShapeIndex = 0;
  Timer? _animationTimer;
  AnimationPhase _animationPhase = AnimationPhase.idle;
  double _opacity = 0.0; // Target opacity for AnimatedOpacity

  // Define durations for each phase
  final Duration _fadeInDuration = const Duration(milliseconds: 1000);
  final Duration _visibleDuration = const Duration(milliseconds: 100);
  final Duration _fadeOutDuration = const Duration(milliseconds: 1000);

  @override
  void initState() {
    super.initState();
    deviceName = getDeviceName();
    deviceName.then((value) {
      if (mounted) {
        setState(() {
          _deviceNameController.text = value;
        });
        appSystemTray = AppSystemTray(value);
      }
    });

    // Start the animation cycle immediately
    _triggerNextAnimationFrame();
  }

  // State machine to control animation phases
  void _triggerNextAnimationFrame() {
    if (!mounted) return; // Exit if widget is disposed

    // Cancel any existing timer before starting a new phase
    _animationTimer?.cancel();
    Duration nextPhaseDelay;

    switch (_animationPhase) {
      case AnimationPhase.idle:
        // Start fading in the current shape
        setState(() {
          _opacity = 1.0; // Target opacity for fade in
          _animationPhase = AnimationPhase.fadeIn;
        });
        nextPhaseDelay = _fadeInDuration;
        break;

      case AnimationPhase.fadeIn:
        // Shape is now fully visible
        setState(() {
          // Opacity already 1.0
          _animationPhase = AnimationPhase.visible;
        });
        nextPhaseDelay = _visibleDuration;
        break;

      case AnimationPhase.visible:
        // Start fading out
        setState(() {
          _opacity = 0.0; // Target opacity for fade out
          _animationPhase = AnimationPhase.fadeOut;
        });
        nextPhaseDelay = _fadeOutDuration;
        break;

      case AnimationPhase.fadeOut:
        // Shape is faded out, move to the next shape and reset to idle
        setState(() {
          // Opacity already 0.0
          _currentShapeIndex =
              (_currentShapeIndex + 1) % animationShapes.length;
          _animationPhase = AnimationPhase.idle;
        });
        // Start the next cycle immediately (or with a small delay if desired)
        nextPhaseDelay = Duration.zero; // Start next fade-in right away
        // nextPhaseDelay = const Duration(milliseconds: 100); // Optional small delay
        break;
    }

    // Schedule the next transition
    _animationTimer = Timer(nextPhaseDelay, _triggerNextAnimationFrame);
  }

  // Helper to get the correct duration for AnimatedOpacity based on the *current* transition
  Duration get _currentAnimationDuration {
    switch (_animationPhase) {
      case AnimationPhase.fadeIn:
        return _fadeInDuration;
      case AnimationPhase.fadeOut:
        return _fadeOutDuration;
      case AnimationPhase.idle:
      case AnimationPhase.visible:
        // Duration doesn't matter much when opacity isn't changing,
        // but return a default (e.g., fadeOut)
        return _fadeOutDuration;
    }
  }

  @override
  void dispose() {
    _deviceNameController.dispose();
    // Cancel the timer when the widget is disposed
    _animationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final appTheme = context.watch<AppTheme>();
        return MaterialApp(
          title: AppConfig.name,
          theme:
              Platform.isLinux ? AdwaitaThemeData.light() : ThemeData.light(),
          darkTheme:
              Platform.isLinux ? AdwaitaThemeData.dark() : ThemeData.dark(),
          themeMode: appTheme.mode,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar:
                Platform.isIOS
                    ? AppBar(
                      title: Text(AppConfig.name, textAlign: TextAlign.center),
                      centerTitle: true,
                    )
                    : null,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Ready to receive',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    // Constrain the size
                    width: 140,
                    height: 140,
                    child: AnimatedOpacity(
                      opacity: _opacity, // Controlled by the state machine
                      duration:
                          _currentAnimationDuration, // Use dynamic duration
                      curve: Curves.easeOut, // Adjust curve if needed
                      child: Container(
                        // The single container showing the current shape
                        width: 140,
                        height: 140,
                        decoration: ShapeDecoration(
                          shape:
                              animationShapes[_currentShapeIndex], // Get current shape
                          color: const Color.fromRGBO(13, 85, 201, 1.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Receiving from everyone',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.center,
                    fit: StackFit.passthrough,
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          labelText: 'Device name',
                        ),
                        maxLines: 1,
                        controller: _deviceNameController,
                        onChanged:
                            (_) => setState(() => isTextFieldEditing = true),
                      ),
                      if (isTextFieldEditing)
                        Positioned(
                          right: 0,
                          child: ElevatedButton(
                            onPressed: () async {
                              FocusScope.of(context).unfocus();
                              setState(() => isTextFieldEditing = false);
                              final newName = _deviceNameController.text;
                              await setDeviceName(newName);
                              if (mounted && appSystemTray != null) {
                                await appSystemTray!.updateDeviceName(newName);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: const Color.fromRGBO(
                                53,
                                132,
                                228,
                                1.0,
                              ),
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
