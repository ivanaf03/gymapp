import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/data/database/models/routine.dart';
import 'package:gymapp/features/routines/providers/routine_repository_provider.dart';

part 'create_routine_provider.g.dart';

@riverpod
class CreateRoutine extends _$CreateRoutine {
  @override
  void build() {}

  Future<void> create({
    required String name,
    required String description,
  }) async {
    final routine = Routine(name: name, description: description);
    await ref.read(routineRepositoryProvider).insertRoutine(routine);
  }
}
