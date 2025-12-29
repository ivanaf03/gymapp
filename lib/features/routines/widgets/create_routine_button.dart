import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gymapp/features/routines/widgets/create_routine_modal.dart';

class CreateRoutineButton extends StatelessWidget {
  const CreateRoutineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => _openCreateRoutineModal(context),
      icon: Icon(MdiIcons.plus),
      label: const Text('Crear rutina'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }

  void _openCreateRoutineModal(BuildContext context) {
    showDialog(context: context, builder: (_) => const CreateRoutineModal());
  }
}
