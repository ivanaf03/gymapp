import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/features/exercises/providers/search_query_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExerciseSearchBar extends ConsumerWidget {
  const ExerciseSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      onChanged: (value) {
        ref.read(searchQueryProvider.notifier).setQuery(value);
      },
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Buscar ejercicio...',
        hintStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: Icon(MdiIcons.magnify, color: Colors.grey.shade400),
        filled: true,
        fillColor: Colors.grey.shade900,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
