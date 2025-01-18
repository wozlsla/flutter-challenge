/* https://imgur.com/a4UN9mu */
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                    SvgPicture.asset(
                      'assets/icons/add-thick.svg',
                      width: 40,
                      height: 40,
                      colorFilter: ColorFilter.mode(
                        Colors.white, // 원하는 색상
                        BlendMode.srcIn, // 색상을 적용하는 방식
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 35,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MONDAY 16",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "TODAY",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "•",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffB22580),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "17",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(width: 20), // 너비 간격 추가
                                  ),
                                  TextSpan(
                                    text: "18",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(width: 20), // 너비 간격 추가
                                  ),
                                  TextSpan(
                                    text: "19",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(width: 20), // 너비 간격 추가
                                  ),
                                  TextSpan(
                                    text: "20",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFEF754),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 10, 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '11',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '30',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/line-ver.svg',
                              // width: 10,
                              height: 35,
                              colorFilter: ColorFilter.mode(
                                Colors.black, // 원하는 색상
                                BlendMode.srcIn, // 색상을 적용하는 방식
                              ),
                            ),
                            Text(
                              '12',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '20',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
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
                              'DESIGN',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              'MEETING',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  'ALEX',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'HELENA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'NANA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Second Card
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9C6BCE),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 10, 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '12',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '35',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/line-ver.svg',
                              height: 35,
                              colorFilter: ColorFilter.mode(
                                Colors.black, // 원하는 색상
                                BlendMode.srcIn, // 색상을 적용하는 방식
                              ),
                            ),
                            Text(
                              '14',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '10',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
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
                              'DAILY',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              'PROJECT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  'ME',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'RICHARD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'CIRY',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  '+4',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Third Card
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffBBEE4B),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 10, 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '15',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '00',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/line-ver.svg',
                              height: 35,
                              colorFilter: ColorFilter.mode(
                                Colors.black, // 원하는 색상
                                BlendMode.srcIn, // 색상을 적용하는 방식
                              ),
                            ),
                            Text(
                              '16',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              '30',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
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
                              'WEEKLY',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              'PLANNING',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  'DEN',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'NANA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'MARK',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  '+4',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
