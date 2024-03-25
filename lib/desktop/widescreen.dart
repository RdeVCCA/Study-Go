import 'package:app0000/desktop/widescreen/stopwatch.dart';
import 'package:flutter/material.dart';
import 'package:app0000/desktop/widescreen/sys_score.dart';

import 'widescreen/leaderboard.dart';

class Widescreen extends StatelessWidget {
  const Widescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffeeeeee),
      child: Container(
        color: const Color(0xffffffff),
        width: 900,
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Leaderboard(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const StopWatch(),
                Container(
                  alignment: Alignment.topLeft,
                  child: const SysScore(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
