import 'dart:async';
import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'widescreen/leaderboard.dart';

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
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(),
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
