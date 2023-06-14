import 'package:app/landing.dart';
import 'package:app/splashscreen.dart';
import 'package:flutter/material.dart';
//import 'home.dart';
import 'home2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    // home: MyApp(),
    home: SplashScreen(),
  ));
}

// void main() => runApp(MaterialApp(
//   home: MyApp(),
// ));


