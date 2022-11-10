import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../Home_Screen/controller/data.dart';

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  _gameState createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  Widget build(BuildContext context) {
    int i = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
      //  appBar: AppBar(title: Text("")),
        body: Container(
          child: WebView(
            initialUrl: "${glink[i]}",
            javascriptMode: JavascriptMode.unrestricted,

          ),
        ),
      ),
    );
  }
}
