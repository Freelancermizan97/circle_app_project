import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class InputEmailField extends StatelessWidget {
  const InputEmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: kTitleTextstyle,
      decoration: InputDecoration(
          hintText: 'Enter your email',
          hintStyle: kTitleTextstyle.copyWith(
              fontWeight: FontWeight.w400, color: Colors.grey),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kSecounderyColor)),
          errorBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
    );
  }
}
