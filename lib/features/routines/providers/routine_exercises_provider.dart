import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/data/database/models/routine_exercise.dart';
import 'package:gymapp/features/routines/providers/routine_exercise_repository_provider.dart';

part 'routine_exercises_provider.g.dart';

@riverpod
Future<List<RoutineExercise>> routineExercises(Ref ref, int routineId) {
  return ref
      .watch(routineExerciseRepositoryProvider)
      .getRoutineExercises(routineId);
}
