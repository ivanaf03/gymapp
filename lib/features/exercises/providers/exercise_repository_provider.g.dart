// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(exerciseRepository)
const exerciseRepositoryProvider = ExerciseRepositoryProvider._();

final class ExerciseRepositoryProvider
    extends
        $FunctionalProvider<
          ExerciseRepository,
          ExerciseRepository,
          ExerciseRepository
        >
    with $Provider<ExerciseRepository> {
  const ExerciseRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'exerciseRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$exerciseRepositoryHash();

  @$internal
  @override
  $ProviderElement<ExerciseRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExerciseRepository create(Ref ref) {
    return exerciseRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExerciseRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExerciseRepository>(value),
    );
  }
}

String _$exerciseRepositoryHash() =>
    r'a297b7cccc818c82ed58c87670ce0a58185493a4';
