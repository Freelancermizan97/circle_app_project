import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/body.dart';
import 'components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      drawer: MyDrawer(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 70.h,
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (context) => InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: CircleAvatar(
              radius: 20,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_img.png'),
              ),
            ),
          ),
        ),
      ),
      title: Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          padding: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: kBackgroundColor,
          ),
          child: Row(
            children: [
              IconButton(
                //padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Image.asset(
                    "assets/icons/search_icon.png",
                    color: Colors.black45,
                  ),
                ),
              ),
              //SizedBox(width: kDefaultPadding / 2),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here",
                    hintStyle: kTitleTextstyle.copyWith(
                        color: kHeaderColor.withOpacity(0.5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/notification_icon.png"),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/chat_icon_blc.png"),
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
