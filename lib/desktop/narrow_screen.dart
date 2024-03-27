import 'package:app0000/desktop/narrow_screen/leaderboard.dart';
import 'package:app0000/desktop/narrow_screen/stopwatch.dart';
import 'package:app0000/desktop/narrow_screen/sys_score.dart';
import 'package:flutter/material.dart';

class NarrowScreen extends StatelessWidget {
  const NarrowScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Column(
        children: <Widget>[
          Stopwatch(),
          SysScore(),
          Leaderboard(),
        ],
      ),
    );
  }
}
