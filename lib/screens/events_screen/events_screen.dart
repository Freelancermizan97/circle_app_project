import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: kSecounderyColor,
            ),
            Text(
              "Events Attending",
              style: kTitleTextstyle.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EventsCard(
              image: "assets/images/image2.png",
            ),
            SizedBox(height: kDefaultPadding),
            EventsCard(
              image: "assets/images/image3.png",
            ),
          ],
        ),
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
          Text(
            "1.6K User attend",
            style: kTitleTextstyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: kHeaderColor.withOpacity(0.5)),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            "More info",
            style:
                kTitleTextstyle.copyWith(color: kSecounderyColor, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
