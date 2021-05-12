import 'package:flutter/material.dart';
import 'package:flutter_proyect/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title:Text("Detector de mascarillas",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26, color: Colors.black
      ) ,),
      image: Image.asset("assets/SplashScreen.png"),
      photoSize: 170,
      backgroundColor: Colors.white,
      loaderColor: Colors.amber,
      loadingText: Text("Encoded by \ Jeison-Daniel-Dilan ", 
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      textAlign: TextAlign.center,
      ),
    );
  }
}