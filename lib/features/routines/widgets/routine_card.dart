import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/data/database/models/routine.dart';
import 'package:gymapp/features/routines/providers/routines_provider.dart';
import 'package:gymapp/features/routines/widgets/routine_exercise_item.dart';
import 'package:gymapp/features/routines/providers/routine_exercises_provider.dart';
import 'package:gymapp/features/routines/providers/delete_routine_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RoutineCard extends ConsumerWidget {
  final Routine routine;
  const RoutineCard({super.key, required this.routine});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  routine.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  icon: Icon(MdiIcons.trashCan, color: Colors.white),
                  onPressed: () async {
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text('Eliminar rutina'),
                        content: const Text(
                          'Se eliminarán también todos los ejercicios.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: const Text(
                              'Cancelar',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: const Text(
                              'Eliminar',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                    if (confirmed != true) return;

                    await ref
                        .read(deleteRoutineProvider.notifier)
                        .delete(routine.id!);

                    ref.invalidate(routinesProvider);
                  },
                ),
              ],
            ),

            const SizedBox(height: 6),
            if (routine.description.isNotEmpty)
              Text(
                routine.description,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
              ),

            const SizedBox(height: 12),
            _ExercisesList(routineId: routine.id!),
          ],
        ),
      ),
    );
  }
}

class _ExercisesList extends ConsumerWidget {
  final int routineId;
  const _ExercisesList({required this.routineId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncExercises = ref.watch(routineExercisesProvider(routineId));

    return asyncExercises.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) =>
          Text(e.toString(), style: const TextStyle(color: Colors.red)),
      data: (items) {
        return Column(
          children: [
            for (final ex in items) ...[
              RoutineExerciseItem(key: ValueKey(ex.id!), exercise: ex),
              const SizedBox(height: 10),
            ],
          ],
        );
      },
    );
  }
}
