import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage(image),
          color: kSecounderyColor,
        ),
        SizedBox(width: kDefaultPadding / 2),
        Text(
          text,
          style: kTitleTextstyle.copyWith(
            fontSize: 13.sp,
            color: kHeaderColor.withOpacity(0.84),
          ),
        )
      ],
    );
  }
}
