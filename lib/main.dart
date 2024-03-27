import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:app0000/desktop/desktop.dart';
import 'package:app0000/fuschia/fuschia.dart';
import 'package:app0000/mobile/mobile.dart';
import 'package:app0000/persistence.dart';
import 'package:app0000/globals.dart' as global;

import 'package:window_size/window_size.dart';

void main() async {
  sqfliteFfiInit();

  databaseFactory = databaseFactoryFfi;
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
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  // Whoever is maintaining the code
  static const String iosMaintainer = "Bon";

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows || Platform.isLinux) {
      return const Desktop();
    } else if (Platform.isAndroid) {
      return const Mobile();
    } else if (Platform.isIOS || Platform.isMacOS) {
      return const Text("Compiling for IOS or OSX is not supported.\n"
          "Please contact ${Home.iosMaintainer} to retrieve the code for your system.");
    } else {
      return const Fuschia();
    }
  }
}
