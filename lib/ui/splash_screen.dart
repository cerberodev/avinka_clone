import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.green,
    ));
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return MainScreen();
      }));
    });
  }
}
