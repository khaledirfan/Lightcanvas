import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class LiveCameraScreen extends StatelessWidget {
  final String cameraUrl;
////////////freehand.dart er button e amar camerar url diye ashte hobe////////////////
  LiveCameraScreen({required this.cameraUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Camera Feed'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(cameraUrl)),
      ),
    );
  }
}
