import 'package:app/connect.dart';
import 'package:app/learnmode.dart';
import 'package:flutter/material.dart';
import 'freehand.dart';///

import 'home2.dart';
import 'package:app/utils.dart';

import 'package:firebase_auth/firebase_auth.dart';

class modes extends StatefulWidget {
  const modes({super.key});

  @override
  State<modes> createState() => _modesState();
}

class _modesState extends State<modes> {
  int current_Index = 1;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'LIGHT CANVAS',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 28.0,
              color: Colors.black,
            ),
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,
          actions: [


            IconButton(
                onPressed: () {
                  auth.signOut().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home2()));
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
            const SizedBox(
              width: 20,
            )


          ],
          elevation: 0.0,
        ),
        backgroundColor: const Color(0xFFEFF3FB),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFEE6B0E),
              ),
              child: Row(children: [
                //first button
                Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(

                        // image: DecorationImage(
                        //   image: AssetImage(
                        //       'asset/user.png',

                        //       ),

                        //   fit: BoxFit.fill,
                        // ),
                        ),
                    child: Image.asset(
                      'asset/user.png',
                      scale: 1.5,
                    )),
                const Text(
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
            const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
            const SizedBox(
              height: 50,
              width: 300,
              child: Text(
                'Select Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Syne',
                  fontSize: 20.0,
                  color: Color(0xDD000000),
                ),
              ),
            ),

//second button
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              // color: Color(0xFF01BFBF),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF01BFBF),
              ),

              child: Row(children:
                  [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 30.0,
                  ),
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(

                          // image: DecorationImage(
                          //   image: AssetImage('asset/keyboard.png'),
                          //   fit: BoxFit.fill,
                          // ),
                          // 'asset/keyboard.png'
                          // child: Image.asset(
                          //   'asset/user.png',
                          //   scale: 1.5,
                          // ),
                          ),
                      child: Image.asset(
                        'asset/icons8-keyboard-64.png',
                        scale: 0.7,
                      )),
                ),

              GestureDetector(
                onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const freehand()),
                );},
                child:   const Text(
                  'Free-Hand Mode',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Syne',
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              )
              ]),
            ),
//third button
            Container(

              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              // color: Color(0xFF01BFBF),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF01BFBF),
              ),
              child:
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 30.0,
                  ),
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage('asset/icons8-drawing-tablet-64.png'),
                          //   fit: BoxFit.fill,
                          // ),
                          ),
                      child: Image.asset(
                        'asset/icons8-drawing-tablet-64.png',
                        scale: 0.7,
                      )),
                ),
                GestureDetector(
                  onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const learnmode()),
                  );},
                  child:   const Text(
                    'Learning Mode',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Syne',
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                )
              ]),

            ),

//let's get started button
//             Padding(
//               padding: EdgeInsets.all(20),
//             ),
//             SizedBox(
//               height: 50,
//               width: 300,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => freehand()),
//                   );
//                 },
//                 child: Text(
//                   "Let's Get Started",
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontFamily: 'Manrope',
//                     color: Colors.white,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size.fromHeight(50),
//                   backgroundColor: Color(0xFFEE6B0E),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ),
          ],
        ),

        //navbar//
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
                    MaterialPageRoute(builder: (context) => const connect()),
                  );
                }
            /*    if (current_Index == 2) {
                  //navigate to station page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => station()),
                  );
                }*/
              });
            }),
      ),
    );
  }
}
