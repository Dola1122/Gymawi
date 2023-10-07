import 'package:flutter/material.dart';
import '../../model/exercise_model.dart';

class RoutineExerciseWidget extends StatelessWidget {
  RoutineExerciseWidget({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  final ExerciseModel exercise;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                exercise.gifUrl,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              exercise.name,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        TextField(
          style: TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: 'Add note here',
            border: InputBorder.none,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.timer_outlined,
              color: Colors.blue,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Rest Timer : 1min 30s",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SET",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "KG",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Reps",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),

            // Use a function to generate the sets and reps rows dynamically
            buildSetsRepsRow("1"),
            buildSetsRepsRow("2"),
            buildSetsRepsRow("3"),

            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Add Set"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(double.maxFinite, 30),
                backgroundColor: Colors.blue.shade300,
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ],
    );
  }

  // Function to generate a row for sets and reps
  Widget buildSetsRepsRow(String setNumber) {
    return Column(
      children: [
        const Divider(height: 4),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(setNumber),
                flex: 12,
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(hintText: '0', border: InputBorder.none),
                ),
                flex: 12,
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(hintText: '0', border: InputBorder.none),
                ),
                flex: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
