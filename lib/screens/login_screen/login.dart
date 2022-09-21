import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/bottom_nav_bar/bottom_controller.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/input_email_field.dart';
import 'components/input_password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back,
              color: kSecounderyColor,
            ),
            Spacer(),
            Text(
              "Welcome back!",
              style: GoogleFonts.kalam(
                color: Colors.grey[600],
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "You’ve been missed",
              style: kHeadingTextStyle,
            ),
            SizedBox(height: kDefaultPadding * 3),
            InputEmailField(),
            SizedBox(height: kDefaultPadding),
            InputPasswordField(),
            SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password",
                  style: kTitleTextstyle.copyWith(color: kSecounderyColor),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding * 2),
            InkWell(
              child: CustomButton(
                text: "SIGN IN",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomController(),
                      ));
                },
              ),
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Don’t have an account?",
                style: kTitleTextstyle.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.grey[600]),
              ),
              Text("Join Now!",
                  style: kTitleTextstyle.copyWith(color: kSecounderyColor))
            ]),
          ],
        ),
      )),
    );
  }
}
