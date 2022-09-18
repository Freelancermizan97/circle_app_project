import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownArrowButton extends StatelessWidget {
  const DownArrowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 40.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 5),
              spreadRadius: 1)
        ],
        image: DecorationImage(
          image: AssetImage('assets/icons/down_arro_icon.png'),
        ),
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffFFFFFF),
      ),
    );
  }
}
