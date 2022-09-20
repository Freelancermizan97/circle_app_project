import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/home_screen/components/company_post_card.dart';
import 'package:flutter/material.dart';

class Opportunities extends StatelessWidget {
  const Opportunities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Opportunities ",
                style: kTitleTextstyle.copyWith(
                    fontWeight: FontWeight.w700,
                    color: kHeaderColor.withOpacity(0.85)),
              ),
              Spacer(),
              Text(
                "View All",
                style: kTitleTextstyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kSecounderyColor,
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding / 2),
          CompanyPostsCard(
            logo: "assets/images/brand_logo1.png",
            companyName: "Creative Studios",
            companyLocation: "Design Agency Compnay",
            time: "5h ago",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... see more",
            image: "assets/images/image4.png",
          ),
          SizedBox(height: kDefaultPadding / 2),
          CompanyPostsCard(
            logo: "assets/images/brand_logo2.png",
            companyName: "Artifice Films",
            companyLocation: "Design Agency Compnay",
            time: "5h ago",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... see more",
            image: "assets/images/image5.png",
          ),
        ],
      ),
    );
  }
}
