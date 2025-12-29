import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/data/json/models/exercise.dart';
import 'package:gymapp/features/exercises/providers/exercises_provider.dart';
import 'package:gymapp/features/exercises/providers/search_query_provider.dart';
import 'package:gymapp/features/exercises/providers/selected_category_provider.dart';

part 'filtered_exercises_provider.g.dart';

@riverpod
List<Exercise> filteredExercises(Ref ref) {
  final exercises = ref.watch(allExercisesProvider).value ?? [];

  final query = ref.watch(searchQueryProvider).toLowerCase();

  final category = ref.watch(selectedCategoryProvider);

  return exercises.where((e) {
    final matchesCategory = category == 'Todos' || e.muscleGroup == category;

    final matchesQuery = e.name.toLowerCase().contains(query);

    return matchesCategory && matchesQuery;
  }).toList();
}
