import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'e_data.dart';

class e_web extends StatefulWidget {
  const e_web({Key? key}) : super(key: key);

  @override
  _e_webState createState() => _e_webState();
}

class _e_webState extends State<e_web> {
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
            initialUrl: "${elink[i]}",
            javascriptMode: JavascriptMode.unrestricted,

          ),
        ),
      ),
    );
  }
}
