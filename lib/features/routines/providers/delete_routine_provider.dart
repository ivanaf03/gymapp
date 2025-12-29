import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/features/routines/providers/routine_repository_provider.dart';

part 'delete_routine_provider.g.dart';

@riverpod
class DeleteRoutine extends _$DeleteRoutine {
  @override
  void build() {}

  Future<void> delete(int id) async {
    await ref.read(routineRepositoryProvider).deleteRoutine(id);
  }
}
