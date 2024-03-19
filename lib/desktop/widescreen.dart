import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'leaderboard.dart';

class Widescreen extends StatelessWidget {
  const Widescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Leaderboard(),
        Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: const Card(
                child: Text("snth"),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text("snth"),
            ),
          ],
        )
      ],
    );
  }
}
