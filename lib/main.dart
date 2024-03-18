import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'fuschia/fuschia.dart';
import 'desktop/desktop.dart';
import 'mobile/mobile.dart';

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
    } else if (Platform.isIOS || Platform.isAndroid) {
      return Mobile();
    } else {
      return Fuschia();
    }
  }
}
