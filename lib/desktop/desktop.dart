import 'package:flutter/material.dart';

import 'widescreen.dart';
import 'widescreen/app_bar.dart';
import 'widescreen/start_button.dart';

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
      appBar: const DesktopAppBar(),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if ((constraints.maxWidth - constraints.minWidth) > 900) {
              return const Center(child: Widescreen());
            } else {
              return const Text("AOESAOETNUHOSENTUONSETU");
            }
          },
        ),
      ),
      floatingActionButton: const DesktopStartButton(),
    );
  }
}
