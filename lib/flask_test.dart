import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ImageScreen extends StatelessWidget {
  Future<http.Response> fetchImage() {
    String url = 'http://<raspberry-pi-ip-address>:5000/image';  // Replace with the IP address of your Raspberry Pi
                  ///////raspbery pi er IP address//////////
    // Make an HTTP GET request to the Flask server
    return http.get(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Screen'),
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
                // Convert the image bytes to a base64-encoded string
                String base64Image = base64Encode(snapshot.data!.bodyBytes);

                // Display the image using the base64-encoded string
                return Image.memory(
                  base64Decode(base64Image),
                );
              } else {
                return Text('Empty image response');
              }
            } else {
              return Text('No image data');
            }
          },
        ),
      ),
    );
  }
}
