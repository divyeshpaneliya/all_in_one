import 'dart:io';
import 'package:all_in_one/Screens/Home_Screen/controller/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
          title: Text("Games"),
        ),
        body: Container(
          color: pri,
          child: GridView.builder(
              itemCount: gname.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'game', arguments: index);
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
                            "${gimage[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("${gname[index]}"),
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
