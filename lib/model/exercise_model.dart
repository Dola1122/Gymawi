class ExerciseModel {
  final String bodyPart;
  final String equipment;
  final String gifUrl;
  final String id;
  final String name;
  final String target;
  final List<String> secondaryMuscles;
  final List<String> instructions;

  ExerciseModel({
    required this.bodyPart,
    required this.equipment,
    required this.gifUrl,
    required this.id,
    required this.name,
    required this.target,
    required this.secondaryMuscles,
    required this.instructions,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
      bodyPart: json['bodyPart'],
      equipment: json['equipment'],
      gifUrl: json['gifUrl'],
      id: json['id'],
      name: json['name'],
      target: json['target'],
      secondaryMuscles: json['secondaryMuscles'].cast<String>(),
      instructions: json['instructions'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bodyPart'] = bodyPart;
    data['equipment'] = equipment;
    data['gifUrl'] = gifUrl;
    data['id'] = id;
    data['name'] = name;
    data['target'] = target;
    data['secondaryMuscles'] = secondaryMuscles;
    data['instructions'] = instructions;
    return data;
  }
}
