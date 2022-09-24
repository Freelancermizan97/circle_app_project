import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class CompanyPostsCard extends StatelessWidget {
  const CompanyPostsCard({
    Key? key,
    required this.companyName,
    required this.companyLocation,
    required this.time,
    required this.description,
    required this.image,
    required this.logo,
    required this.bgColor,
  }) : super(key: key);

  final String companyName;
  final String companyLocation;
  final String time;
  final String description;
  final String image;
  final String logo;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: kDefaultPadding,
      //   vertical: kDefaultPadding / 2,
      // ),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: CircleAvatar(
                  //radius: 20,
                  backgroundImage: AssetImage(logo),
                ),
              ),
              SizedBox(width: kDefaultPadding / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        companyName,
                        style: kHeadingTextStyle.copyWith(fontSize: 14),
                      ),
                      SizedBox(width: kDefaultPadding / 3),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            color: kHeaderColor.withOpacity(0.5),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(width: kDefaultPadding / 3),
                      Text(
                        time,
                        style: kTitleTextstyle.copyWith(
                            color: kHeaderColor.withOpacity(0.5)),
                      )
                    ],
                  ),
                  Text(
                    companyLocation,
                    style: kTitleTextstyle.copyWith(
                      fontSize: 13,
                      color: kHeaderColor.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            description,
            style: kTitleTextstyle,
          ),
          SizedBox(height: kDefaultPadding / 2),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image),
          )
        ],
      ),
    );
  }
}
