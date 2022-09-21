import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class ReuseableTextField extends StatelessWidget {
  final String textHint;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  const ReuseableTextField({
    Key? key,
    required this.textHint,
    required this.textEditingController,
    required this.textInputType,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: textHint,
        hintStyle: kTitleTextstyle.copyWith(
            fontWeight: FontWeight.w400,
            color: kHeaderColor.withAlpha(0xFFF44336)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kHeaderColor.withAlpha(0xFFF44336)),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kSecounderyColor)),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kHeaderColor.withAlpha(0xFFF44336))),
      ),
      keyboardType: textInputType,
      textInputAction: textInputAction,
    );
  }
}
