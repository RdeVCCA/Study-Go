import 'package:flutter/material.dart';

import 'package:study_go/desktop/widescreen.dart';
import 'package:study_go/desktop/app_bar.dart';
import 'package:study_go/desktop/start_button.dart';

import 'narrow_screen.dart';

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
              return const Center(child: NarrowScreen());
            }
          },
        ),
      ),
      floatingActionButton: const DesktopStartButton(),
    );
  }
}
