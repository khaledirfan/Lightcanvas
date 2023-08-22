import 'package:flutter/material.dart';
import 'signup.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(60.0, 60.0, 60.0, 10.0),
              child: Center(
                child: Image.asset(
                  'asset/Frame 1.jpg',

                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 10.0),
              child: Text(
                'Draw Virtually',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: Text(
                'Experience the future by drawing virtually.',
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
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 70.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const signup()),
              );
            },
            
            backgroundColor: const Color(0xFF01BFBF),
            child: const Text(
              'Next',
              
              ),
          ),
        ),
      ),
    );
  }
}
