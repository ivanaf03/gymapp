// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_routine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteRoutine)
const deleteRoutineProvider = DeleteRoutineProvider._();

final class DeleteRoutineProvider
    extends $NotifierProvider<DeleteRoutine, void> {
  const DeleteRoutineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteRoutineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteRoutineHash();

  @$internal
  @override
  DeleteRoutine create() => DeleteRoutine();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$deleteRoutineHash() => r'b3492323b6943705a3128a649093cd60c73b7b98';

abstract class _$DeleteRoutine extends $Notifier<void> {
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
