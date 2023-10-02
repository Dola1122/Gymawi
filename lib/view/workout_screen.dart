import 'package:flutter/material.dart';
import 'package:gymawi/view/widgets/custom_buttons.dart';

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

class RoutineWidget extends StatelessWidget {
  RoutineWidget({
    super.key,
    required this.routineTitle,
    required this.routineDescription,
  });

  String routineTitle;
  String routineDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.black.withOpacity(0.15),
            width: 1.5,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                routineTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.blue,
                    )),
              )
            ],
          ),
          Text(
            routineDescription,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(0.3),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.maxFinite, 35)),
              onPressed: () {},
              child: Text(
                "Start Routine",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
