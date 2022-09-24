import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 1.5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: kTitleTextstyle.copyWith(color: Colors.white),
      ),
    );
  }
}
