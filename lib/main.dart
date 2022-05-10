import 'dart:async';

import 'package:flutter/material.dart';

import 'app_icons.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyAppState()));
}

class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Starter();
  }
}

class _Starter extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    startTimer(context);
    return MaterialApp(
        home: Image(
      fit: BoxFit.fill,
      image: AssetImage(AppIcons.imageSplash),
    ));
  }

  void startTimer(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
}
