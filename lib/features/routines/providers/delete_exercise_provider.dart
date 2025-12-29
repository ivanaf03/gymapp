import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/features/routines/providers/routine_exercise_repository_provider.dart';

part 'delete_exercise_provider.g.dart';

@riverpod
class DeleteExercise extends _$DeleteExercise {
  @override
  void build() {}

  Future<void> delete({required int id, required int routineId}) async {
    await ref.read(routineExerciseRepositoryProvider).deleteRoutineExercise(id);
  }
}
