import 'package:window_manager/window_manager.dart';

class OnCloseWindowListener with WindowListener {
  @override
  void onWindowClose() {
    windowManager.hide();
  }
}
