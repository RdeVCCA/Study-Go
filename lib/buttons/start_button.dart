import "package:flutter/material.dart";

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("The timer has been started."),
          ),
        );
      },
      child: LayoutBuilder(
        builder: (context, constraints) => Icon(
          Icons.arrow_right_rounded,
          size: (constraints.maxWidth - constraints.minWidth),
        ),
      ),
    );
  }
}
