import 'package:gymapp/data/database/repository/routine_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_repository_provider.g.dart';

@riverpod
RoutineRepository routineRepository(Ref ref) {
  return RoutineRepository();
}
