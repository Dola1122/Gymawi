import 'package:flutter/material.dart';

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
