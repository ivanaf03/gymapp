import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/features/exercises/providers/categories_provider.dart';
import 'package:gymapp/features/exercises/providers/selected_category_provider.dart';
import 'package:gymapp/features/exercises/providers/category_counts_provider.dart';

class CategoryFilter extends ConsumerWidget {
  const CategoryFilter({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);
    final selected = ref.watch(selectedCategoryProvider);
    final counts = ref.watch(categoryCountsProvider);

    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, index) {
          final category = categories[index];
          final isSelected = category == selected;
          return ChoiceChip(
            label: Text(
              "$category (${counts[category] ?? 0})",
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            showCheckmark: false,
            selected: isSelected,
            onSelected: (_) {
              ref.read(selectedCategoryProvider.notifier).select(category);
            },
            selectedColor: Colors.white,
            backgroundColor: Colors.grey.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          );
        },
      ),
    );
  }
}
