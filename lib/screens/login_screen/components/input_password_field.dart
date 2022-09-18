import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class InputPasswordField extends StatefulWidget {
  const InputPasswordField({super.key});

  @override
  State<InputPasswordField> createState() => _InputPasswordFieldState();
}

class _InputPasswordFieldState extends State<InputPasswordField> {
  bool isObsecre = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: kTitleTextstyle,
      obscureText: isObsecre,
      decoration: InputDecoration(
          hintText: 'Enter your Password',
          suffixIcon: IconButton(
            color: isObsecre ? Colors.grey : kSecounderyColor,
            icon: Icon(isObsecre ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                isObsecre = !isObsecre;
              });
            },
          ),
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
