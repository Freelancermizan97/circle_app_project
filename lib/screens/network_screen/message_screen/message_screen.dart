import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/network_screen/message_screen/components/chat_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [Spacer(), ChatInputField()],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 70.h,
      elevation: 1,
      backgroundColor: kBackgroundColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(color: kSecounderyColor),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_img4.png"),
          ),
          SizedBox(width: kDefaultPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Frances Garcia",
                style: kTitleTextstyle.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                "Actice Now",
                style: kHeadingTextStyle.copyWith(
                    fontSize: 14.sp, color: kHeaderColor.withOpacity(0.3)),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ))
      ],
    );
  }
}
