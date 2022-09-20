import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/home_screen/components/general_card.dart';
import 'package:circle_app_project/screens/home_screen/components/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          PlanCard(),

          //Profile
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 42.r,
                  backgroundColor: kSecounderyColor,
                  child: CircleAvatar(
                    radius: 40.r,
                    backgroundImage:
                        AssetImage('assets/images/profile_img.png'),
                  ),
                ),
                SizedBox(width: kDefaultPadding / 2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Riyad Mostofa",
                        style: kHeadingTextStyle.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "riyad@gmail.com",
                        style: kTitleTextstyle.copyWith(
                            color: kHeaderColor.withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //GENERAl
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
            child: Text(
              "GENERAL",
              style: kTitleTextstyle.copyWith(
                color: kHeaderColor.withOpacity(0.38),
                fontSize: 15.sp,
              ),
            ),
          ),
          buildDiv(),
          GeneralCard(
            image: "assets/icons/edit_profile_icon.png",
            title: "My Order",
          ),
          buildDiv(),
          GeneralCard(
            image: "assets/icons/wallet_icon.png",
            title: "My Wallet",
          ),
          buildDiv(),
          GeneralCard(
            image: "assets/icons/scan_icon.png",
            title: "Scan Business Card",
          ),
          buildDiv(),
          GeneralCard(
            image: "assets/icons/lock_icon.png",
            title: "Change Password",
          ),
          buildDiv(),
          GeneralCard(
            image: "assets/icons/suport_icon.png",
            title: "Support",
          ),
          buildDiv(),

          //Information
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
            child: Text(
              "INFORMATIONS",
              style: kTitleTextstyle.copyWith(
                color: kHeaderColor.withOpacity(0.38),
                fontSize: 15.sp,
              ),
            ),
          ),
          buildDiv(),
          InfoCard(title: "Terms and Conditions"),
          buildDiv(),
          InfoCard(title: "Privacy Ploicy"),
          buildDiv(),
          InfoCard(title: "About Us"),
          buildDiv(),

          SizedBox(height: kDefaultPadding),
          ListTile(
            onTap: () {},
            trailing: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: Text(
              "Logout",
              style: kTitleTextstyle.copyWith(
                color: kHeaderColor.withOpacity(0.84),
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }

  Divider buildDiv() {
    return Divider(
      height: 5.h,
      color: kDividerColor,
      thickness: 2.sp,
    );
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kSecounderyColor.withOpacity(0.9),
            kPrimaryColor.withOpacity(0.9),
          ],
        ),
      ),
      child: Row(
        children: [
          Text(
            "Change Your Plan",
            style: kTitleTextstyle.copyWith(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Image.asset("assets/icons/star_icon.png")
        ],
      ),
    );
  }
}
