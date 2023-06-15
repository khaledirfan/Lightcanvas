// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'signup.dart';
// import 'mode.dart';
// import 'connect.dart';
// import 'signin1.dart';
// import 'signup.dart';
// import 'station.dart';

// import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';
// import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';

// class LiveCameraScreen extends StatefulWidget {
//   final String cameraUrl;

//   LiveCameraScreen({required this.cameraUrl});

//   @override
//   _LiveCameraScreenState createState() => _LiveCameraScreenState();
// }

// class _LiveCameraScreenState extends State<LiveCameraScreen> {
//   late IjkMediaController _mediaController;

//   @override
//   void initState() {
//     super.initState();
//     _mediaController = IjkMediaController();
//     _mediaController.setNetworkDataSource(widget.cameraUrl, autoPlay: true);
//   }

//   @override
//   void dispose() {
//     _mediaController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Live Feed',
//           style: TextStyle(
//             fontFamily: 'Manrope',
//             fontSize: 28.0,
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Color(0xFFFFFFFF),
//         automaticallyImplyLeading: false,
//       ),
//       body: Center(
//         child: IjkPlayer(
//           mediaController: _mediaController,
//         ),
//       ),
//     );
//   }
// }

// class freehand extends StatefulWidget {
//   @override
//   State<freehand> createState() => _freehandState();
// }

// class _freehandState extends State<freehand> {
//   final auth = FirebaseAuth.instance;
//   int current_Index = 2;
  
//   // ... Your existing code ...
  
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           // ... Your existing code ...
//         ),
//         backgroundColor: Color(0xFFEFF3FB),
//         body: Column(
//           children: [
//             // ... Your existing code ...
//             SizedBox(
//               height: 50,
//               width: 300,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => LiveCameraScreen(
//                         cameraUrl: 'http://192.168.206.200:5000/video_feed',
//                       ),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   "Live Feed",
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontFamily: 'Manrope',
//                     color: Colors.white,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size.fromHeight(50),
//                   backgroundColor: Color(0xFFEE6B0E),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ),
//             // ... Your existing code ...
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           // ... Your existing code ...
//         ),
//       ),
//     );
//   }
// }
