import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveCameraFeed extends StatelessWidget {
  final String serverIP = 'http://192.168.206.200:5000'; 

  @override
  Widget build(BuildContext context) {
    final VideoPlayerController controller = VideoPlayerController.network('$serverIP/video_feed');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Live Video Feed'),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: VideoPlayer(controller),
          ),
        ),
      ),
    );
  }
}
