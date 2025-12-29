import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/features/routines/providers/routine_exercise_repository_provider.dart';

part 'add_exercise_to_routine_provider.g.dart';

@riverpod
class AddExerciseToRoutine extends _$AddExerciseToRoutine {
  @override
  void build() {}

  Future<void> add({
    required int routineId,
    required String exerciseName,
  }) async {
    await ref
        .read(routineExerciseRepositoryProvider)
        .addExerciseToRoutine(routineId, exerciseName);
  }
}
