import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static Database? _database;

  static Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Routines (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        description TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE Routine_exercises (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        routine_id INTEGER NOT NULL,
        exercise_name TEXT NOT NULL,
        sets INTEGER,
        reps INTEGER,
        weight REAL,
        FOREIGN KEY (routine_id) REFERENCES routines(id) ON DELETE CASCADE
      )
    ''');
  }

  static Future<Database> get database async {
    if (_database != null) return _database!;

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'gym_app.db');

    _database = await openDatabase(path, version: 1, onCreate: _onCreate);

    return _database!;
  }

  static Future<void> deleteAppDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'gym_app.db');
    await deleteDatabase(path);
  }
}
