import 'package:flutter/material.dart';

import 'package:app0000/globals.dart' as global;

enum Status {
  stopped,
  running,
}

class DesktopStartButton extends StatefulWidget {
  const DesktopStartButton({
    super.key,
  });

  @override
  State<DesktopStartButton> createState() => _DesktopStartButtonState();
}

class _DesktopStartButtonState extends State<DesktopStartButton> {
  Status current = Status.stopped;
  static const double reductionRatio = 2.5;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      shape: const CircleBorder(),
      onPressed: () async {
        switch (current) {
          case Status.stopped:
            // global.stopWatchController.value = 32400;
            global.stopWatchController.start();
            setState(() {
              current = Status.running;
            });
            break;

          case Status.running:
            if (global.sysScore.add(global.stopWatchController.value)) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Study sessions of more than 9 hours are not ranked.",
                  ),
                ),
              );
            } else {
              await global.data?.update(
                  'score', {'data': global.sysScore.value},
                  where: "field=1");
            }

            global.stopWatchController.stop();
            setState(() {
              current = Status.stopped;
            });
            break;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) => Icon(
          switch (current) {
            Status.stopped => Icons.arrow_right_rounded,
            Status.running => Icons.square_rounded
          },
          size: switch (current) {
            Status.stopped => constraints.maxWidth,
            Status.running => constraints.maxWidth / reductionRatio,
          },
        ),
      ),
    );
  }
}
