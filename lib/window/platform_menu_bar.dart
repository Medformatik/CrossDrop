import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppPlatformMenuBar extends StatelessWidget {
  const AppPlatformMenuBar({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: [
        PlatformMenu(
          label: 'Crossdrop',
          menus: [
            if (PlatformProvidedMenuItem.hasMenu(PlatformProvidedMenuItemType.about))
              const PlatformProvidedMenuItem(
                type: PlatformProvidedMenuItemType.about,
              ),
            if (PlatformProvidedMenuItem.hasMenu(PlatformProvidedMenuItemType.quit))
              const PlatformProvidedMenuItem(
                type: PlatformProvidedMenuItemType.quit,
              ),
          ],
        ),
        PlatformMenu(
          label: 'View',
          menus: [
            if (PlatformProvidedMenuItem.hasMenu(PlatformProvidedMenuItemType.toggleFullScreen))
              const PlatformProvidedMenuItem(
                type: PlatformProvidedMenuItemType.toggleFullScreen,
              ),
          ],
        ),
        PlatformMenu(
          label: 'Window',
          menus: [
            if (PlatformProvidedMenuItem.hasMenu(PlatformProvidedMenuItemType.minimizeWindow))
              const PlatformProvidedMenuItem(
                type: PlatformProvidedMenuItemType.minimizeWindow,
              ),
            if (PlatformProvidedMenuItem.hasMenu(PlatformProvidedMenuItemType.zoomWindow))
              const PlatformProvidedMenuItem(
                type: PlatformProvidedMenuItemType.zoomWindow,
              ),
          ],
        ),
      ],
      child: child,
    );
  }
}
