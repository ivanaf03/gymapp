import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/data/database/models/routine_exercise.dart';
import 'package:gymapp/features/routines/providers/routine_exercises_provider.dart';
import 'package:gymapp/features/routines/providers/update_routine_exercise_provider.dart';
import 'package:gymapp/features/routines/providers/delete_exercise_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RoutineExerciseItem extends ConsumerStatefulWidget {
  final RoutineExercise exercise;
  const RoutineExerciseItem({super.key, required this.exercise});

  @override
  ConsumerState<RoutineExerciseItem> createState() =>
      _RoutineExerciseItemState();
}

class _RoutineExerciseItemState extends ConsumerState<RoutineExerciseItem> {
  late final TextEditingController _setsController;
  late final TextEditingController _repsController;
  late final TextEditingController _weightController;

  @override
  void initState() {
    super.initState();
    _setsController = TextEditingController(
      text: widget.exercise.sets.toString(),
    );
    _repsController = TextEditingController(
      text: widget.exercise.reps.toString(),
    );
    _weightController = TextEditingController(
      text: widget.exercise.weight.toStringAsFixed(1),
    );
  }

  @override
  void dispose() {
    _setsController.dispose();
    _repsController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.exercise.exerciseName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: Icon(MdiIcons.trashCan, color: Colors.white),
                onPressed: () async {
                  final confirmed = await showDialog<bool>(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text('Eliminar ejercicio'),
                      content: const Text('¿Quieres eliminar este ejercicio?'),
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
                      .read(deleteExerciseProvider.notifier)
                      .delete(
                        id: widget.exercise.id!,
                        routineId: widget.exercise.routineId,
                      );

                  ref.invalidate(
                    routineExercisesProvider(widget.exercise.routineId),
                  );
                },
              ),
            ],
          ),

          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildFieldWithLabel(
                  _buildNumberField(_setsController),
                  'Series',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildFieldWithLabel(
                  _buildNumberField(_repsController),
                  'Repeticiones',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildFieldWithLabel(
                  _buildDecimalField(_weightController),
                  'Peso (kg)',
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: () async {
                await ref
                    .read(updateRoutineExerciseProvider.notifier)
                    .update(
                      id: widget.exercise.id!,
                      routineId: widget.exercise.routineId,
                      exerciseName: widget.exercise.exerciseName,
                      sets: int.tryParse(_setsController.text) ?? 0,
                      reps: int.tryParse(_repsController.text) ?? 0,
                      weight: double.tryParse(_weightController.text) ?? 0.0,
                    );

                ref.invalidate(routineExercisesProvider(widget.exercise.routineId));
              },
              icon: Icon(MdiIcons.contentSave),
              label: const Text('Guardar cambios'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade900,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFieldWithLabel(Widget field, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 10,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 6),
        field,
      ],
    );
  }

  Widget _buildNumberField(TextEditingController controller) => TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    style: const TextStyle(color: Colors.white),
    decoration: _inputDecoration(),
  );

  Widget _buildDecimalField(TextEditingController controller) => TextField(
    controller: controller,
    keyboardType: const TextInputType.numberWithOptions(decimal: true),
    style: const TextStyle(color: Colors.white),
    decoration: _inputDecoration(),
  );

  InputDecoration _inputDecoration() => InputDecoration(
    filled: true,
    fillColor: Colors.grey.shade900,
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  );
}
