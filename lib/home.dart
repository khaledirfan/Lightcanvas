import 'package:flutter/material.dart';
import 'home2.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 60.0, 20.0, 10.0),
              child: Center(
                child: Image.asset(
                  'asset/Type.png',
                  scale: 1.2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 10.0),
              child: Text(
                'Type Virtually',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: Text(
                'Experience the future by typing virtually without the keyboard.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'ManropeRegular',
                  color: Color.fromARGB(255, 111, 106, 106),
                ),
              ),
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
                MaterialPageRoute(builder: (context) => Home2()),
              );
            },
            child: Text('Next'),
            backgroundColor: Color(0xFF01BFBF),
          ),
        ),
      ),
    );
  }
}
