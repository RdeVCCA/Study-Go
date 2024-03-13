import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if ((constraints.maxWidth - constraints.minWidth) > 900) {
            return Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Card(
                    child: Text("aoeu"),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Card(
                        child: Text("snth"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("snth"),
                    ),
                  ],
                )
              ],
            );
          } else {
            return // mobile
                Container(child: Text("AOESAOETNUHOSENTUONSETU"));
          }
        },
      ),
    );
  }
}
