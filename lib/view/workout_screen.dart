import 'package:flutter/material.dart';
import 'package:gymawi/view/widgets/custom_buttons.dart';
import 'package:gymawi/view/widgets/routine_widget.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workout"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quick Start",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              WhiteCustomButton(
                width: double.maxFinite,
                icon: Icons.not_started_outlined,
                text: "Start Empty Workout",
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Routines",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: WhiteCustomButton(
                      width: double.maxFinite,
                      icon: Icons.add,
                      text: "New Routine",
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: WhiteCustomButton(
                      text: "Explore",
                      width: double.maxFinite,
                      icon: Icons.content_paste_search_rounded,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Saved Routines",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(
                height: 16,
              ),
              RoutineWidget(
                routineTitle: "Chest & Back",
                routineDescription:
                    "Engaging your abs, slowly lift your upper body off the ground, curling forward until your torso is at a 45-degree angle.",
              ),
              SizedBox(
                height: 16,
              ),
              RoutineWidget(
                routineTitle: "Chest & Back",
                routineDescription:
                    "Engaging your abs, slowly lift your upper body off the ground, curling forward until your torso is at a 45-degree angle.",
              ),
              SizedBox(
                height: 16,
              ),
              RoutineWidget(
                routineTitle: "Chest & Back",
                routineDescription:
                    "Engaging your abs, slowly lift your upper body off the ground, curling forward until your torso is at a 45-degree angle.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
