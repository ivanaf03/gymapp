// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routines_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(routines)
const routinesProvider = RoutinesProvider._();

final class RoutinesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Routine>>,
          List<Routine>,
          FutureOr<List<Routine>>
        >
    with $FutureModifier<List<Routine>>, $FutureProvider<List<Routine>> {
  const RoutinesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routinesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routinesHash();

  @$internal
  @override
  $FutureProviderElement<List<Routine>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Routine>> create(Ref ref) {
    return routines(ref);
  }
}

String _$routinesHash() => r'8a0e42978f6b25b78ea5b05f81a819dc35edd346';
