import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/home_screen/components/company_post_card.dart';
import 'package:flutter/material.dart';

class TrendingTopoics extends StatelessWidget {
  const TrendingTopoics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trending Topics ",
            style: kTitleTextstyle.copyWith(
                fontWeight: FontWeight.w700,
                color: kHeaderColor.withOpacity(0.85)),
          ),
          SizedBox(height: kDefaultPadding / 2),
          CompanyPostsCard(
            bgColor: Colors.white,
            logo: "assets/images/brand_logo3.png",
            companyName: "Creative Studios",
            companyLocation: "Design Agency Compnay",
            time: "5h ago",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... see more",
            image: "assets/images/image6.png",
          ),
          SizedBox(height: kDefaultPadding / 2),
          CompanyPostsCard(
            bgColor: Colors.white,
            logo: "assets/images/brand_logo4.png",
            companyName: "Creative Studios",
            companyLocation: "Design Agency Compnay",
            time: "5h ago",
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... see more",
            image: "assets/images/image7.png",
          ),
        ],
      ),
    );
  }
}
