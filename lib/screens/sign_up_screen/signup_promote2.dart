import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'signup_complete.dart';

class SignUpPromoteScreen2 extends StatelessWidget {
  const SignUpPromoteScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final noteController = TextEditingController();

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back,
                color: kSecounderyColor,
              ),
              SizedBox(height: kDefaultPadding * 3.h),
              Text(
                "Would love to have a coffee meeting with...",
                style: kHeadingTextStyle,
              ),
              SizedBox(height: kDefaultPadding * 3.h),
              TextField(
                controller: noteController,
                minLines: 20,
                maxLines: 20,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Tell Us',
                    hintStyle: kTitleTextstyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: kHeaderColor.withAlpha(0xFFF44336)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecounderyColor)),
                    errorBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
                    )),
              ),
              CustomButton(
                text: "Submit",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUpComplete()));
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
