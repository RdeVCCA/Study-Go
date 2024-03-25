import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:path/path.dart';

import 'package:app0000/globals.dart' as global;

Future<Database> persistence() async {
  return openDatabase(
    join(await getDatabasesPath(), ".studyGo.db"),
    onCreate: (db, version) async {
      await db.execute(
          r'CREATE TABLE score(field INTEGER PRIMARY KEY, data INTEGER)');
      db.insert(r'score', {'field': 1, 'data': 0},
          conflictAlgorithm: ConflictAlgorithm.replace);
    },
    version: 1,
    onOpen: (db) async {
      List<Map<String, Object?>> query = await db.query(r'score');
      for (final {'field': field as int, 'data': score as int} in query) {
        if (field == 1) {
          global.sysScore.value = score;
          break;
        }
      }
    },
  );
}
