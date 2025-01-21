import 'package:study_go/globals.dart' as global;
import 'package:flutter/material.dart';

class SysScore extends StatelessWidget {
  const SysScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffe4e2fe),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 16,
        height: 96,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Current Score",
              style: TextStyle(fontSize: 20),
            ),
            ListenableBuilder(
              listenable: global.sysScore,
              builder: (context, child) => Text(
                global.sysScore.value
                    .toStringAsPrecision(5)
                    .replaceAllMapped(RegExp(r'\.0*$'), (Match m) => ""),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
