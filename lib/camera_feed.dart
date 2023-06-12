import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'signup.dart';
import 'mode.dart';
import 'connect.dart';
import 'signin1.dart';
import 'signup.dart';
import 'station.dart';

class LiveCameraScreen extends StatefulWidget {
  final String cameraUrl;
///////////////freehand.dart e button e camerar url diye ashte hobe/////////////////
  LiveCameraScreen({required this.cameraUrl});

  @override
  _LiveCameraScreenState createState() => _LiveCameraScreenState();
}

class _LiveCameraScreenState extends State<LiveCameraScreen> {
  int current_Index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(widget.cameraUrl)),
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
              if (current_Index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => modes()),
                );
              }
              /*  if (current_Index == 2) {
                  //navigate to station page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => station()),
                  );
                }*/
            });
          }),
    );
  }
}
