class RoutineExercise {
  final int? id;
  final int routineId;
  final String exerciseName;
  final int sets;
  final int reps;
  final double weight;

  RoutineExercise({
    this.id,
    required this.routineId,
    required this.exerciseName,
    required this.sets,
    required this.reps,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'routine_id': routineId,
      'exercise_name': exerciseName,
      'sets': sets,
      'reps': reps, 
      'weight': weight,
    };
  }

  factory RoutineExercise.fromMap(Map<String, dynamic> map) {
    return RoutineExercise(
      id: map['id'],
      routineId: map['routine_id'] ?? 0,
      exerciseName: map['exercise_name'] ?? '',
      sets: map['sets'] ?? 0,
      reps: map['reps'] ?? 0,
      weight: (map['weight'] ?? 0).toDouble(),
    );
  }
}
