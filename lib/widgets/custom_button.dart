import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  // final Color backgroundColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    // required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
        decoration: BoxDecoration(
          //color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              kSecounderyColor.withOpacity(0.9),
              kPrimaryColor.withOpacity(0.9),
            ],
          ),
          border: Border.all(
            width: 2,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: kHeadingTextStyle.copyWith(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
    ;
  }
}
