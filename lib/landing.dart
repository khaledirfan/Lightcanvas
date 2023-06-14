import 'dart:async';
import 'landing_sevices.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:app/home2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SplashServices splashScreen = SplashServices(); ///////////////////////

  @override
  void initState() {
    super.initState();
    splashScreen.isLogin(context);
    // _navigatehome();
  }

  // _navigatehome() async {
  //   await Future.delayed(Duration(milliseconds: 4000), () {
  //     print("Wait for 3000 milliseconds");
  //   });
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => Home2()));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(
          'asset/01_Splash.jpg',
          // height:600,
          width: 410,
          fit: BoxFit.fill,
        ),
      ),


    );
  }
}
