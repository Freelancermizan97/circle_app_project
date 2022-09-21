import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/forget_password/OtpComponent.dart';
import 'package:circle_app_project/screens/forget_password/new_password.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              Center(
                child: Text(
                  "Enter OTP",
                  style: kHeadingTextStyle.copyWith(
                      color: Color(0xFF019DA2),
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              const Center(
                child: Text(
                  "Please enter the 4-digit code we\nsent to your email rias***@gmail.com",
                  style: TextStyle(
                      fontFamily: 'SK',
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              const Center(
                child: Text(
                  "rias***@gmail.com",
                  style: TextStyle(
                      fontFamily: 'SK',
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: kDefaultPadding * 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OtpComponent(),
                  OtpComponent(),
                  OtpComponent(),
                  OtpComponent(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Did you don’t code ? ",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(width: kDefaultPadding / 10),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Please resend",
                      style: kTitleTextstyle.copyWith(color: kSecounderyColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: kDefaultPadding * 2.h),
              const Spacer(),
              CustomButton(
                text: "RECOVER PASSWORD",
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NewPassword()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
