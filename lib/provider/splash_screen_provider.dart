import 'dart:js';

import 'package:flutter/material.dart';

import '../screens/welcome_screen/welcome_screen.dart';

class SplashScreenProvider with ChangeNotifier {
  Future<void> loadData() async {
    return Future.delayed(Duration(seconds: 3), onDoneLoading(context));
  }

  onDoneLoading(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }
}
