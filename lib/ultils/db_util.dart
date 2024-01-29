import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DbUltil {
  static Future<sql.Database> database() async {
    final dbpath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbpath, 'places.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE plases (id TEXT PRIMARY KEY,title TEXT, image TEXT)',
        );
      },
    );
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DbUltil.database();
    await db.insert(table, data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }
}
