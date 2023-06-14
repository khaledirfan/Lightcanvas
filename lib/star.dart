import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'mode.dart';
import 'connect.dart';
import 'signin1.dart';
import 'signup.dart';
import 'station.dart';

import 'home2.dart';
import 'package:app/utils.dart';

import 'package:firebase_auth/firebase_auth.dart';

class star extends StatefulWidget {
  @override
  State<star> createState() => _starState();
}

class _starState extends State<star> {
  int current_Index = 2;
  bool loading = false;
  File? _image;
  final picker = ImagePicker();

  Future getImageGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    setState(() {
      if (pickedFile == null) {
        print('No image picked');
      } else {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
      final auth = FirebaseAuth.instance; ///////////////

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
              child: Row(
                children: [
                  //first button
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'asset/user.png',
                      scale: 1.5,
                    ),
                  ),
                  Text(
                    'Maliha Zerin',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            //Select Mode Text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            ),
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

            //second button
            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: _image != null
                  ? Image.file(_image!.absolute)
                  : Center(child: Icon(Icons.image)),
            ),

            //third button
            Container(
              child: CustomButton(
                title: 'Pick From Gallery',
                icon: Icons.image_outlined,
                onClick: () => getImageGallery(),
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
              if (current_Index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => modes()),
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
          },
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onClick;

  const CustomButton({
    required this.title,
    required this.icon,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Manrope',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
