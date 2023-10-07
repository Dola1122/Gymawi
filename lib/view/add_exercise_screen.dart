import 'package:flutter/material.dart';
import 'package:gymawi/model/exercise_model.dart';
import 'package:gymawi/view/widgets/custom_buttons.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:gymawi/view/widgets/exercise_widget.dart';

class AddExerciseScreen extends StatelessWidget {
  AddExerciseScreen({Key? key}) : super(key: key);

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
