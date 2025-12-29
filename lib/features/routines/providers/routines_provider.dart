import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:gymapp/data/database/models/routine.dart';
import 'package:gymapp/features/routines/providers/routine_repository_provider.dart';

part 'routines_provider.g.dart';

@riverpod
Future<List<Routine>> routines(Ref ref) {
  return ref.watch(routineRepositoryProvider).getRoutines();
}
