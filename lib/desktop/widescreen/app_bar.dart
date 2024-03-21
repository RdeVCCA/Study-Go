import 'package:flutter/material.dart';

enum Menu {
  account,
  settings,
}

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Study Go! (Name to be determined"),
      backgroundColor: const Color(0xffe4e2fe),
      actions: <Widget>[
        PopupMenuButton<Menu>(
          icon: const Icon(Icons.settings),
          onOpened: () {},
          onCanceled: () {},
          onSelected: (value) {
            switch (value) {
              case Menu.settings:
                // Navigator is static, push to it to open a new page when implementing settings
                break;

              case Menu.account:
                break;

              // case _:
              //   break;
            }
          },
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: Menu.settings,
                child: Text("Settings"),
              ),
              const PopupMenuItem(
                value: Menu.account,
                child: Text("Account"),
              )
            ];
          },
        ),
      ],
    );
  }
}
