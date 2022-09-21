import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/reuseable_container.dart';
import 'components/reuseable_text_field.dart';

class SignUpPromoteScreen1 extends StatefulWidget {
  const SignUpPromoteScreen1({super.key});

  @override
  State<SignUpPromoteScreen1> createState() => _SignUpPromoteScreen1State();
}

class _SignUpPromoteScreen1State extends State<SignUpPromoteScreen1> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final ageController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: kSecounderyColor,
                    ),
                    SizedBox(height: kDefaultPadding * 3.h),
                    Text(
                      "Let's create your account",
                      style: kHeadingTextStyle,
                    ),
                    SizedBox(height: kDefaultPadding * 3.h),
                    ReuseableTextField(
                      textHint: "Enter Your Name",
                      textEditingController: emailController,
                      textInputType: TextInputType.text,
                    ),
                    ReuseableTextField(
                      textHint: "Enter Your age",
                      textEditingController: ageController,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  color: kBackgroundColor.withAlpha(0xFFFFFFFF),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    CustomPaint(
                      child: Container(
                        color: kHeaderColor.withAlpha(0x0000001A),
                        width: 25,
                        height: 3,
                      ),
                    ),
                    Text(
                      'Max out the personality that shines throughon your profile!',
                      style: GoogleFonts.andika(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    const ReUseTextContent(
                      textHint: 'Would love to have a coffee meeting with...',
                    ),
                    const ReUseTextContent(
                      textHint: 'An unexpected career change for me was...',
                    ),
                    const ReUseTextContent(
                      textHint: 'Would love to have a coffee meeting with...',
                    ),
                    const ReUseTextContent(
                      textHint: 'An unexpected career change for me was...',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
