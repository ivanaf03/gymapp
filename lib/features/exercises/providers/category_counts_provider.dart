import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/features/exercises/providers/exercises_provider.dart';
import 'package:gymapp/features/exercises/providers/search_query_provider.dart';

part 'category_counts_provider.g.dart';

@riverpod
Map<String, int> categoryCounts(Ref ref) {
  final exercises = ref.watch(allExercisesProvider).value ?? [];
  final query = ref.watch(searchQueryProvider).toLowerCase();

  final counts = <String, int>{};

  for (final e in exercises) {
    if (!e.name.toLowerCase().contains(query)) continue;

    counts[e.muscleGroup] = (counts[e.muscleGroup] ?? 0) + 1;
    counts['Todos'] = (counts['Todos'] ?? 0) + 1;
  }

  return counts;
}
