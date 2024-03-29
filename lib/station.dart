import 'package:flutter/material.dart';
import 'mode.dart';
import 'connect.dart';
import 'signup.dart';

const List<String> list = <String>['16:9', '16:10'];

class station extends StatefulWidget {
  const station({super.key});

  @override
  State<station> createState() => _stationState();
}

class _stationState extends State<station> {
  int current_Index = 2;
  double _currentSliderValue = 20;

  String dropdownValue = list.first;

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
                icon: Image.asset(
                  "asset/log-out.png",
                  fit: BoxFit.contain,
                  width: 500,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const signup()),
                  );
                },
              ),
            ],
            elevation: 0.0,
          ),
//////////////////sadad
          backgroundColor: const Color(0xFFEFF3FB),
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
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: const BorderRadius.only(
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
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'asset/icons8-low-battery-96.png',
                              scale: 1.1,
                            ),
                            const Text(
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
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: const BorderRadius.only(
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
                                  const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 120,
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'asset/icons8-timer-96.png',
                                scale: 1.1,
                              ),
                              const Text(
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
                      ),
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: SizedBox(
                      height: 30,
                      width: 200,
                      child: Text(
                        'Work Station',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Manrope',
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Brightness',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Manrope',
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      Slider(
                        value: _currentSliderValue,
                        onChanged: (newCurrentslidervalue) {
                          setState(() =>
                              _currentSliderValue = newCurrentslidervalue);
                        },
                        min: 0,
                        max: 100,
                        divisions: 5,
                        activeColor: const Color(0xFF01BFBF),
                      ),
                    ],
                  ),
                ),
              ),
// sdsadaadasdaddsada
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 50,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 100),
                        child: Text(
                          'Aspect Ratio',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Manrope',
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      ////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontFamily: 'Manrope',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          underline: Container(
                            height: 2,
                            color: const Color(0xFFEE6B0E),
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //////////zoom in
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Zoom  In / Out',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Manrope',
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'asset/icons8-add-64.png',
                            scale: 1.5,
                          ),
                          Image.asset(
                            'asset/icons8-minus-64.png',
                            scale: 1.5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //// Freeze
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Freeze Screen',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Manrope',
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 50, right: 50),
                          child: Image.asset(
                            'asset/icons8-pause-button-96.png',
                            scale: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                      MaterialPageRoute(builder: (context) => const connect()),
                    );
                  }
                  if (current_Index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const modes()),
                    );
                  }
                });
              })),
    );
  }
}
