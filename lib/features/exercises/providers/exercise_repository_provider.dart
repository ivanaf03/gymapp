import 'package:gymapp/data/json/repository/exercise_repository.dart';
import 'package:gymapp/data/json/sources/exercise_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exercise_repository_provider.g.dart';

@riverpod
ExerciseRepository exerciseRepository(Ref ref) {
  return ExerciseRepository(ExerciseSource());
}
