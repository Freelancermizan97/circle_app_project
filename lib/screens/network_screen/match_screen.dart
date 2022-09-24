import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/network_screen/message_screen/message_screen.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 3),
            Image.asset("assets/images/group_img.png"),
            Spacer(),
            Text(
              "It’s a match!",
              style: kHeadingTextStyle.copyWith(
                color: kSecounderyColor,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                "You and Sidharth would like to meet each other. Go say hello!",
                textAlign: TextAlign.center,
                style: GoogleFonts.kalam(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: kHeaderColor,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: CustomButton(
                text: "Send Message",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessageScreen(),
                    )),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
