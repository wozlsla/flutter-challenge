/* https://imgur.com/a4UN9mu */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_challenge/widgets/calendar.dart';
import 'package:flutter_challenge/widgets/todo/task.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        'https://github.com/user-attachments/assets/a6421c92-2897-4991-9011-23d8e829e76a',
                      ),
                      backgroundColor: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/add-thick.svg',
                        width: 40,
                        height: 40,
                        colorFilter: ColorFilter.mode(
                          Colors.white, // 원하는 색상
                          BlendMode.srcIn, // 색상을 적용하는 방식
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 35,
                  ),
                  child: Calendar(),
                ),
                SizedBox(
                  height: 20,
                ),
                Task(
                  from: "11:30",
                  to: "12:20",
                  participants: ["ALEX", "HELENA", "NANA"],
                  backgroundColor: 0xffFEF754,
                  title: "DESIGN\nMETTING",
                ),
                SizedBox(
                  height: 10,
                ),
                Task(
                  from: "12:35",
                  to: "14:10",
                  participants: [
                    "ME",
                    "RICHARD",
                    "CIRY",
                    "MORE",
                    "5",
                    "6",
                    "7"
                  ],
                  backgroundColor: 0xff9C6BCE,
                  title: "DAILY\nPROJECT",
                ),
                SizedBox(
                  height: 10,
                ),
                Task(
                  from: "15:00",
                  to: "16:30",
                  participants: ["DEN", "NANA", "MARK"],
                  backgroundColor: 0xffBBEE4B,
                  title: "WEEKLY\nPLANNING",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
