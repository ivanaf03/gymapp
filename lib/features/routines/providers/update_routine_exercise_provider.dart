import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/features/routines/providers/routine_exercise_repository_provider.dart';

part 'update_routine_exercise_provider.g.dart';

@riverpod
class UpdateRoutineExercise extends _$UpdateRoutineExercise {
  @override
  void build() {}

  Future<void> update({
    required int id,
    required String exerciseName,
    required int sets,
    required int reps,
    required double weight,
    required int routineId,
  }) async {
    await ref
        .read(routineExerciseRepositoryProvider)
        .updateRoutineExercise(id, exerciseName, sets, reps, weight);
  }
}
