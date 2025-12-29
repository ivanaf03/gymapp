// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_routine_exercise_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateRoutineExercise)
const updateRoutineExerciseProvider = UpdateRoutineExerciseProvider._();

final class UpdateRoutineExerciseProvider
    extends $NotifierProvider<UpdateRoutineExercise, void> {
  const UpdateRoutineExerciseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateRoutineExerciseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateRoutineExerciseHash();

  @$internal
  @override
  UpdateRoutineExercise create() => UpdateRoutineExercise();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$updateRoutineExerciseHash() =>
    r'c7aae1366b71dc72e677dea8682f503c00f70403';

abstract class _$UpdateRoutineExercise extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
