import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/card_information/qr_code_screen.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CardInfoScreen extends StatelessWidget {
  const CardInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: kSecounderyColor,
        ),
      ),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/visting_card_image.png"),
          ),
          SizedBox(height: kDefaultPadding),
          InfoCard(
            title: "Name",
            subTitle: "Michal Johns",
          ),
          InfoCard(
            title: "Job Position",
            subTitle: "Soution Manager",
          ),
          InfoCard(
            title: "Address",
            subTitle: "+00 123 456 789",
          ),
          InfoCard(
            title: "Phone Number",
            subTitle: "Michal Johns",
          ),
          InfoCard(
            title: "Email",
            subTitle: "jane@gmail.com",
          ),
          InfoCard(
            title: "Website",
            subTitle: "www.website.com",
          ),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: CustomButton(
              text: "Add Contacts to My Wallet",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QRCode(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListTile(
            title: Text(
              title,
              style: kHeadingTextStyle.copyWith(
                  fontSize: 14, color: kHeaderColor.withOpacity(0.84)),
            ),
            subtitle: Text(
              subTitle,
            ),
          ),
        ),
        Divider(
          height: 5,
          color: kDividerColor,
          thickness: 2,
        ),
      ],
    );
  }
}
