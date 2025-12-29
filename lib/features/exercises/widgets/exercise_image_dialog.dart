import 'package:flutter/material.dart';
import 'package:gymapp/data/json/models/exercise.dart';

class ExerciseImageDialog extends StatelessWidget {
  final Exercise exercise;

  const ExerciseImageDialog(this.exercise, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Center(
        child: Hero(
          tag: exercise.image,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              exercise.image,
              width: MediaQuery.of(context).size.width * 0.85,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
