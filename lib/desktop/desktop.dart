import 'package:flutter/material.dart';

import 'package:app0000/desktop/widescreen.dart';
import 'package:app0000/desktop/widescreen/app_bar.dart';
import 'package:app0000/desktop/widescreen/start_button.dart';
import 'package:flutter/rendering.dart';

import 'narrow_screen.dart';
import 'narrow_screen/leaderboard.dart';
import 'narrow_screen/stopwatch.dart';
import 'narrow_screen/sys_score.dart';

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
