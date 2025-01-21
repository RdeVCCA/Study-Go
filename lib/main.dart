import 'package:flutter/material.dart';

import 'package:study_go/mobile/mobile.dart';
import 'package:study_go/persistence.dart';
import 'package:study_go/globals.dart' as global;

import 'package:window_size/window_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  global.data = await persistence();

  runApp(
    const StudyGo(),
  );
}

class StudyGo extends StatelessWidget {
  const StudyGo({super.key});

  @override
  Widget build(BuildContext context) {
    setWindowMinSize(const Size(512, 768));
    return MaterialApp(
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff1f1e33),
          dynamicSchemeVariant: DynamicSchemeVariant.fruitSalad,
          contrastLevel: 1.0,
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    //   return const Desktop();
    // } else if (Platform.isAndroid || Platform.isIOS) {
    // } else {
    //   return const Fuschia();
    // }
    return const Mobile();
  }
}
