import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.image,
    required this.date,
    required this.name,
    required this.people,
  }) : super(key: key);

  final String image;
  final String date;
  final String name;
  final String people;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10),
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
          Text(
            date,
            style:
                kTitleTextstyle.copyWith(color: kSecounderyColor, fontSize: 13),
          ),
          SizedBox(height: kDefaultPadding / 3),
          Text(
            name,
            style: kTitleTextstyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            people,
            style: kTitleTextstyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: kHeaderColor.withOpacity(0.5)),
          ),
          SizedBox(height: kDefaultPadding / 2),
          CustomButton(text: "Add to Calendar")
        ],
      ),
    );
  }
}
