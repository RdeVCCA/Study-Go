// ignore_for_file: unused_import

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
        const Leaderboard(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Clock(),
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
