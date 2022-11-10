import 'dart:async';
import 'package:all_in_one/Screens/Home_Screen/controller/data.dart';
import 'package:flutter/material.dart';

import '../Home_Screen/view/home.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return home();}));
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: pri,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HTML"),
              Text("5"),
              Text("GAMES"),
            ],
          ),
        ),
      ),
    );
  }
}
