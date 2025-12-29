import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/features/routines/providers/routines_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gymapp/features/routines/providers/create_routine_provider.dart';

class CreateRoutineModal extends ConsumerStatefulWidget {
  const CreateRoutineModal({super.key});

  @override
  ConsumerState<CreateRoutineModal> createState() => _CreateRoutineModalState();
}

class _CreateRoutineModalState extends ConsumerState<CreateRoutineModal> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  'Nueva rutina',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.4,
                  ),
                ),
                Icon(MdiIcons.dumbbell, size: 28),
              ],
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: _nameController,
              hint: 'Nombre de la rutina',
              icon: MdiIcons.clipboardTextOutline,
            ),
            const SizedBox(height: 12),
            _buildTextField(
              controller: _descriptionController,
              hint: 'Descripción',
              icon: MdiIcons.text,
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () async {
                await ref
                    .read(createRoutineProvider.notifier)
                    .create(
                      name: _nameController.text,
                      description: _descriptionController.text,
                    );
                    
                if (!context.mounted) return;
                ref.invalidate(routinesProvider);

                Navigator.pop(context);
              },
              icon: Icon(MdiIcons.contentSave),
              label: const Text('Guardar rutina'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade900,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 14,
                ),
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: Icon(icon, color: Colors.grey.shade400),
        filled: true,
        fillColor: Colors.grey.shade900,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
