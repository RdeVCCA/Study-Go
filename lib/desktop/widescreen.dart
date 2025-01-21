import 'package:flutter/material.dart';

import 'package:study_go/desktop/widescreen/stopwatch.dart';
import 'package:study_go/desktop/widescreen/sys_score.dart';
import 'package:study_go/desktop/widescreen/leaderboard.dart';

class Widescreen extends StatelessWidget {
  const Widescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(
        color: Colors.white,
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
