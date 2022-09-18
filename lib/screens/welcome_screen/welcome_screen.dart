import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'components/down_arrow_button.dart';
import 'components/my_clipper.dart';
import 'components/start_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 2),
                  Text(
                    "Welcome to",
                    style: GoogleFonts.kalam(
                        fontSize: 18.sp, fontWeight: FontWeight.w700),
                  ),
                  Image.asset("assets/icons/under_line_icon.png"),
                  SizedBox(height: kDefaultPadding / 2),
                  Image.asset("assets/images/logo.png"),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    "My Circle",
                    style: kHeadingTextStyle.copyWith(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Container(
                    width: 300,
                    child: Text(
                      "Lorum ipsum dolar amet, amet ho dolar holar jonas lorum ipsum",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kalam(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0.r,
                    left: 0.r,
                    right: 0.r,
                    child: Transform.rotate(
                      angle: 3.14,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          height: 280.h,
                          width: double.infinity.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [kPrimaryColor, kSecounderyColor],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.r,
                    left: 0.r,
                    right: 0.r,
                    child: Container(
                      width: MediaQuery.of(context).size.width.w,
                      child: Column(
                        children: [
                          DownArrowButton(),
                          SizedBox(height: kDefaultPadding * 2),
                          StartButton(),
                          SizedBox(height: kDefaultPadding),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already a member?",
                                style: kTitleTextstyle.copyWith(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(width: kDefaultPadding / 2.5),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Text(
                                  "LOG IN",
                                  style: kTitleTextstyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding * 2.5,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
