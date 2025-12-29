// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_exercise_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(routineExerciseRepository)
const routineExerciseRepositoryProvider = RoutineExerciseRepositoryProvider._();

final class RoutineExerciseRepositoryProvider
    extends
        $FunctionalProvider<
          RoutineExerciseRepository,
          RoutineExerciseRepository,
          RoutineExerciseRepository
        >
    with $Provider<RoutineExerciseRepository> {
  const RoutineExerciseRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routineExerciseRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routineExerciseRepositoryHash();

  @$internal
  @override
  $ProviderElement<RoutineExerciseRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RoutineExerciseRepository create(Ref ref) {
    return routineExerciseRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RoutineExerciseRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RoutineExerciseRepository>(value),
    );
  }
}

String _$routineExerciseRepositoryHash() =>
    r'507a6e87246bad4f4ae98b59a6447a0f409ed613';
