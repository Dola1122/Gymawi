
import 'package:flutter/material.dart';

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
