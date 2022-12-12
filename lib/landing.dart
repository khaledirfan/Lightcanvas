import 'dart:async';

import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:app/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    _navigatehome();
  }
  _navigatehome() async{
    await Future.delayed(Duration(milliseconds: 3000), () {
      print("Wait for 3000 milliseconds");});
    Navigator.pushReplacement(
        context,MaterialPageRoute(builder: (context) => Home()));
  }
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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage(
                  "asset/01_Splash .png"),
              fit: BoxFit.cover)),
      padding: EdgeInsets.only(top: 50.0),

    );
  }
}