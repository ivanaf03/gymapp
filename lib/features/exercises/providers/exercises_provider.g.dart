// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercises_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(allExercises)
const allExercisesProvider = AllExercisesProvider._();

final class AllExercisesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Exercise>>,
          List<Exercise>,
          FutureOr<List<Exercise>>
        >
    with $FutureModifier<List<Exercise>>, $FutureProvider<List<Exercise>> {
  const AllExercisesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allExercisesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allExercisesHash();

  @$internal
  @override
  $FutureProviderElement<List<Exercise>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Exercise>> create(Ref ref) {
    return allExercises(ref);
  }
}

String _$allExercisesHash() => r'fbaddb71fa1e5cd26099f06aadf8729672ef3269';
