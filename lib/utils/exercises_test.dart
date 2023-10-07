import '../model/exercise_model.dart';

List<ExerciseModel> exercises = [
  ExerciseModel.fromJson(
    {
      "bodyPart": "waist",
      "equipment": "body weight",
      "gifUrl":
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
      "id": "0001",
      "name": "3/4 sit-up",
      "target": "abs",
      "secondaryMuscles": ["hip flexors", "lower back"],
      "instructions": [
        "Lie flat on your back with your knees bent and feet flat on the ground.",
        "Place your hands behind your head with your elbows pointing outwards.",
        "Engaging your abs, slowly lift your upper body off the ground, curling forward until your torso is at a 45-degree angle.",
        "Pause for a moment at the top, then slowly lower your upper body back down to the starting position.",
        "Repeat for the desired number of repetitions."
      ]
    },
  ),
  ExerciseModel.fromJson({
    "bodyPart": "back",
    "equipment": "cable",
    "gifUrl":
        "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
    "id": "0007",
    "name": "alternate lateral pulldown",
    "target": "lats",
    "secondaryMuscles": ["biceps", "rhomboids"],
    "instructions": [
      "Sit on the cable machine with your back straight and feet flat on the ground.",
      "Grasp the handles with an overhand grip, slightly wider than shoulder-width apart.",
      "Lean back slightly and pull the handles towards your chest, squeezing your shoulder blades together.",
      "Pause for a moment at the peak of the movement, then slowly release the handles back to the starting position.",
      "Repeat for the desired number of repetitions."
    ]
  }),
];
