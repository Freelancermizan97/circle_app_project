import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/event_screen/components/event_people.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsBuy extends StatelessWidget {
  const EventDetailsBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0.r,
            right: 0.r,
            top: 0.r,
            child: Container(
              height: 350.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image12.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
              top: 80.r,
              left: 20.r,
              right: 20.r,
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kHeaderColor.withOpacity(0.3),
                      ),
                      child: Transform.rotate(
                        angle: 56,
                        child: ImageIcon(
                          AssetImage("assets/icons/send_icon.png"),
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            left: 0.r,
            right: 0.r,
            top: 330.r,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              height: MediaQuery.of(context).size.height.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lorem Ipsum is simply \ndummy text of the printing",
                          style: kHeadingTextStyle.copyWith(fontSize: 20),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding / 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: kSecounderyColor,
                          ),
                          child: Text(
                            "\$145",
                            style: kTitleTextstyle.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "5K People attend",
                          style: kTitleTextstyle.copyWith(
                              color: kHeaderColor.withOpacity(0.5)),
                        ),
                        Text(
                          "View All",
                          style:
                              kTitleTextstyle.copyWith(color: kSecounderyColor),
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      "Description",
                      style: kTitleTextstyle.copyWith(
                        color: kHeaderColor.withOpacity(0.8),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                      style: kTitleTextstyle.copyWith(
                          color: kHeaderColor.withOpacity(0.8)),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Card(
                      image: "assets/icons/location_icon.png",
                      title: "Country, City Name",
                      subTitle: "Place Name Here",
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Card(
                      image: "assets/icons/calendar_icon.png",
                      title: "12:00 PM to 04:00 PM",
                      subTitle: "May 15, 2022 to May 20, 2022",
                    ),
                    SizedBox(height: kDefaultPadding),
                    CustomButton(
                      text: "Buy Ticket ",
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventPeople(),
                          )),
                    ),
                    SizedBox(height: kDefaultPadding * 15),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OutlineBorderButton extends StatelessWidget {
  const OutlineBorderButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kSecounderyColor, width: 1),
        ),
        child: Center(
          child: Text(
            text,
            style: kTitleTextstyle.copyWith(
              color: kSecounderyColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kSecounderyColor.withOpacity(0.08),
          ),
          child: ImageIcon(
            AssetImage(image),
            //size: 30,
            color: kSecounderyColor,
          ),
        ),
        SizedBox(width: kDefaultPadding / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kTitleTextstyle.copyWith(
                  color: kHeaderColor.withOpacity(0.5)),
            ),
            SizedBox(height: kDefaultPadding / 3),
            Text(
              subTitle,
              style: kTitleTextstyle.copyWith(
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        )
      ],
    );
  }
}
