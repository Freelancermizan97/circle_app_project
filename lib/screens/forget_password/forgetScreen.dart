import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../login_screen/components/input_email_field.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

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
              const InputEmailField(),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              SizedBox(height: kDefaultPadding * 2.h),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
