import 'package:flutter/material.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:logger/logger.dart';
import 'package:study_go/database.dart';
import 'package:study_go/timers.dart';
import 'package:study_go/widgets/master_timer.dart';
import 'package:study_go/widgets/subjects.dart';

void main() async {
  connection = await MySQLConnection.createConnection(
    host: "localhost",
    port: 3306,
    userName: "root",
    password: "",
    databaseName: "StudyGo",
  );
  await connection.connect();

  Logger clog = Logger(level: Level.all);

  try {
    await connection.execute(
      "CREATE TABLE IF NOT EXISTS `score` ("
      "  `userid` varchar(40) NOT NULL,"
      "  `score` int NOT NULL,"
      "  PRIMARY KEY (`userid`),"
      "  UNIQUE KEY `userid_UNIQUE` (`userid`),"
      "  CONSTRAINT `` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)"
      "    ON DELETE CASCADE"
      "    ON UPDATE CASCADE"
      ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;",
    );
    clog.i('`score` created.');

    await connection.execute(
      "CREATE TABLE IF NOT EXISTS `users` ("
      "  `id` varchar(40) NOT NULL DEFAULT 'UUID()',"
      "  `username` varchar(64) NOT NULL,"
      "  `key` varchar(256) NOT NULL,"
      "  PRIMARY KEY (`id`),"
      "  UNIQUE KEY `id` (`id`),"
      "  UNIQUE KEY `username` (`username`),"
      "  UNIQUE KEY `key` (`key`)"
      ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;",
    );
    clog.i('`users` created.');
  } catch (e) {
    clog.e(e.toString());
  }

  runApp(const MyApp());

  await connection.close();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Go',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff1f1e33)),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      home: const Index(title: 'Study Go'),
    );
  }
}

class Index extends StatefulWidget {
  const Index({super.key, required this.title});

  final String title;

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    ThemeData mainTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MasterTimer(mainTheme: mainTheme),
            ListView(
              shrinkWrap: true,
              children: [
                Subjects(subjectName: "Maths"),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            MenuItemButton(
              child: Text("aoeu"),
            )
          ],
        ),
      ),
      floatingActionButton: globalTimer.started.value
          ? FloatingActionButton(
              backgroundColor: Colors.redAccent,
              onPressed: () => setState(globalTimer.stop),
              tooltip: "Stop",
              child: const Icon(Icons.stop),
            )
          : FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              onPressed: () => setState(globalTimer.start),
              tooltip: "Start",
              child: const Icon(Icons.play_arrow),
            ),
    );
  }
}
