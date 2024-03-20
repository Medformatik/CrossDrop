import 'package:crossdrop/constants/config.dart';
import 'package:crossdrop/constants/theme.dart';
import 'package:crossdrop/widgets/platform_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppMacos extends StatelessWidget {
  const AppMacos({
    super.key,
    required this.appTheme,
    required TextEditingController deviceNameController,
  }) : _deviceNameController = deviceNameController;

  final AppTheme appTheme;
  final TextEditingController _deviceNameController;

  @override
  Widget build(BuildContext context) {
    return MacosApp(
      title: AppConfig.name,
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      themeMode: appTheme.mode,
      debugShowCheckedModeBanner: false,
      home: AppPlatformMenuBar(
        child: MacosScaffold(
          toolBar: ToolBar(
            title: Text(
              AppConfig.name,
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
    );
  }
}
