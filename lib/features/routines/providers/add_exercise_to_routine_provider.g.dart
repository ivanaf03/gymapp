// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_exercise_to_routine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddExerciseToRoutine)
const addExerciseToRoutineProvider = AddExerciseToRoutineProvider._();

final class AddExerciseToRoutineProvider
    extends $NotifierProvider<AddExerciseToRoutine, void> {
  const AddExerciseToRoutineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addExerciseToRoutineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addExerciseToRoutineHash();

  @$internal
  @override
  AddExerciseToRoutine create() => AddExerciseToRoutine();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$addExerciseToRoutineHash() =>
    r'fa3c95d9a3f732e9b07772b31a83a1d1a1ed2b5e';

abstract class _$AddExerciseToRoutine extends $Notifier<void> {
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
