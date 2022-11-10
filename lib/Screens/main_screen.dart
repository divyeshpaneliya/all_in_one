

import 'package:all_in_one/Screens/%20OTT_platforms/ott_view.dart';
import 'package:all_in_one/Screens/Educational_websites/e_view.dart';
import 'package:flutter/material.dart';

import 'Home_Screen/view/home.dart';

class Main_screen extends StatefulWidget {
  const Main_screen({Key? key}) : super(key: key);

  @override
  _Main_screenState createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  int i=0;

  List screen = const[home(), edu(), ott_v()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.gamepad,color: Colors.black,), label: "Html5\Games"),
            BottomNavigationBarItem(icon: Icon(Icons.cast_for_education,color: Colors.black,), label: "Educational\nWbsitee"),
            BottomNavigationBarItem(icon: Icon(Icons.send_to_mobile,color: Colors.black,), label: "Ott\nPlatform"),
          ],
          currentIndex: i,
          onTap: (position) {
            setState(() {
              i = position;
            });
          },
        ),
        body: screen[i],
      ),
    );
  }
}
