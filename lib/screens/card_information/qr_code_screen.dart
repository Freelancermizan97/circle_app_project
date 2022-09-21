import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class QRCode extends StatelessWidget {
  const QRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor.withOpacity(0.7),
      appBar: buildAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // image: DecorationImage(
                      //   //fit: BoxFit.cover,
                      //   image: AssetImage("assets/icons/qr_code.png"),
                      // ),
                    ),
                    child: Center(
                        child: ClipRRect(
                      child: Image.asset(
                        "assets/icons/qr_code.png",
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    )),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Text(
            "Tittany Jay Digital Business Card",
            style: kHeadingTextStyle.copyWith(fontSize: 16),
          ),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has",
              textAlign: TextAlign.center,
              style: kTitleTextstyle.copyWith(
                color: kHeaderColor.withOpacity(0.5),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
        color: kSecounderyColor,
      ),
      actions: [
        Row(
          children: [
            Icon(
              Icons.flash_on_outlined,
              color: kHeaderColor,
            ),
            Text(
              "AUTO",
              style: kTitleTextstyle.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: kDefaultPadding),
          ],
        ),
      ],
    );
  }
}
