import 'package:flutter/material.dart';
import 'connect.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 20.0),
              child: Center(
                child: Image.asset(
                  'asset/success.png',
                  scale: 1.2,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Text(
                'Success',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Manrope',
                  color: Color(0xFF01BFBF),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: Text(
                'Logged in succesfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'ManropeRegular',
                  color: Color.fromARGB(255, 111, 106, 106),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: const Color(0xFF01BFBF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const connect()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: const Color(0xFFEE6B0E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Connect your device'),
              ),
            ),
          ],
        ),

        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: Padding(
        //   padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 70.0),
        //   child: FloatingActionButton(
        //     onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ),
        // );
        //     },
        //     child: Text('Next'),
        //     backgroundColor: Color(0xFF01BFBF),
        //   ),
        // ),
      ),
    );
  }
}
