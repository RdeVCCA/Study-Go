import 'package:flutter/material.dart';
import 'package:app0000/globals.dart' as global;

class SysScoreController extends ValueNotifier<int> {
  SysScoreController() : super(0);

  bool add(int updated) {
    if (updated <= 32400) {
      value = value + updated;
      return false;
    }
    return true;
  }
}

class SysScore extends StatelessWidget {
  const SysScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 8, 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffeeeeee),
            width: 1,
          ),
        ),
        alignment: Alignment.topLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 168, minHeight: 56),
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Current Score:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  ListenableBuilder(
                    listenable: global.sysScore,
                    builder: (context, child) => Text(
                      global.sysScore.value
                          .toStringAsPrecision(5)
                          .replaceAllMapped(RegExp(r'\.0*$'), (Match m) => ""),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
