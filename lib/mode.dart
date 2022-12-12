import 'package:app/connect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'station.dart';
import 'signup.dart';

class modes extends StatefulWidget {
  @override
  State<modes> createState() => _modesState();
}

class _modesState extends State<modes> {
  int current_Index = 1;
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
          backgroundColor: Color(0xEFF3FBF),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Image.asset(
                "asset/log-out.png",
                fit: BoxFit.contain,
                width: 500,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );
              },
            ),
          ],
          elevation: 0.0,
        ),
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
                'Select Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20.0,
                  color: Color(0xFF01BFBF),
                ),
              ),
            ),

//second button
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              // color: Color(0xFF01BFBF),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF01BFBF),
              ),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 30.0,
                  ),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'asset/icons8-keyboard-64.png',
                        scale: 0.7,
                      ),
                      decoration: BoxDecoration(

                          // image: DecorationImage(
                          //   image: AssetImage('asset/keyboard.png'),
                          //   fit: BoxFit.fill,
                          // ),
                          // 'asset/keyboard.png'
                          // child: Image.asset(
                          //   'asset/user.png',
                          //   scale: 1.5,
                          // ),
                          )),
                ),
                Text(
                  'Keyboard',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Syne',
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ]),
            ),
//third button
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              // color: Color(0xFF01BFBF),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF01BFBF),
              ),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 30.0,
                  ),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'asset/icons8-drawing-tablet-64.png',
                        scale: 0.7,
                      ),
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage('asset/icons8-drawing-tablet-64.png'),
                          //   fit: BoxFit.fill,
                          // ),
                          )),
                ),
                Text(
                  'Drawing Board',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Syne',
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ]),
            ),

//let's get started button
            Padding(
              padding: EdgeInsets.all(20),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Manrope',
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Color(0xFFEE6B0E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
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
                if (current_Index == 2) {
                  //navigate to station page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => station()),
                  );

                }
              });
            }),
      ),
    );
  }
}
