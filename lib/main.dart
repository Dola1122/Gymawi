import 'package:flutter/material.dart';
import 'package:gymawi/view/add_exercise_screen.dart';
import 'package:gymawi/view/new_routine_screen.dart';
import 'package:gymawi/view/workout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: NewRoutineScreen(),
    );
  }
}
