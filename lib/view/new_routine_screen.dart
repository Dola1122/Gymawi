import 'package:flutter/material.dart';
import 'package:gymawi/view/widgets/routine_exercise_widget.dart';

import '../model/exercise_model.dart';
import '../utils/exercises_test.dart';

class NewRoutineScreen extends StatelessWidget {
  const NewRoutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Routine"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintText: 'Routine Title',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {},
                    )),
              ),
              Divider(
                color: Colors.black.withOpacity(0.2),
              ),
              SizedBox(
                height: 12,
              ),
              RoutineExerciseWidget(exercise: exercises[0]),
              RoutineExerciseWidget(exercise: exercises[0]),
            ],
          ),
        ),
      ),
    );
  }
}
