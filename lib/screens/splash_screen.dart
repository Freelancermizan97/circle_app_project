import 'dart:async';

import 'package:circle_app_project/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Splash Screen

  // @override
  // void initState() {
  //   super.initState();

  //   loadData();
  // }

  // Future<Timer> loadData() async {
  //   return new Timer(Duration(seconds: 3000), onDoneLoading);
  // }

  // onDoneLoading() async {
  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    // SplashScreenProvider splashScreenProvider =
    //     Provider.of<SplashScreenProvider>(context);
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen()));
      },
    );
    //splashScreenProvider.loadData();
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
