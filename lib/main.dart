import 'package:flutter/material.dart';
import 'package:flutter_proyect/pages/Login_page.dart';
import 'package:flutter_proyect/pages/SplashScreenPage.dart';
import 'package:camera/camera.dart';

List<CameraDescription> camera;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  camera = await availableCameras();
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
      routes: {
        LoginPage.id: (context) => LoginPage(),
      },
    );
  }
}
