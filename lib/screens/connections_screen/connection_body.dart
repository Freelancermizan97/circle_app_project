import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/connections_screen/widgets/connection_user.dart';
import 'package:circle_app_project/screens/connections_screen/widgets/request_user.dart';
import 'package:flutter/material.dart';

class ConnectionScreenBody extends StatefulWidget {
  const ConnectionScreenBody({super.key});

  @override
  _ConnectionScreenBodyState createState() => _ConnectionScreenBodyState();
}

class _ConnectionScreenBodyState extends State<ConnectionScreenBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: kDefaultPadding),
          Container(
            color: Colors.white,
            child: TabBar(
              indicatorColor: kSecounderyColor,
              unselectedLabelColor: Colors.black,
              labelColor: kSecounderyColor,
              tabs: const [
                Tab(
                  text: 'My Connections',
                ),
                Tab(
                  text: 'My Requests',
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding - 6,
                      horizontal: kDefaultPadding),
                  children: const [
                    ConnectionUser(
                        name: "Frances Garcia",
                        title: "UI Designer",
                        avatarPath: "assets/images/profile_img2.png"),
                    ConnectionUser(
                        name: "Lois A. Day",
                        title: "Graphic Designer",
                        avatarPath: "assets/images/profile_img3.png"),
                    ConnectionUser(
                        name: "Annie Blythe",
                        title: "UX Designer",
                        avatarPath: "assets/images/profile_img1.png"),
                    ConnectionUser(
                        name: "Mckinley Hartle",
                        title: "Branding Designer",
                        avatarPath: "assets/images/profile_img2.png"),
                    ConnectionUser(
                        name: "Arthur Perez",
                        title: "Video Editor",
                        avatarPath: "assets/images/profile_img3.png"),
                    ConnectionUser(
                        name: "Frances Garcia",
                        title: "UI Designer",
                        avatarPath: "assets/images/profile_img2.png"),
                    ConnectionUser(
                        name: "Lois A. Day",
                        title: "Web Designer",
                        avatarPath: "assets/images/profile_img1.png"),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding - 6,
                      horizontal: kDefaultPadding),
                  children: const [
                    RequestUser(
                        name: "Frances Garcia",
                        title: "Web Designer",
                        avatarPath: "assets/images/profile_img1.png",
                        days: 1),
                    RequestUser(
                        name: "Lois A. Day",
                        title: "Branding Designer",
                        avatarPath: "assets/images/profile_img3.png",
                        days: 3),
                    RequestUser(
                        name: "Arthur Perez",
                        title: "Graphic Designer",
                        avatarPath: "assets/images/profile_img2.png",
                        days: 5),
                    RequestUser(
                        name: "Annie Blythe",
                        title: "title",
                        avatarPath: "assets/images/profile_img.png",
                        days: 2),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
