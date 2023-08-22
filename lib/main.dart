import 'package:app/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
//import 'home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    // home: MyApp(),
    home: const SplashScreen(),
  ));
}

// void main() => runApp(MaterialApp(
//   home: MyApp(),
// ));


