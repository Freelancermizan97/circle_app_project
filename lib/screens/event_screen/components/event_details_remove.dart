import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/event_screen/components/event_details_buy.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsRemove extends StatelessWidget {
  const EventDetailsRemove({super.key});

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
                    Text(
                      "Lorem Ipsum is simply \ndummy text of the printing",
                      style: kHeadingTextStyle.copyWith(fontSize: 20),
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
                    OutlineBorderButton(
                      onTap: () {},
                      text: "Remove from Calendar ",
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    CustomButton(
                      text: "View Invoice",
                      onTap: () {
                        showDownloadInvoice(context);
                      },
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

  showDownloadInvoice(BuildContext context) {
    showModalBottomSheet(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        backgroundColor: Colors.transparent,
        context: (context),
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            height: 700.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Tittany Jay",
                    style: kHeadingTextStyle.copyWith(fontSize: 22),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    "#10 Road, City Name, Country Name",
                    style: kTitleTextstyle.copyWith(
                      color: kHeaderColor.withOpacity(0.8),
                    ),
                  ),
                  Text(
                    "Call: +00 123 456 789",
                    style: kTitleTextstyle.copyWith(
                        color: kHeaderColor.withOpacity(0.8)),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Event Name",
                            style: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.8)),
                          ),
                          Text(
                            "Invoice No.",
                            style: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.8)),
                          ),
                          Text(
                            "Invoice Date",
                            style: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.8)),
                          ),
                        ],
                      ),
                      SizedBox(width: kDefaultPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ":  Lorem Ipsum is simply",
                            style: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.8)),
                          ),
                          Text(
                            ":  MC #1202",
                            style: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.8)),
                          ),
                          Text(
                            ":  22-04-2022",
                            style: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.8)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Divider(
                    color: kHeaderColor.withOpacity(0.3),
                    height: 10,
                    indent: 2,
                    thickness: 2,
                  ),
                  SizedBox(height: kDefaultPadding),
                  PriceCard(
                    title: "Ticket Price",
                    price: "€110.00",
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  PriceCard(
                    title: "Tax",
                    price: "€10.00",
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Divider(
                    color: kHeaderColor.withOpacity(0.3),
                    height: 10,
                    indent: 2,
                    thickness: 2,
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  PriceCard(
                    title: "Total Amount",
                    price: "€120.00",
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Divider(
                    color: kHeaderColor.withOpacity(0.3),
                    height: 10,
                    indent: 2,
                    thickness: 2,
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Row(
                    children: [
                      Image.asset("assets/icons/visa_icon.png"),
                      SizedBox(width: kDefaultPadding / 2),
                      Text(
                        "Visa Card",
                        style: kTitleTextstyle.copyWith(
                          fontWeight: FontWeight.w700,
                          color: kHeaderColor.withOpacity(0.8),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "€120.00",
                        style: kTitleTextstyle.copyWith(
                          fontWeight: FontWeight.w700,
                          color: kHeaderColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  CustomButton(
                    text: "Downlaod Invoice",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventDetailsBuy(),
                        )),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class PriceCard extends StatelessWidget {
  const PriceCard({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kTitleTextstyle.copyWith(
            fontWeight: FontWeight.w700,
            color: kHeaderColor.withOpacity(0.8),
          ),
        ),
        Text(
          price,
          style: kTitleTextstyle.copyWith(
            fontWeight: FontWeight.w700,
            color: kHeaderColor.withOpacity(0.8),
          ),
        )
      ],
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
          border: Border.all(
            color: kSecounderyColor,
            width: 1,
          ),
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
