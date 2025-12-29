import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:gymapp/data/json/models/exercise.dart';

class ExerciseSource {
  static const String _path = 'assets/data/exercises.json';

  Future<Map<String, List<Exercise>>> loadExercises() async {
    final jsonString = await rootBundle.loadString(_path);
    final Map<String, dynamic> decoded = json.decode(jsonString);

    final Map<String, List<Exercise>> result = {};

    for (final entry in decoded.entries) {
      final muscleGroup = entry.key;
      final List exercisesJson = entry.value;

      result[muscleGroup] = exercisesJson
          .map((e) => Exercise.fromJson(e, muscleGroup))
          .toList();
    }

    return result;
  }
}
