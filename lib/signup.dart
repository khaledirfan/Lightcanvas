import 'package:flutter/material.dart';
import 'testlogin.dart'; ////////////// new
import 'test_signup.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'asset/Welcome Page.png',
                  scale: 1.05,
                  // width: 700,
                  // height: 300,
                ),
              )),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 30.0),
              child: Text(
                'Sign in to enter the app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'ManropeRegular',
                  color: Color.fromARGB(255, 111, 106, 106),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // MaterialPageRoute(builder: (context) => signin1()),
                    ///////////////////////////////////////////////////////////////////////////////////////////
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(10),
                  backgroundColor: const Color(0xFF01BFBF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Sign In'),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(10,10,10,10),
            //   child: Text(
            //     'OR',
            //     style: TextStyle(
            //       fontSize: 18.0,

            //       fontFamily: 'Manrope',
            //       color: Color.fromARGB(255, 111, 106, 106),

            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
              width: 10,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: const Color(0xFFEE6B0E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Sign Up'),
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
