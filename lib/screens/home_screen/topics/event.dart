import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/home_screen/components/event_card.dart';
import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          EventCard(
            image: "assets/images/image2.png",
            date: "20 May, 2022",
            name: "Event Name Here",
            people: "1.5K People attend",
          ),
          EventCard(
            image: "assets/images/image2.png",
            date: "20 May, 2022",
            name: "name",
            people: "1.5K People attend",
          ),
          EventCard(
            image: "assets/images/image2.png",
            date: "20 May, 2022",
            name: "name",
            people: "1.5K People attend",
          ),
        ]),
      ),
    );
  }
}
