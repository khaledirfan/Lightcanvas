import 'package:app/login_successful.dart';
import 'package:flutter/material.dart';

class signin1 extends StatefulWidget {
  const signin1({super.key});

  @override
  State<signin1> createState() => _signin1State();
}

class _signin1State extends State<signin1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 20.0),
              child: Center(
                child: Image.asset(
                  'asset/signin.png',
                  scale: 1.2,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Password',
                ),
              ),

            ),
            Container(

              margin: const EdgeInsets.only(top: 10.0,bottom: 20.0),


            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: const Color(0xFFEE6B0E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Log In'),
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
