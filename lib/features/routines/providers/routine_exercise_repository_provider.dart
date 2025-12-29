import 'package:gymapp/data/database/repository/routine_exercise_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_exercise_repository_provider.g.dart';

@riverpod
RoutineExerciseRepository routineExerciseRepository(Ref ref) {
  return RoutineExerciseRepository();
}
