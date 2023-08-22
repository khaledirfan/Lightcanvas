import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tflite/tflite.dart';
import 'package:app/connect.dart';
import 'package:app/learnmode.dart';
import 'package:flutter/material.dart';
import 'freehand.dart';

///

import 'home2.dart';
import 'package:app/utils.dart';

import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Classification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Star(),
    );
  }
}

class Star extends StatefulWidget {
  const Star({Key? key}) : super(key: key);

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  File? _image;
  List<dynamic>? _output;
  final player = AudioPlayer();

  Future<void> getImageGallery() async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    if (pickedFile == null) {
      print('No image picked');
    } else {
      setState(() {
        _image = File(pickedFile.path);
      });
      await detectImage(_image!);
    }
  }

  Future<void> detectImage(File image) async {
    // Load the model.  
    var interpreter = await Tflite.loadModel(
      model: 'asset/model.tflite',
      labels: 'asset/labels.txt',
    );

    // Run the model on the image.
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.6,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    // Update the state.
    setState(() {
      _output = output;
    });
  }

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
              onPressed: () {},
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
        body: Center(
          child: Column(
            children: [
              if (_image != null) Image.file(_image!),
              if (_output != null)
                Text((_output![0]['label']).toString().substring(2)),
              if (_output != null)
                Text('Confidence: ${_output![0]['confidence']}'),
              SizedBox(
                height: 100,
                width: 500,
              ),
              Container(
                child: RawMaterialButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      
                    ),
                  ),
                  fillColor: Colors.teal,
                  onPressed: () {
                    player.play(AssetSource('audio1.mp3'));
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getImageGallery,
          child: const Icon(Icons.add_a_photo),
        ),
      ),
    );
  }
}
