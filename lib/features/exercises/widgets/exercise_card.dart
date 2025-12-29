import 'package:flutter/material.dart';
import 'package:gymapp/data/json/models/exercise.dart';
import 'package:gymapp/features/exercises/widgets/exercise_image_dialog.dart';
import 'package:gymapp/features/routines/widgets/add_exercise_to_routine_modal.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard(this.exercise, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // La card principal
        Container(
          margin: const EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.4),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // Imagen
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierColor: Colors.black.withValues(alpha: 0.8),
                      builder: (_) => ExerciseImageDialog(exercise),
                    );
                  },
                  child: Hero(
                    tag: exercise.image,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        exercise.image,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                // Texto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        exercise.muscleGroup,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        exercise.description,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 13,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: 6,
          right: 6,
          child: GestureDetector(
            onTap: () => _openAddExerciseToRoutineModal(context),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade800,
              ),
              padding: const EdgeInsets.all(6),
              child: Icon(MdiIcons.plus, size: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  void _openAddExerciseToRoutineModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AddExerciseToRoutineModal(exerciseName: exercise.name),
    );
  }
}
