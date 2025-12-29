import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gymapp/features/landing/controllers/get_started_button_controller.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => GetStartedButtonController.navigateToHomeScreen(context),
      icon: Icon(MdiIcons.arrowCollapseRight),
      label: const Text('Empezar la rutina'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
