import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/home_screen/components/suggested_user_card.dart';
import 'package:flutter/material.dart';

class SuggestedUsers extends StatelessWidget {
  const SuggestedUsers({
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
          SuggestedUserCard(
            image: "assets/images/profile_img1.png",
            name: "Tittany Jay",
            title: "UI Designer",
          ),
          SuggestedUserCard(
            image: "assets/images/profile_img2.png",
            name: "Tittany Jay",
            title: "UI Designer",
          ),
          SuggestedUserCard(
            image: "assets/images/profile_img1.png",
            name: "Tittany Jay",
            title: "UI Designer",
          ),
          SuggestedUserCard(
            image: "assets/images/profile_img2.png",
            name: "Tittany Jay",
            title: "UI Designer",
          ),
        ]),
      ),
    );
  }
}
