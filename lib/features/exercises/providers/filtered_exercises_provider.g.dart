// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_exercises_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(filteredExercises)
const filteredExercisesProvider = FilteredExercisesProvider._();

final class FilteredExercisesProvider
    extends $FunctionalProvider<List<Exercise>, List<Exercise>, List<Exercise>>
    with $Provider<List<Exercise>> {
  const FilteredExercisesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredExercisesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredExercisesHash();

  @$internal
  @override
  $ProviderElement<List<Exercise>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Exercise> create(Ref ref) {
    return filteredExercises(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Exercise> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Exercise>>(value),
    );
  }
}

String _$filteredExercisesHash() => r'7cf7587cdc180095ff6700882eb68a62feb8de7f';
