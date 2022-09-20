import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/models/story_data.dart';
import 'package:circle_app_project/screens/home_screen/components/event_card.dart';
import 'package:circle_app_project/screens/home_screen/components/story_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
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
        ),
        SizedBox(height: kDefaultPadding / 2),
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kSecounderyColor,
                kPrimaryColor,
              ],
            ),
          ),
          child: Column(
            children: [
              Text(
                "15h : 42m : 15s",
                style: kHeadingTextStyle.copyWith(
                  fontSize: 28.sp,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                "Until your next Profile Cards",
                style: kTitleTextstyle.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 1.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "View More Profile Cards",
                    style: kTitleTextstyle.copyWith(
                        color: kSecounderyColor, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: kDefaultPadding / 2),

        ///Happening Now
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Happening Now",
            style: kTitleTextstyle.copyWith(
                fontWeight: FontWeight.w700,
                color: kHeaderColor.withOpacity(0.85)),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/image1.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/live_icon.png"),
                        SizedBox(width: kDefaultPadding / 3),
                        Text(
                          "Live",
                          style: kTitleTextstyle.copyWith(
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Text(
                          "\$85",
                          style: kTitleTextstyle.copyWith(
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing",
                      style: kTitleTextstyle.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: kHeaderColor.withOpacity(0.85),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      "2.3K People attend",
                      style: kTitleTextstyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: kHeaderColor.withOpacity(0.50),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: kDefaultPadding),

        //Event
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: [
              Text(
                "Events Attending",
                style: kTitleTextstyle.copyWith(
                    fontWeight: FontWeight.w700,
                    color: kHeaderColor.withOpacity(0.85)),
              ),
              Spacer(),
              Text(
                "View All",
                style: kTitleTextstyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kSecounderyColor,
                ),
              ),
            ],
          ),
        ),

        Padding(
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
        ),

        //S
        SizedBox(height: 200)
      ],
    );
  }
}
