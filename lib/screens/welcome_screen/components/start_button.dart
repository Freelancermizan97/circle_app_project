import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            kSecounderyColor,
            kPrimaryColor,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: Center(
        child: Text(
          "GET STARTED",
          style: kHeadingTextStyle.copyWith(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
