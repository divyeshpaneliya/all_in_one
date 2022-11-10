import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'ott_data.dart';

class ott_web extends StatefulWidget {
  const ott_web({Key? key}) : super(key: key);

  @override
  _ott_webState createState() => _ott_webState();
}

class _ott_webState extends State<ott_web> {
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
            initialUrl: "${ottlink[i]}",
            javascriptMode: JavascriptMode.unrestricted,

          ),
        ),
      ),
    );
  }
}
