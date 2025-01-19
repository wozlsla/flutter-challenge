import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String time;

  const Time({
    super.key,
    required this.time,
  });

  String hour(String time) {
    return time.split(":")[0];
  }

  String minute(String time) {
    return time.split(":")[1];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 4,
        ),
        Text(
          hour(time),
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            height: 0.9,
          ),
        ),
        Text(
          minute(time),
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            height: 0.9,
          ),
        ),
      ],
    );
  }
}
