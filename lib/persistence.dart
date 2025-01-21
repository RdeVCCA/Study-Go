import 'package:sqlite3/sqlite3.dart';

import 'package:study_go/globals.dart' as global;

Future<Database> persistence() async {
  Database db = sqlite3.open("C:/docs/database.db");

  db.execute(r"CREATE TABLE IF NOT EXISTS score("
      "  field INTEGER,"
      "  data INTEGER"
      ");"
      "INSERT INTO score ("
      "  field,"
      "  data"
      ") VALUES ("
      "  1,"
      "  0"
      ");");

  ResultSet score = db.select("SELECT * FROM score WHERE field IS 1");

  global.sysScore.value = score.first.values[0] as int;

  return db;
}
