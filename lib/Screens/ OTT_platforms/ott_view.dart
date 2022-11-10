import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'ott_data.dart';

class ott_v extends StatefulWidget {
  const ott_v({Key? key}) : super(key: key);

  @override
  _ott_vState createState() => _ott_vState();
}

class _ott_vState extends State<ott_v> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ott_Platform"),
        ),
        body: Container(
          color: pri,
          child: GridView.builder(
              itemCount: ottname.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ott_web', arguments: index);
                  },
                  child: Container(
                    height: 300,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(5),
                          height: 120,
                          // width: 100,
                          child: Image.network(
                            "${ottimage[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("${ottname[index]}"),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
