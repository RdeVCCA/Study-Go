import 'package:flutter/material.dart';

import 'widescreen.dart';
import 'widescreen/app_bar.dart';

enum Menu {
  account,
  settings,
}

class Desktop extends StatefulWidget {
  const Desktop({
    super.key,
  });

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DesktopAppBar(),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if ((constraints.maxWidth - constraints.minWidth) > 900) {
              return const Widescreen();
            } else {
              return Container(
                child: const Text("AOESAOETNUHOSENTUONSETU"),
              );
            }
          },
        ),
      ),
    );
  }
}
