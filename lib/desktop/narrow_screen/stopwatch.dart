import 'package:study_go/globals.dart' as global;
import 'package:flutter/material.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffe4e2fe),
      child: Container(
        width: MediaQuery.of(context).size.width - 16,
        height: 96,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Session Time",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ListenableBuilder(
              listenable: global.stopWatchController,
              builder: (context, child) {
                int value = global.stopWatchController.value;
                return switch (value) {
                  0 => const Text(
                      "00:00:00",
                      style: TextStyle(fontSize: 30),
                    ),
                  _ => Text(
                      "${(value / 3600).floor().toString().padLeft(2, "0")}:${((value % 3600) / 60).floor().toString().padLeft(2, "0")}:${(value % 60).floor().toString().padLeft(2, "0")}",
                      style: const TextStyle(fontSize: 30),
                    )
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}
