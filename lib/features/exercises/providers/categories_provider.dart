import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/features/exercises/providers/exercises_provider.dart';

part 'categories_provider.g.dart';

@riverpod
List<String> categories(Ref ref) {
  final exercises = ref.watch(allExercisesProvider).value ?? [];

  final set = exercises.map((e) => e.muscleGroup).toSet();

  return ['Todos', ...set];
}
