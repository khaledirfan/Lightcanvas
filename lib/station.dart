import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'mode.dart';
import 'connect.dart';

class station extends StatefulWidget {
  @override
  State<station> createState() => _stationState();
}

class _stationState extends State<station> {
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
            backgroundColor: Color(0xEFF3FBF),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: Image.asset(
                  "asset/log-out.png",
                  fit: BoxFit.contain,
                  width: 500,
                ),
                onPressed: () {},
              ),
            ],
            elevation: 0.0,
          ),
///////////////////////////////

          body: Column(
            ///////////////mau=in column
            children: [
              Container(
                margin: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 120,
                        width: 180,
                        child: Column(
                          children: [
                            Image.asset(
                              'asset/icons8-low-battery-96.png',
                              scale: 1.1,
                            ),
                            Text(
                              '57%',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Text(
                    //   'Maliha Zerin',
                    //   style: TextStyle(
                    //     fontSize: 24.0,
                    //     fontFamily: 'Manrope',
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   ),
                    // ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 120,
                        width: 180,
                        child: Container(
                          height: 120,
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'asset/icons8-timer-96.png',
                                scale: 1.1,
                              ),
                              Text(
                                '45 mins',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Container(
                      height: 150,
                      width: 200,
                      child: Text(
                        'WorkStation',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Manrope',
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ///
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
                });
              })),
    );
  }
}
