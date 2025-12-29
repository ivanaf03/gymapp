import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/features/routines/providers/routine_exercises_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gymapp/features/routines/providers/routines_provider.dart';
import 'package:gymapp/features/routines/providers/add_exercise_to_routine_provider.dart';

class AddExerciseToRoutineModal extends ConsumerStatefulWidget {
  final String exerciseName;
  const AddExerciseToRoutineModal({super.key, required this.exerciseName});

  @override
  ConsumerState<AddExerciseToRoutineModal> createState() =>
      _AddExerciseToRoutineModalState();
}

class _AddExerciseToRoutineModalState
    extends ConsumerState<AddExerciseToRoutineModal> {
  @override
  Widget build(BuildContext context) {
    final asyncRoutines = ref.watch(routinesProvider);

    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Añadir ejercicio',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.4,
                  ),
                ),
                Icon(MdiIcons.dumbbell, size: 28),
              ],
            ),
            const SizedBox(height: 16),

            asyncRoutines.when(
              loading: () => const Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(),
              ),
              error: (e, _) => Text(e.toString()),
              data: (routines) {
                if (routines.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Primero debes crear una rutina'),
                  );
                }

                return Column(
                  children: [
                    for (final routine in routines)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (routine.id == null) return;

                            await ref
                                .read(addExerciseToRoutineProvider.notifier)
                                .add(
                                  routineId: routine.id!,
                                  exerciseName: widget.exerciseName,
                                );

                            if (!context.mounted) return;

                            ref.invalidate(
                              routineExercisesProvider(routine.id!),
                            );

                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade900,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 14,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text(routine.name), Icon(MdiIcons.plus)],
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
