import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class SuggestedUserCard extends StatelessWidget {
  const SuggestedUserCard({
    Key? key,
    required this.name,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String name;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                name,
                style: kTitleTextstyle.copyWith(fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: kDefaultPadding / 3),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: kHeaderColor.withOpacity(0.5)),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding / 1.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      kSecounderyColor.withOpacity(0.9),
                      kPrimaryColor.withOpacity(0.9),
                    ],
                  ),
                ),
                child: Text(
                  "Connect",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Image.asset("assets/icons/close_square_icon.png"),
        ),
      ],
    );
  }
}
