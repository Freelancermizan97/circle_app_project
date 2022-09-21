import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/sign_up_screen/components/animated_container.dart';
import 'package:circle_app_project/screens/sign_up_screen/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../login_screen/components/input_email_field.dart';

class SignUpFirstScreen extends StatefulWidget {
  const SignUpFirstScreen({super.key});

  @override
  State<SignUpFirstScreen> createState() => _SignUpFirstScreenState();
}

class _SignUpFirstScreenState extends State<SignUpFirstScreen> {
  bool _isVisible = false;
  bool _isPasswordEightCharacter = false;
  bool _hasPasswordOneLetter = false;
  bool _hasPasswordOneNumber = false;
  bool _hasPasswordOneCapitalLetter = false;
  onPasswordChanged(String password) {
    final letterRegex = RegExp(r'[a-z]');
    final numericRegex = RegExp(r'[0-9]');
    final capitalRegex = RegExp(r'[A-Z]');
    setState(() {
      _isPasswordEightCharacter = false;
      if (password.length >= 8) {
        _isPasswordEightCharacter = true;
      }
      _hasPasswordOneLetter = false;
      if (letterRegex.hasMatch(password)) {
        _hasPasswordOneLetter = true;
      }
      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) {
        _hasPasswordOneNumber = true;
      }
      _hasPasswordOneCapitalLetter = false;
      if (capitalRegex.hasMatch(password)) {
        _hasPasswordOneCapitalLetter = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
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
                "Welcome back!",
                style: GoogleFonts.kalam(
                  color: Colors.grey[600],
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Let's create your account",
                style: kHeadingTextStyle,
              ),
              SizedBox(height: kDefaultPadding * 3.h),
              const InputEmailField(),
              SizedBox(height: kDefaultPadding),
              TextField(
                onChanged: (password) => onPasswordChanged(password),
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  hintStyle: kTitleTextstyle.copyWith(
                      fontWeight: FontWeight.w400,
                      color: kHeaderColor.withAlpha(0xFFF44336)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kSecounderyColor)),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: kHeaderColor.withAlpha(0xFFF44336))),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: _isVisible
                        ? const Icon(
                            Icons.visibility,
                            color: kHeaderColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                  ),
                  hintText: "Enter your password",
                ),
              ),
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
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Password must contain",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              AnimatedContainerWidget(
                  borderAndColor: _isPasswordEightCharacter,
                  message: "Be at least 8 characters"),
              AnimatedContainerWidget(
                  borderAndColor: _hasPasswordOneLetter,
                  message: "At least 1 letter"),
              AnimatedContainerWidget(
                  borderAndColor: _hasPasswordOneNumber,
                  message: "At least 1 number"),
              AnimatedContainerWidget(
                  borderAndColor: _hasPasswordOneCapitalLetter,
                  message: "At least 1 capital letter"),
              const SizedBox(
                height: 40,
              ),
              SizedBox(height: kDefaultPadding * 2.h),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpForm()));
                  },
                  child: CustomButton(
                    text: "NEXT",
                    onTap: () {},
                  )),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: kTitleTextstyle.copyWith(
                        fontWeight: FontWeight.w400, color: Colors.grey[600]),
                  ),
                  Text("Join Now!",
                      style: kTitleTextstyle.copyWith(color: kSecounderyColor))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
