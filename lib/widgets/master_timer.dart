import 'package:flutter/material.dart';
import 'package:study_go/timers.dart';

class MasterTimer extends StatefulWidget {
  const MasterTimer({
    super.key,
    required this.mainTheme,
  });

  final ThemeData mainTheme;

  @override
  State<MasterTimer> createState() => _MasterTimerState();
}

class _MasterTimerState extends State<MasterTimer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ValueListenableBuilder(
          valueListenable: globalTimer.time,
          builder: (context, value, child) => Text(
            // I guess it works :shrug:
            "${(value / 3600).floor()}:"
            "${(value % 3600 / 60).floor().toString().padLeft(2, '0')}:"
            "${(value % 60).toString().padLeft(2, '0')}",
            // TODO Make the text red or something when the timer is stopped
            // or something
            style: widget.mainTheme.textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}
