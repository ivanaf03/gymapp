// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_routine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateRoutine)
const createRoutineProvider = CreateRoutineProvider._();

final class CreateRoutineProvider
    extends $NotifierProvider<CreateRoutine, void> {
  const CreateRoutineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createRoutineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createRoutineHash();

  @$internal
  @override
  CreateRoutine create() => CreateRoutine();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$createRoutineHash() => r'51b68ae8e663d2865ba5d5da2d719d7623d4c644';

abstract class _$CreateRoutine extends $Notifier<void> {
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
