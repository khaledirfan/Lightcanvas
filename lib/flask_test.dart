import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'dart:io';
import 'signup.dart';
import 'mode.dart';
import 'connect.dart';
import 'signin1.dart';
import 'signup.dart';
import 'station.dart';

class ImageScreen extends StatefulWidget {
  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  String url =
      'http://192.168.145.200:5000/image';
       int current_Index = 2;

  Future<void> saveImage() async {
    var response = await http.get(Uri.parse(url));
    Directory directory = await getApplicationDocumentsDirectory();
    File file = new File(path.join(directory.path, 'image.jpg'));

    // Convert the image format to JPG
    final image = await decodeImageFromList(response.bodyBytes);
    final jpgImage = await encodeJpg(image as Image);

    // Save the JPG image to file
    await file.writeAsBytes(jpgImage);

    // Save the image to the device's gallery
    final result = await ImageGallerySaver.saveFile(file.path);

    if (result['isSuccess']) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("Image saved Successfully!"),
          content: Image.file(file),
        ),
      );
    } else {
      print('Failed to save image to gallery');
    }
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(url),
            ElevatedButton(
              onPressed: saveImage,
              child: Text("Save image"),
            ),
          ],
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
          });
        },
      ),
    );
  }

  encodeJpg(Image image) {}
}
