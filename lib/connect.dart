import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'mode.dart';
import 'station.dart';
import 'signup.dart';

class connect extends StatefulWidget {
  @override
  State<connect> createState() => _connectState();
}

class _connectState extends State<connect> {
  int current_Index=0;
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
        backgroundColor: Color(0xFFFEF7F7),
        body: Column(
          children: [
            Container(
              // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              height: 200.0,
              width: 200.0,
              margin: const EdgeInsets.only(top: 50.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/bluetooth.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                    'Select The Device',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Manrope',
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Make Sure Bluetooth Is Turned On",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Manrope',
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              //heightFactor: 0.25,

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFB7B9BC),
                ),
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(6.0),
                child: Text("Available Devices"),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              //heightFactor: 0.25,

              child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(6.0),
                color: Color(0xFFD9D9D9),
                child: Text("Maliha's POCO"),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              //heightFactor: 0.25,

              child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(6.0),
                color: Color(0xFFB7B9BC),
                child: Text("Previously Connected Devices"),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              //heightFactor: 0.25,

              child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(6.0),
                color: Color(0xFFD9D9D9),
                child: Text(
                  'iphone',
                  style: TextStyle(color: Color.fromARGB(137, 0, 0, 0)),
                ),
              ),
            ),
          ],
        ),
        
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: Padding(
        //   padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 70.0),
        //   child: FloatingActionButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => modes() ),
        //       );
        //     },
        //     child: Text('Skip'),
        //     backgroundColor: Color(0xFF01BFBF),
        //   ),
        // ),
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
            onTap: (index){
              setState(() {
                current_Index=index;
                if(current_Index==1){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => modes() ),
                  );
                }
                if(current_Index==2){
                  //navigate to station page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => station()),
                  );

                }

              });
            }
        ),
      ),
    );
  }
}
