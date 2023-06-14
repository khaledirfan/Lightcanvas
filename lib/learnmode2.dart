import 'package:app/star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'mode.dart';
import 'connect.dart';
import 'signin1.dart';
import 'signup.dart';

import 'home2.dart';
import 'package:app/utils.dart';

import 'package:firebase_auth/firebase_auth.dart';

class learnmode2 extends StatefulWidget {
  @override
  State<learnmode2> createState() => _learnmode2State();
}

class _learnmode2State extends State<learnmode2> {
    final auth = FirebaseAuth.instance; ///////////////

  int current_Index = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'LIGHT CANVAS',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 28.0,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  auth.signOut().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home2()));
                  }).onError((error, stackTrace) {
                    Utils().toastMessage(error.toString());
                  });
                },
                icon: Image.asset(
                "asset/log-out.png",
                fit: BoxFit.contain,
                width: 500,
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
          elevation: 0.0,
        ),
        backgroundColor: Color(0xFFEFF3FB),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEE6B0E),
              ),
              child: Row(children: [
                //first button
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'asset/user.png',
                      scale: 1.5,
                    ),
                    decoration: BoxDecoration(

                      // image: DecorationImage(
                      //   image: AssetImage(
                      //       'asset/user.png',

                      //       ),

                      //   fit: BoxFit.fill,
                      // ),
                    )),
                Text(
                  'Maliha Zerin',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Manrope',
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            //Select Mode Text
            Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
            SizedBox(
              height: 50,
              width: 300,
              child: Text(
                'Learning Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 25.0,
                  color: Color(0xDD000000),
                ),
              ),

            ),
            SizedBox(
              height: 50,
              width: 300,
              child: Text(
                'Level 1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 30.0,
                  color: Color(0xDD000000),
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),


//Level 1 button
            Padding(
              padding: EdgeInsets.all(5),
            ),
            SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                  child: Text(
                    "Task 1 : Straight Line",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                    ),
                  ),

                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Color(0xFF01BFBF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
            ),

            //level 2 button

            Padding(
              padding: EdgeInsets.all(5),
            ),
            SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(

                  child: Text(
                    "Task 2: Geometric Wave Line",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                    ),
                  ),

                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Color(0xFF01BFBF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
            ),

            //level 3 button
            Padding(
              padding: EdgeInsets.all(5),
            ),
            SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(

                  child: Text(
                    "Task 3: Cross",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                    ),
                  ),

                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Color(0xFF01BFBF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
            ),

            ///level 4 button
            Padding(
              padding: EdgeInsets.all(5),
            ),
            SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(

                  child: Text(
                    "Task 4: Star",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => star()),
                  );},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Color(0xFF01BFBF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: current_Index,
            selectedItemColor: Colors.teal,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.bluetooth),
                label: 'Connect',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mode),
                label: 'Select Mode',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.laptop),
                label: 'Station',
              ),
            ],
            onTap: (index) {
              setState(() {
                current_Index = index;
                if (current_Index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => connect()),
                  );
                }
                if (current_Index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => modes()),
                  );
                }
                if (current_Index == 2) {
                  //navigate to station page

                }
              });
            }),
      ),
    );
  }
}
