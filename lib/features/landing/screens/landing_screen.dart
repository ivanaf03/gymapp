import 'package:flutter/material.dart';
import 'package:gymapp/features/landing/widgets/exercise_images_website.dart';
import 'package:gymapp/features/landing/widgets/get_started_button.dart';
import 'package:gymapp/features/landing/widgets/support_github_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MdiIcons.dumbbell, color: Colors.white, size: 80),
                  const SizedBox(width: 12),
                  const Text(
                    'GymApp',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(MdiIcons.dumbbell, color: Colors.white, size: 80),
                ],
              ),
              const SizedBox(height: 60),
              Text(
                'My personal training app',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 160),
              Row(
                children: [
                  const SizedBox(width: 8),
                  Expanded(child: SupportGithubButton()),
                  const SizedBox(width: 26),
                  Expanded(child: GetStartedButton()),
                  const SizedBox(width: 8),
                ],
              ),
              const Spacer(),
              const ExerciseImagesWebsite(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
