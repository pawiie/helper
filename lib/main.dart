import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
      ),
      body: HelperApp(),
    ),
  ));
}

class HelperApp extends StatefulWidget {
  @override
  _HelperAppState createState() => _HelperAppState();
}

class _HelperAppState extends State<HelperApp> {
  int num = 1;
  void change() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$num.png'),
        onPressed: () {
          change();
        },
      ),
    );
  }
}
