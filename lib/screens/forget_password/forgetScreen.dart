import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'otp.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailContaroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back,
                color: kSecounderyColor,
              ),
              const Spacer(),
              Text(
                "Forgot Password",
                style: kHeadingTextStyle.copyWith(
                    color: Color(0xFF019DA2),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: kDefaultPadding),
              const Text(
                  "Please enter your email below and we’ll send\nyou an OTP to reset your password",
                  style: TextStyle(
                      fontFamily: 'SK', color: Colors.grey, fontSize: 15.0)),
              SizedBox(height: kDefaultPadding * 3.h),
              TextField(
                controller: emailContaroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.check_circle_outline),
                  hintText: "Enter your Interested In",
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kSecounderyColor)),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: kHeaderColor.withAlpha(0xFFF44336))),
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              SizedBox(height: kDefaultPadding * 2.h),
              const Spacer(),
              CustomButton(
                  text: "Send OTP",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OtpScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
