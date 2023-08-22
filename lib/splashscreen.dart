import 'package:flutter/material.dart';
import 'landing_sevices.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }

  // @override
  // Widget build(BuildContext context) {
  //   return const Scaffold(
  //     body: Center(
  //       child: Text("Light Canvas"),
  //     ),
  //   );
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
