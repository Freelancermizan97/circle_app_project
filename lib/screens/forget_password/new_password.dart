import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/login_screen/components/input_password_field.dart';
import 'package:circle_app_project/screens/login_screen/login.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                "New Password",
                style: kHeadingTextStyle.copyWith(
                    color: Color(0xFF019DA2),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: kDefaultPadding),
              const Text("Enter your new password",
                  style: TextStyle(
                      fontFamily: 'SK', color: Colors.grey, fontSize: 15.0)),
              SizedBox(height: kDefaultPadding * 3.h),
              const InputPasswordField(),
              SizedBox(height: kDefaultPadding),
              const InputPasswordField(),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              SizedBox(height: kDefaultPadding * 2.h),
              const Spacer(),
              CustomButton(
                text: "UPDATE PASSWORD",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
