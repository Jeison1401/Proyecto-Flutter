import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proyect/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Define required instanes
  CameraImage cameraImage;
  CameraController cameraController;

  //Define required variables
  bool isWorking = false;
  String resul = '';

  initCamera() {
    cameraController = CameraController(camera[0], ResolutionPreset.medium);
    cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        cameraController.startImageStream((imageFromStream) {
          if (!isWorking) {
            isWorking = true;
            cameraImage = imageFromStream;
          }
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: resul.isEmpty
                ? Text('ENFOQUE EL ROSTRO')
                : Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      resul,
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
            centerTitle: true,
          ),
          body: Container(
            child: (!cameraController.value.isInitialized)
            ? Container()
            : Align(
              alignment: Alignment.center,
              child: AspectRatio(
                aspectRatio: cameraController.value.aspectRatio,
                child: CameraPreview(cameraController),
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
