import 'landing_sevices.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SplashServices splashScreen = SplashServices(); ///////////////////////

  @override
  void initState() {
    super.initState();
    splashScreen.isLogin(context);
    // _navigatehome();
  }

  // _navigatehome() async {
  //   await Future.delayed(Duration(milliseconds: 4000), () {
  //     print("Wait for 3000 milliseconds");
  //   });
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => Home2()));
  // }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(
          'asset/01_Splash.jpg',
          // height:600,
          width: 410,
          fit: BoxFit.fill,
        ),
      ),


    );
  }
}
