import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/home_screen/components/company_post_card.dart';
import 'package:circle_app_project/screens/home_screen/topics/opportunities_topics.dart';
import 'package:circle_app_project/screens/network_screen/match_screen.dart';
import 'package:circle_app_project/screens/network_screen/widgets/options.dart';
import 'package:circle_app_project/screens/network_screen/widgets/prompts_card.dart';
import 'package:circle_app_project/screens/network_screen/widgets/tag_card.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart ';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

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
        actions: [
          Container(
            child: PopUpMenuItems(),
          ),
        ],
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
              "UI UX Designer",
              style: kTitleTextstyle.copyWith(
                color: kHeaderColor.withOpacity(0.84),
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              child: CustomButton(
                text: "Message",
                onTap: () {},
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
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/visting_card_image.png",
                        ),
                        SizedBox(width: kDefaultPadding),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: kBackgroundColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/icons/qr_code.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: kDividerColor,
                    height: 5,
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: kDefaultPadding, top: kDefaultPadding),
                    child: Text(
                      "Status",
                      style: kTitleTextstyle.copyWith(
                          color: kSecounderyColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      "I'm A Professional & Experienced UI/UX Designer. I bring years of experience to the table that I’m ready to leverage to improve your business: UX design, UI design, whatever you need.",
                      style: kTitleTextstyle.copyWith(
                        fontSize: 14,
                        color: kHeaderColor.withOpacity(0.54),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Divider(
                    color: kDividerColor,
                    height: 5,
                    thickness: 2,
                  ),

                  //<-------Here For---------->
                  Padding(
                    padding: EdgeInsets.only(
                        left: kDefaultPadding, top: kDefaultPadding),
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
                  Divider(
                    color: kDividerColor,
                    height: 5,
                    thickness: 2,
                  ),
                  SizedBox(height: kDefaultPadding),

                  //<-------Business Opportunity---------->
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Business Opportunity ",
                            style: kTitleTextstyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: kSecounderyColor),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          CompanyPostsCard(
                            bgColor: kBackgroundColor,
                            logo: "assets/images/brand_logo1.png",
                            companyName: "Creative Studios",
                            companyLocation: "Design Agency Compnay",
                            time: "5h ago",
                            description:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... see more",
                            image: "assets/images/image4.png",
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopUpMenuItems extends StatelessWidget {
  const PopUpMenuItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
        menuLis: [
          PopupMenuItem(
            child: ListTile(
              onTap: () {},
              leading: const Icon(Icons.report),
              title: const Text('Report'),
            ),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            child: ListTile(
              onTap: () {},
              leading: const Icon(Icons.block),
              title: const Text('Block'),
            ),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            child: ListTile(
              onTap: () {},
              leading: const Icon(Icons.cancel),
              title: const Text('Remove Connect'),
            ),
          ),
        ],
        icon: Icon(
          Icons.more_vert,
          color: Colors.black,
        ));
  }
}

// Pop Up Menu for loge Out
class PopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuLis;
  final Widget? icon;

  const PopUpMenu({Key? key, required this.menuLis, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      //padding: EdgeInsets.zero,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: ((context) => menuLis),
      icon: icon,
    );
  }
}
