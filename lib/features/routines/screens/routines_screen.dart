import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymapp/features/routines/providers/routines_provider.dart';
import 'package:gymapp/features/routines/widgets/routine_card.dart';
import 'package:gymapp/features/routines/widgets/create_routine_button.dart';

class RoutinesScreen extends ConsumerWidget {
  const RoutinesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncRoutines = ref.watch(routinesProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              const Center(child: CreateRoutineButton()),
              const SizedBox(height: 24),

              Expanded(
                child: asyncRoutines.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (e, _) => Center(child: Text(e.toString())),
                  data: (routines) {
                    if (routines.isEmpty) {
                      return Center(
                        child: Text(
                          'Empieza añadiendo una nueva rutina',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: routines.length,
                      itemBuilder: (_, index) => RoutineCard(routine: routines[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
