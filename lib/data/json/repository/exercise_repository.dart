import 'package:gymapp/data/json/models/exercise.dart';
import 'package:gymapp/data/json/sources/exercise_source.dart';

class ExerciseRepository {
  final ExerciseSource _source;

  ExerciseRepository(this._source);

  Map<String, List<Exercise>>? _cache;

  Future<void> _ensureLoaded() async {
    _cache ??= await _source.loadExercises();
  }

  Future<List<String>> getCategories() async {
    await _ensureLoaded();
    return _cache!.keys.toList();
  }

  Future<List<Exercise>> getExercisesByCategory(String category) async {
    await _ensureLoaded();
    return _cache![category] ?? [];
  }

  Future<Exercise?> getExerciseByName(String name) async {
    await _ensureLoaded();

    for (final exercises in _cache!.values) {
      for (final exercise in exercises) {
        if (exercise.name.toLowerCase() == name.toLowerCase()) {
          return exercise;
        }
      }
    }
    return null;
  }

  Future<List<Exercise>> getAllExercises() async {
    await _ensureLoaded();
    return _cache!.values.expand((e) => e).toList();
  }
}