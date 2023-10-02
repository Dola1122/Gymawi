import 'package:flutter/material.dart';

class WhiteCustomButton extends StatelessWidget {
  WhiteCustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.icon,
  });

  double width;
  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        fixedSize: Size(width, 42),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        side: BorderSide(
          color: Colors.black.withOpacity(0.15),
          width: 1.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        elevation: 0,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
