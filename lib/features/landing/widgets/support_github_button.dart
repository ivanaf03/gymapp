import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gymapp/features/landing/controllers/support_github_button_controller.dart';

class SupportGithubButton extends StatelessWidget {
  const SupportGithubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: SupportGithubButtonController.openGithubUrl,
      icon: Icon(MdiIcons.github),
      label: const Text('Apoyar al creador'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
