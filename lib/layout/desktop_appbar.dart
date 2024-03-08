import "package:flutter/material.dart";

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0x1f1e33ff),
      titleTextStyle: const TextStyle(
        fontFamily: "Fira Code",
        fontFamilyFallback: ["Consolas", "Times New Roman"],
        color: Color.fromARGB(0xff, 0x00, 0x00, 0x00),
      ),
      title: const Text("Study Go"),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        )
      ],
    );
  }
}
