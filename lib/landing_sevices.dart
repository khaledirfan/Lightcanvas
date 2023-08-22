import 'dart:async';

import 'package:app/home2.dart';
import 'package:flutter/material.dart'
    show BuildContext, MaterialPageRoute, Navigator;
import 'package:firebase_auth/firebase_auth.dart';
import 'mode.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user != null) {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const modes())));
    }
    else{
      Timer(
          const Duration(seconds: 2),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home2())));
    }
  }
}
