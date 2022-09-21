import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/bottom_nav_bar/bottom_bar.dart';
import 'package:circle_app_project/screens/connections_screen/connection_body.dart';
import 'package:circle_app_project/screens/home_screen/components/my_drawer.dart';
import 'package:circle_app_project/screens/home_screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomController extends StatefulWidget {
  const BottomController({super.key});

  static final List<Widget> _widgetsOptions = <Widget>[
    HomePage(),
    ConnectionScreenBody(),
    Center(child: Text('My Card')),
    Center(child: Text('Events')),
    Center(child: Text('Business')),
  ];

  @override
  State<BottomController> createState() => _BottomControllerState();
}

class _BottomControllerState extends State<BottomController> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: MyDrawer(),
      body: Center(child: BottomController._widgetsOptions[_selectIndex]),
      bottomNavigationBar: BottomBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 1,
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
      title: Row(
        children: [
          Expanded(
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
        ],
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
