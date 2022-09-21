import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/models/suggested_user_data.dart';
import 'package:circle_app_project/screens/home_screen/components/suggested_user_card.dart';
import 'package:flutter/material.dart';

class SuggestedUsers extends StatelessWidget {
  const SuggestedUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
          ),
          child: Text(
            "Suggested Users",
            style: kTitleTextstyle.copyWith(
                fontWeight: FontWeight.w700,
                color: kHeaderColor.withOpacity(0.85)),
          ),
        ),
        SizedBox(height: kDefaultPadding / 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  suggestedUserData.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(left: kDefaultPadding),
                        child: SuggestedUserCard(
                          suggestedUser: suggestedUserData[index],
                        ),
                      ))),
        ),
      ],
    );
  }
}
