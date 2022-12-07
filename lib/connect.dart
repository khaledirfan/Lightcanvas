import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'mode.dart';

class connect extends StatefulWidget {
  @override
  State<connect> createState() => _connectState();
}

class _connectState extends State<connect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 70.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => modes() ),
              );
            },
            child: Text('Skip'),
            backgroundColor: Color(0xFF01BFBF),
          ),
        ),
      ),
    );
  }
}
