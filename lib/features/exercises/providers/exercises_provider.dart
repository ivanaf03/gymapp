import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/data/json/models/exercise.dart';
import 'package:gymapp/features/exercises/providers/exercise_repository_provider.dart';

part 'exercises_provider.g.dart';

@riverpod
Future<List<Exercise>> allExercises(Ref ref) async {
  final repo = ref.watch(exerciseRepositoryProvider);
  return repo.getAllExercises();
}
