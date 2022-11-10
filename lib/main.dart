import 'package:all_in_one/Screens/Splash/splash.dart';
import 'package:all_in_one/Screens/game/game.dart';
import 'package:flutter/material.dart';

import 'Screens/ OTT_platforms/ott_view.dart';
import 'Screens/ OTT_platforms/ott_web.dart';
import 'Screens/Educational_websites/e_view.dart';
import 'Screens/Educational_websites/web_run.dart';
import 'Screens/Home_Screen/view/home.dart';
import 'Screens/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Main_screen',
      routes: {
        '/': (context) => splash(),
        'home': (context) => home(),
        'game': (context) => game(),
        'edu': (context) => edu(),
        'e_web': (context) => e_web(),
        'ott_web': (context) => ott_web(),
        'ott_v': (context) => ott_v(),
        'Main_screen': (context) => Main_screen(),
      },
    ),
  );
}
