import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/provider/splash_screen_provider.dart';
import 'package:circle_app_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SplashScreenProvider>(
          create: (context) => SplashScreenProvider(),
        )
      ],
      child: ScreenUtilInit(
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
          );
        },
      ),
    );
  }
}
