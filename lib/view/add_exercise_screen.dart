import 'package:flutter/material.dart';
import 'package:gymawi/model/exercise_model.dart';
import 'package:gymawi/view/widgets/custom_buttons.dart';
import 'package:flutter_gif/flutter_gif.dart';

class AddExerciseScreen extends StatelessWidget {
  AddExerciseScreen({Key? key}) : super(key: key);

  List<ExerciseModel> exercises = [
    ExerciseModel.fromJson(
      {
        "bodyPart": "waist",
        "equipment": "body weight",
        "gifUrl": "https://v2.exercisedb.io/image/8IGkX3BP09vEfS",
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
      "gifUrl": "https://v2.exercisedb.io/image/4jwdzlNrVFnC9C",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Exercise"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.black.withOpacity(0.1),
              ), // Add padding around the search bar
              // Use a Material design search bar
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search For Exercise',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    // Add a clear button to the search bar
                    suffixIcon:
                        IconButton(icon: Icon(Icons.clear), onPressed: () {}),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: WhiteCustomButton(
                    width: double.maxFinite,
                    text: "All Equipments",
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: WhiteCustomButton(
                    text: "All Muscles",
                    width: double.maxFinite,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 18,
            ),
            ExerciseWidget(
              title: "Lat Pulldown",
              subtitle: "Lats",
              imageUrl:
                  "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
            ),
            Divider(
              thickness: 1.5,
            ),
            ExerciseWidget(
              title: "Lat Pulldown",
              subtitle: "Lats",
              imageUrl:
                  "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
            ),
            Divider(
              thickness: 1.5,
            ),
            ExerciseWidget(
              title: "Lat Pulldown",
              subtitle: "Lats",
              imageUrl:
                  "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
            ),
            Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}

class ExerciseWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const ExerciseWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(
        width: 55,
        child: CircleAvatar(
          radius: 55, // Adjust the radius as needed
          backgroundImage: NetworkImage(
            "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a258b2108677535.5fc364926e4a7.gif",
          ),
        ),
      ),
      title: Text("Lat Pulldown"),
      subtitle: Text("Lats"),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.help_outline,
          color: Colors.blue,
        ),
      ),
    );
  }
}
