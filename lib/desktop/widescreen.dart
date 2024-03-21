import 'dart:async';
import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'widescreen/leaderboard.dart';
import 'widescreen/timer.dart';

class Widescreen extends StatelessWidget {
  const Widescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Leaderboard(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Clock(),
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
