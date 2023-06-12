import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'signup.dart';
import 'mode.dart';
import 'connect.dart';
import 'signin1.dart';
import 'signup.dart';
import 'station.dart';

class ImageScreen extends StatefulWidget {
  @override
  State<ImageScreen> createState() => _ImageScreen();
}

class _ImageScreen extends State<ImageScreen>  {
  Future<http.Response> fetchImage() {
    String url = 'http://192.168.145.200:5000/image';  // Replace with the IP address of your Raspberry Pi

    // Make an HTTP GET request to the Flask server
    return http.get(Uri.parse(url));
  }
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

      body: Center(
        child: FutureBuilder<http.Response>(
          future: fetchImage(),
          builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              if (snapshot.data!.bodyBytes.isNotEmpty) {
                // Display the retrieved image
                return Image.memory(snapshot.data!.bodyBytes);
              } else {
                return Text('Empty image response');
              }
            } else {
              return Text('No image data');
            }
          },
        ),
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
