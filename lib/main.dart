import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'fuschia/fuschia.dart';
import 'desktop/desktop.dart';
import 'mobile/mobile.dart';

// Whoever is maintaining the code
const String iosMaintainer = "Bon";

void main() {
  runApp(
    const StudyGo(),
  );
}

class StudyGo extends StatelessWidget {
  const StudyGo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return Desktop();
    } else if (Platform.isAndroid) {
      return const Mobile();
    } else if (Platform.isIOS) {
      return const Text("Compiling for IOS is not supported.\n"
          "Please contact $iosMaintainer to retrieve the code for IOS.");
    } else {
      return const Fuschia();
    }
  }
}
