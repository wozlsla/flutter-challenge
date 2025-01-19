import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_challenge/widgets/todo/time.dart';

class Task extends StatelessWidget {
  final String from;
  final String to;
  final List<String> participants;
  final int backgroundColor;
  final String title;

  const Task({
    super.key,
    required this.from,
    required this.to,
    required this.participants,
    required this.backgroundColor,
    required this.title,
  });

  String titleFirst(String title) {
    return title.split("\n")[0];
  }

  String titleSecond(String title) {
    return title.split("\n")[1];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(backgroundColor),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 40, 10, 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Time(
                  time: from,
                ),
                SvgPicture.asset(
                  'assets/icons/line-ver.svg',
                  height: 35,
                  colorFilter: ColorFilter.mode(
                    Colors.black, // 원하는 색상
                    BlendMode.srcIn, // 색상을 적용하는 방식
                  ),
                ),
                Time(
                  time: to,
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleFirst(title),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 0.8,
                  ),
                ),
                Text(
                  titleSecond(title),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 0.8,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    for (final participant in participants.take(3)) ...[
                      Text(
                        participant,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: participant == "ME"
                              ? Colors.black
                              : Colors.black38,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                    participants.length > 3
                        ? Text(
                            "+${participants.length - 3}",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
