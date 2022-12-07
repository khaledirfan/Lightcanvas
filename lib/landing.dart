import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home.dart';

class land extends StatefulWidget {
  @override
  State<land> createState() => _landState();
}

class _landState extends State<land> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          Row(
            children: [Image.asset('asset/land.png')],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 70.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text('Next'),
          backgroundColor: Color(0xFF01BFBF),
        ),
      ),
    ));
  }
}
