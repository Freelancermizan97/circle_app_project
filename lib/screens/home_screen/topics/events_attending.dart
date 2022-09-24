import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/models/event_data.dart';
import 'package:circle_app_project/screens/event_screen/components/event_attending_more.dart';
import 'package:circle_app_project/screens/home_screen/components/event_card.dart';
import 'package:flutter/material.dart';

class EventsAttending extends StatelessWidget {
  const EventsAttending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
          ),
          child: Row(
            children: [
              Text(
                "Events Attending",
                style: kTitleTextstyle.copyWith(
                    fontWeight: FontWeight.w700,
                    color: kHeaderColor.withOpacity(0.85)),
              ),
              Spacer(),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventsAttendingMore(),
                    )),
                child: Text(
                  "View All",
                  style: kTitleTextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kSecounderyColor,
                  ),
                ),
              ),
              SizedBox(width: kDefaultPadding)
            ],
          ),
        ),
        SizedBox(height: kDefaultPadding / 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            eventData.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: EventCard(
                event: eventData[index],
              ),
            ),
          )),
        ),
      ],
    );
  }
}
