import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import "buttons/start_button.dart";
import "layout/desktop_homepage.dart";

void main() {
  runApp(
    const StudyGo(),
  );
}

class StudyGo extends StatelessWidget {
  const StudyGo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colours = [
      const Color(0x1f1e33ff),
      const Color(0xfbd6c7ff)
    ];

    return Scaffold(
      floatingActionButton: const StartButton(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double width = constraints.maxWidth - constraints.minWidth;

          if (constraints.maxWidth > 900) {
            /* desktop */

            return DesktopHomepage();

            /* enddesktop */
          } else {
            /* Mobile or thin desktop */

            return Scaffold(
              floatingActionButton: const StartButton(),
              body: Container(
                height: 200,
                padding: const EdgeInsetsDirectional.all(16),
                alignment: Alignment.center,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: width / 2 - 32,
                      color: colours[index],
                      padding: const EdgeInsets.all(8),
                      child: const Center(child: Text('Text')),
                    );
                  },
                  separatorBuilder: (context, index) => Container(
                    width: 16,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            );

            /* endmobile */
          }
        },
      ),
    );
  }
}
