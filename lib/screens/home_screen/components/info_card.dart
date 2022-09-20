import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  const InfoCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      trailing: Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: kTitleTextstyle.copyWith(
          color: kHeaderColor.withOpacity(0.86),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
