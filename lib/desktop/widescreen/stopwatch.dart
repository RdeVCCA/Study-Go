import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:app0000/globals.dart' as global;

class StopWatchController extends ValueNotifier<int> {
  StopWatchController() : super(0);

  Timer? _timer;

  bool get running => _timer == null;

  void start() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        value = ++value;
      },
    );
    return;
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
    value = 0;
    return;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

class StopWatch extends StatelessWidget {
  const StopWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 8, 8),
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
            child: Column(children: <Widget>[
              const Text(
                textAlign: TextAlign.center,
                "Session Time:",
                style: TextStyle(fontSize: 20),
              ),
              ListenableBuilder(
                listenable: global.stopWatchController,
                builder: (context, child) {
                  int value = global.stopWatchController.value;
                  return switch (value) {
                    0 => const Text(
                        "0:00:00",
                        style: TextStyle(fontSize: 30),
                      ),
                    _ => Text(
                        "${
                        //
                        (value / 3600).floor().toString().padLeft(1, "0")}:${
                        //
                        ((value % 3600) / 60).floor().toString().padLeft(2, "0")}:${
                        //
                        (value % 60).floor().toString().padLeft(2, "0")}",
                        style: const TextStyle(fontSize: 30),
                      )
                  };
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
