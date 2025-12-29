import 'package:gymapp/data/database/database.dart';
import 'package:gymapp/data/database/models/routine.dart';

class RoutineRepository {
  Future<int> insertRoutine(Routine routine) async {
    final db = await AppDatabase.database;
    return await db.insert('Routines', routine.toMap());
  }

  Future<void> deleteRoutine(int id) async {
    final db = await AppDatabase.database;
    await db.delete('Routines', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Routine>> getRoutines() async {
    final db = await AppDatabase.database;
    final List<Map<String, dynamic>> maps = await db.query('Routines');
    return List.generate(maps.length, (index) {
      return Routine.fromMap(maps[index]);
    });
  }
}
