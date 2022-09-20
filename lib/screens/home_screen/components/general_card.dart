import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  final String title;
  final String image;
  const GeneralCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      trailing: Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(image),
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
