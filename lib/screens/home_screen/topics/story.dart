import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/models/story_data.dart';
import 'package:circle_app_project/screens/home_screen/components/story_card.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
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
        child: Row(
          children: List.generate(
            stroyData.length,
            (index) => Padding(
              padding: EdgeInsets.only(right: kDefaultPadding / 3),
              child: StoryCard(
                stroy: stroyData[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
