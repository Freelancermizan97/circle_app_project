import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/models/event_data.dart';
import 'package:circle_app_project/screens/event_screen/components/my_event_edit.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen/topics/events_attending.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
              splashFactory: NoSplash.splashFactory,
              labelStyle: kTitleTextstyle,
              //labelPadding: EdgeInsets.all(10),
              //indicatorColor: kSecounderyColor,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 6.r, color: kSecounderyColor),
                insets: EdgeInsets.symmetric(horizontal: 20.r),
              ),
              unselectedLabelColor: kHeaderColor.withOpacity(0.5),
              labelColor: kSecounderyColor,
              tabs: const [
                Tab(
                  text: 'Events',
                ),
                Tab(
                  text: 'My Events',
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  //text: 'My Requests',
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
                  // padding: EdgeInsets.symmetric(
                  //     vertical: kDefaultPadding - 6,
                  //     horizontal: kDefaultPadding),
                  children: [
                    SizedBox(height: kDefaultPadding),
                    EventsAttending(),

                    //<------------------- Events--------------------------->
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding),
                      child: Text(
                        "Events",
                        style: kTitleTextstyle.copyWith(
                            fontWeight: FontWeight.w700),
                      ),
                    ),

                    //
                    EventsCard(image: "assets/images/image9.png"),
                    EventsCard(image: "assets/images/image10.png"),
                    EventsCard(image: "assets/images/image11.png"),
                  ],
                ),
                ListView(
                  // padding: EdgeInsets.symmetric(
                  //     vertical: kDefaultPadding - 6,
                  //     horizontal: kDefaultPadding),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding / 2),
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/image10.png")),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Row(
                            children: [
                              Image.asset("assets/icons/location_icon.png"),
                              SizedBox(width: kDefaultPadding / 2),
                              Text(
                                "Location Here",
                                style: kTitleTextstyle.copyWith(
                                    color: kHeaderColor.withOpacity(0.5)),
                              ),
                              SizedBox(width: kDefaultPadding / 2),
                              Image.asset("assets/icons/calendar_icon.png"),
                              SizedBox(width: kDefaultPadding / 2),
                              Text(
                                "25 May, 2022",
                                style: kTitleTextstyle.copyWith(
                                    color: kHeaderColor.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          SizedBox(height: kDefaultPadding / 3),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing",
                            style: kTitleTextstyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Text(
                            "1.6K User attend",
                            style: kTitleTextstyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: kHeaderColor.withOpacity(0.5)),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: kSecounderyColor,
                              ),
                              SizedBox(width: kDefaultPadding / 3),
                              InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyEventEdit(),
                                    )),
                                child: Text(
                                  "Edit",
                                  style: kTitleTextstyle.copyWith(
                                      color: kSecounderyColor),
                                ),
                              ),
                              SizedBox(width: kDefaultPadding),
                              Icon(
                                Icons.visibility_outlined,
                                color: kSecounderyColor,
                              ),
                              SizedBox(width: kDefaultPadding / 3),
                              Text(
                                "View",
                                style: kTitleTextstyle.copyWith(
                                    color: kSecounderyColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "History",
                            style: kTitleTextstyle,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: kHeaderColor.withOpacity(0.5),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding / 2),
                      child: CustomButton(
                        text: "Create a Event",
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                ListView()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventsCard extends StatelessWidget {
  const EventsCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Row(
            children: [
              Image.asset("assets/icons/location_icon.png"),
              SizedBox(width: kDefaultPadding / 2),
              Text(
                "Location Here",
                style: kTitleTextstyle.copyWith(
                    color: kHeaderColor.withOpacity(0.5)),
              ),
              SizedBox(width: kDefaultPadding / 2),
              Image.asset("assets/icons/calendar_icon.png"),
              SizedBox(width: kDefaultPadding / 2),
              Text(
                "25 May, 2022",
                style: kTitleTextstyle.copyWith(
                    color: kHeaderColor.withOpacity(0.5)),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding / 3),
          Text(
            "Lorem Ipsum is simply dummy text of the printing",
            style: kTitleTextstyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Row(
            children: [
              Text(
                "1.6K User attend",
                style: kTitleTextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kHeaderColor.withOpacity(0.5)),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 2.5),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kSecounderyColor, width: 2),
                ),
                child: Text(
                  "New",
                  style: kTitleTextstyle.copyWith(
                      color: kSecounderyColor, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
