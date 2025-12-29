// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_exercises_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(routineExercises)
const routineExercisesProvider = RoutineExercisesFamily._();

final class RoutineExercisesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RoutineExercise>>,
          List<RoutineExercise>,
          FutureOr<List<RoutineExercise>>
        >
    with
        $FutureModifier<List<RoutineExercise>>,
        $FutureProvider<List<RoutineExercise>> {
  const RoutineExercisesProvider._({
    required RoutineExercisesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'routineExercisesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$routineExercisesHash();

  @override
  String toString() {
    return r'routineExercisesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<RoutineExercise>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RoutineExercise>> create(Ref ref) {
    final argument = this.argument as int;
    return routineExercises(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RoutineExercisesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$routineExercisesHash() => r'4792a05c5e87e30cdd946d3eae030a110fae7e04';

final class RoutineExercisesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<RoutineExercise>>, int> {
  const RoutineExercisesFamily._()
    : super(
        retry: null,
        name: r'routineExercisesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RoutineExercisesProvider call(int routineId) =>
      RoutineExercisesProvider._(argument: routineId, from: this);

  @override
  String toString() => r'routineExercisesProvider';
}
