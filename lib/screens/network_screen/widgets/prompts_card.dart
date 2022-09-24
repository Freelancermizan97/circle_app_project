import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromptsCard extends StatelessWidget {
  const PromptsCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.only(right: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTitleTextstyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            subTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: kTitleTextstyle.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
