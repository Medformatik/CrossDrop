import 'package:crossdrop/constants/config.dart';
import 'package:crossdrop/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({
    super.key,
    required this.appTheme,
    required TextEditingController deviceNameController,
  }) : _deviceNameController = deviceNameController;

  final AppTheme appTheme;
  final TextEditingController _deviceNameController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.name,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: appTheme.mode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            AppConfig.name,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: 300.0,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Device name',
                  ),
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
        ),
      ),
    );
  }
}
