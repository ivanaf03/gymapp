import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/exercises_provider.dart';
import '../providers/filtered_exercises_provider.dart';
import '../widgets/exercise_search_bar.dart';
import '../widgets/category_filter.dart';
import '../widgets/exercise_card.dart';

class ExercisesScreen extends ConsumerWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncExercises = ref.watch(allExercisesProvider);
    final exercises = ref.watch(filteredExercisesProvider);

    return asyncExercises.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text(e.toString())),
      data: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              const ExerciseSearchBar(),
              const SizedBox(height: 16),
              const CategoryFilter(),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: exercises.length,
                  itemBuilder: (_, index) => ExerciseCard(exercises[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
