import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/bottom_nav_bar/bottom_controller.dart';
import 'package:circle_app_project/screens/card_information/card_info_screen.dart';
import 'package:circle_app_project/screens/home_screen/home_page.dart';
import 'package:circle_app_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kBackgroundColor,
            backgroundColor: kBackgroundColor,
            fontFamily: "SK",
          ),
          home: SplashScreen(),
          //CardInfoScreen(),
          //BottomController(),
        );
      },
    );
  }
}
