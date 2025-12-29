import 'package:flutter/material.dart';
import 'package:gymapp/features/landing/controllers/exercise_images_website_controller.dart';

class ExerciseImagesWebsite extends StatelessWidget {
  const ExerciseImagesWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ExerciseImagesWebsiteController.openExerciseImagesWebsiteUrl,
      child: const Text(
        'Todas las imágenes de los ejercicios fueron sacadas de StrengthLevel',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
        ),
      ),
    );
  }
}
