import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Study Go"),
        backgroundColor: Theme.of(context).appBarTheme.foregroundColor,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: Drawer(),
    );
  }
}
