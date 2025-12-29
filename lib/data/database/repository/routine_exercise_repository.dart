import 'package:gymapp/data/database/database.dart';
import 'package:gymapp/data/database/models/routine_exercise.dart';

class RoutineExerciseRepository {
  Future<void> addExerciseToRoutine(int routineId, String exerciseName) async {
    final db = await AppDatabase.database;
    await db.rawInsert(
      'INSERT INTO Routine_exercises (routine_id, exercise_name) VALUES (?, ?)',
      [routineId, exerciseName],
    );
  }

  Future<void> updateRoutineExercise(
    int id,
    String exerciseName,
    int sets,
    int reps,
    double weight,
  ) async {
    final db = await AppDatabase.database;
    await db.rawUpdate(
      'UPDATE Routine_exercises SET exercise_name = ?, sets = ?, reps = ?, weight = ? WHERE id = ?',
      [exerciseName, sets, reps, weight, id],
    );
  }

  Future<void> deleteRoutineExercise(int id) async {
    final db = await AppDatabase.database;
    await db.delete('Routine_exercises', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<RoutineExercise>> getRoutineExercises(int routineId) async {
    final db = await AppDatabase.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'Routine_exercises',
      where: 'routine_id = ?',
      whereArgs: [routineId],
    );
    return List.generate(maps.length, (index) {
      return RoutineExercise.fromMap(maps[index]);
    });
  }
}
