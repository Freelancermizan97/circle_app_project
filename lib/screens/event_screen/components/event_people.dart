import 'package:circle_app_project/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventPeople extends StatelessWidget {
  const EventPeople({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kDefaultPadding),
            Padding(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                bottom: kDefaultPadding,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: kTitleTextstyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: kHeaderColor.withOpacity(0.8)),
                  children: [
                    TextSpan(text: "Your  "),
                    TextSpan(
                        text: "25 Mutual ",
                        style:
                            kTitleTextstyle.copyWith(color: kSecounderyColor)),
                    TextSpan(text: "people attended "),
                  ],
                ),
              ),
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img1.png",
              name: "Tittany Jay",
              connects: "1.5M Connects",
              buttonText: "Connect",
              bgColor: kSecounderyColor.withOpacity(0.1),
              borderColor: kSecounderyColor,
              buttonTextColor: kSecounderyColor,
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img5.png",
              name: "Rias Nawel",
              connects: "1.5M Connects",
              buttonText: "Message",
              bgColor: kSecounderyColor,
              borderColor: kSecounderyColor,
              buttonTextColor: Colors.white,
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img2.png",
              name: "James Lee",
              connects: "1.5M Connects",
              buttonText: "Connect",
              bgColor: kSecounderyColor.withOpacity(0.1),
              borderColor: kSecounderyColor,
              buttonTextColor: kSecounderyColor,
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img3.png",
              name: "Tamanna",
              connects: "1.5M Connects",
              buttonText: "Message",
              bgColor: kSecounderyColor,
              borderColor: kSecounderyColor,
              buttonTextColor: Colors.white,
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img4.png",
              name: "Tittany Jay",
              connects: "1.5M Connects",
              buttonText: "Connect",
              bgColor: kSecounderyColor.withOpacity(0.1),
              borderColor: kSecounderyColor,
              buttonTextColor: kSecounderyColor,
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img1.png",
              name: "Tittany Jay",
              connects: "1.5M Connects",
              buttonText: "Connect",
              bgColor: kSecounderyColor.withOpacity(0.1),
              borderColor: kSecounderyColor,
              buttonTextColor: kSecounderyColor,
            ),
            PeopleAttendedCard(
              image: "assets/images/profile_img1.png",
              name: "Tittany Jay",
              connects: "1.5M Connects",
              buttonText: "Connect",
              bgColor: kSecounderyColor.withOpacity(0.1),
              borderColor: kSecounderyColor,
              buttonTextColor: kSecounderyColor,
            ),
          ],
        ),
      ),
    );
  }
}

class PeopleAttendedCard extends StatelessWidget {
  const PeopleAttendedCard({
    Key? key,
    required this.image,
    required this.name,
    required this.connects,
    required this.buttonText,
    required this.borderColor,
    required this.bgColor,
    required this.buttonTextColor,
  }) : super(key: key);

  final String image, name, connects, buttonText;
  final Color borderColor, bgColor, buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              SizedBox(width: kDefaultPadding / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: kTitleTextstyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: kHeaderColor.withOpacity(0.8)),
                  ),
                  Text(
                    connects,
                    style: kTitleTextstyle.copyWith(
                        color: kHeaderColor.withOpacity(0.5)),
                  )
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  //showDialougeBOx(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: bgColor,
                    border: Border.all(
                      color: borderColor,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: kTitleTextstyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: buttonTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          color: kHeaderColor.withOpacity(0.3),
          height: 10,
          indent: 2,
          thickness: 1,
        ),
      ],
    );
  }
}

// showDialougeBOx(BuildContext context) {
//   showModalBottomSheet(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
//       backgroundColor: Colors.transparent,
//       context: (context),
//       builder: (context) {
//         return Container(
//           padding: EdgeInsets.symmetric(
//               horizontal: kDefaultPadding, vertical: kDefaultPadding),
//           height: double.infinity.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15.r),
//             color: Colors.white.withOpacity(0.2),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Image.asset(
//                   "assets/icons/lock_icon.png",
//                 ),
//                 SizedBox(height: kDefaultPadding / 2),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   child: Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//                     textAlign: TextAlign.center,
//                     style: kTitleTextstyle,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       });
// }
