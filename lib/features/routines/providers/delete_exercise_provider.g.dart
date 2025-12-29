// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_exercise_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteExercise)
const deleteExerciseProvider = DeleteExerciseProvider._();

final class DeleteExerciseProvider
    extends $NotifierProvider<DeleteExercise, void> {
  const DeleteExerciseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteExerciseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteExerciseHash();

  @$internal
  @override
  DeleteExercise create() => DeleteExercise();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$deleteExerciseHash() => r'21e18391350160d12f82df58baf12b435631a2a6';

abstract class _$DeleteExercise extends $Notifier<void> {
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
