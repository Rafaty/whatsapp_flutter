import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/main_screen.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(cameras: cameras,),
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
    );
  }
}
