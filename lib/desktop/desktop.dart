import 'package:flutter/material.dart';

import 'widescreen.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if ((constraints.maxWidth - constraints.minWidth) > 900) {
            return Widescreen();
          } else {
            return Container(
              child: const Text("AOESAOETNUHOSENTUONSETU"),
            );
          }
        },
      ),
    );
  }
}
