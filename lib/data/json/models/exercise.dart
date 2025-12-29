class Exercise {
  final String name;
  final String description;
  final String image;
  final String muscleGroup;

  Exercise({
    required this.name,
    required this.description,
    required this.image,
    required this.muscleGroup,
  });

  factory Exercise.fromJson(Map<String, dynamic> json, String muscleGroup) {
    return Exercise(
      name: json['name'],
      description: json['description'],
      image: json['image'],
      muscleGroup: muscleGroup,
    );
  }
}
