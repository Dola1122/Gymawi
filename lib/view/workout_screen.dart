import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Workout"),centerTitle: true,),
      body: Container(padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text("Quick Start"),
            ElevatedButton(onPressed: (){},child: Text("Start Empty Workout"),),
            Text("Routines"),
            ElevatedButton(onPressed: (){},child: Text("New Routine"),),
            Text("Saved Routines"),
          ],),
      )
      ,
    );
  }
}
