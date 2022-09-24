import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/network_screen/match_screen.dart';
import 'package:circle_app_project/screens/network_screen/widgets/options.dart';
import 'package:circle_app_project/screens/network_screen/widgets/prompts_card.dart';
import 'package:circle_app_project/screens/network_screen/widgets/tag_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetwrokScreen extends StatelessWidget {
  const NetwrokScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: Icon(
          Icons.arrow_back,
          color: kSecounderyColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        AssetImage("assets/images/profile_img1cc.png"),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 4,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: kActiveStatus,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding),
            Text(
              "Tittany Jay",
              style: kHeadingTextStyle.copyWith(
                fontSize: 22.sp,
                color: kHeaderColor.withOpacity(0.85),
              ),
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              "Branding Designer",
              style: kTitleTextstyle.copyWith(
                color: kHeaderColor.withOpacity(0.84),
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has",
                textAlign: TextAlign.center,
                style: kTitleTextstyle.copyWith(
                  color: kHeaderColor.withOpacity(0.54),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Options(
                        image: "assets/icons/age_icon.png",
                        text: "25 Year",
                      ),
                      Options(
                        image: "assets/icons/business_icon.png",
                        text: "Branding Designer",
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Options(
                        image: "assets/icons/apartment_icon.png",
                        text: "Digital Agency, China",
                      ),
                      Options(
                        image: "assets/icons/location_icon.png",
                        text: "Dhaka, Bangladesh",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding),

            //<-------Here For---------->
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: kDefaultPadding),
                    child: Text(
                      "Here For",
                      style: kTitleTextstyle.copyWith(
                          color: kSecounderyColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      "Making Business Connections",
                      style: kTitleTextstyle.copyWith(
                        fontSize: 14,
                        color: kHeaderColor.withOpacity(0.54),
                      ),
                    ),
                  ),
                  Divider(
                    color: kDividerColor,
                    height: 5,
                    thickness: 2,
                  ),

                  //<-------Tags---------->
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      "Tags",
                      style: kTitleTextstyle.copyWith(
                          color: kSecounderyColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: kDefaultPadding),
                      child: Row(
                        children: [
                          TagCard(
                            color: kSecounderyColor,
                            text: "#Education",
                          ),
                          TagCard(
                            color: kPrimaryColor,
                            text: "#Fashion",
                          ),
                          TagCard(
                            color: kSecounderyColor,
                            text: "#Marketing",
                          ),
                          TagCard(
                            color: kPrimaryColor,
                            text: "#Fashion",
                          ),
                          TagCard(
                            color: kSecounderyColor,
                            text: "#Marketing",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Divider(
                    color: kDividerColor,
                    height: 5,
                    thickness: 2,
                  ),

                  //<-------Prompts---------->
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      "Prompts",
                      style: kTitleTextstyle.copyWith(
                          color: kSecounderyColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: kDefaultPadding),
                      child: Row(
                        children: [
                          PromptsCard(
                            color: kSecounderyColor,
                            title: "Dinner guest i’d like to have",
                            subTitle:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting...",
                          ),
                          PromptsCard(
                            color: kPrimaryColor,
                            title: "Biggest business achievement",
                            subTitle:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting...",
                          ),
                          PromptsCard(
                            color: kSecounderyColor,
                            title: "Dinner guest i’d like to have",
                            subTitle:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting...",
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: kDefaultPadding),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            //width: double.infinity,
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.block,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Expanded(
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MatchScreen(),
                                )),
                            child: Container(
                              //width: double.infinity,
                              padding: EdgeInsets.all(kDefaultPadding),
                              decoration: BoxDecoration(
                                color: kSecounderyColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ImageIcon(
                                AssetImage("assets/icons/add_user.png"),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
