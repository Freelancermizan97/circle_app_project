import 'dart:async';
import 'package:circle_app_project/provider/splash_screen_provider.dart';
import 'package:circle_app_project/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
    SplashScreenProvider splashScreenProvider =
        Provider.of<SplashScreenProvider>(context);
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen()));
      },
    );
    //splashScreenProvider.loadData();
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/images/logo.png"),
          ),
          InkWell(
            onTap: () {
              splashScreenProvider.loadData();
            },
            child: Center(
              child: Container(
                height: 200.h,
                width: 300.w,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
