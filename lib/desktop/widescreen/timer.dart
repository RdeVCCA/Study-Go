import 'dart:async';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({
    super.key,
  });

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  static final Stopwatch timer = Stopwatch();

  late Timer _timer;
  String result = "0:00:00";

  void start() {
    _timer = Timer.periodic(
      const Duration(milliseconds: 1),
      (Timer t) {
        setState(
          () {
            result =
                '${timer.elapsed.inHours.toString().padLeft(1, "0")}:${timer.elapsed.inMinutes.toString().padLeft(2, "0")}:${(timer.elapsed.inSeconds % 60).toString().padLeft(2, "0")}';
          },
        );
      },
    );
    timer.start();
  }

  void stop() {
    _timer.cancel();
    timer.stop();
    // TODO implement scoring
  }

  reset() {
    stop();
    timer.reset();

    setState(() {});
  }

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
        constraints: const BoxConstraints(
          minWidth: 168,
          minHeight: 56,
        ),
        child: Container(
          margin: const EdgeInsets.all(0),
          child: Center(
            child: Text(
              result,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
