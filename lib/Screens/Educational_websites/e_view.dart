import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'e_data.dart';

class edu extends StatefulWidget {
  const edu({Key? key}) : super(key: key);

  @override
  _eduState createState() => _eduState();
}

class _eduState extends State<edu> {
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
          title: Text("Educational Websites"),
        ),
        body: Container(
          color: pri,
          child: GridView.builder(
              itemCount: ename.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'e_web', arguments: index);
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
                            "${eimage[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("${ename[index]}"),
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
