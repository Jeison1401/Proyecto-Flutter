import 'package:flutter/material.dart';
import 'package:flutter_proyect/SplashScreenPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detector de mascarilla',

      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

