import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/login_screen/login.dart';
import 'package:circle_app_project/screens/sign_up_screen/signup_first_screen.dart';
import 'package:circle_app_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  final List _list = [
    {
      "head": "Free Account Features",
      "title": "My Circle Free",
      "icon": "",
      "fistCardIcon": "assets/icons/Search.png",
      "fistCardText": "Basic Search\nFilters",
      "secondCardIcon": "assets/icons/profile_card.png",
      "secondCardText": "20 Daily\nProfile Cards",
      "thirdCardIcon": "assets/icons/business_card.png",
      "thirdCardText": "Design A Digital\nBusiness Card",
      "fourCardIcon": "assets/icons/hand.png",
      "fourCardText": "1 Daily\nIntroduction"
    },
    {
      "head": "Premium Account Features",
      "title": "My Circle Pro",
      "icon": "assets/icons/bach.png",
      "fistCardIcon": "assets/icons/Search.png",
      "fistCardText": "Advanced\nSearch Filters",
      "secondCardIcon": "assets/icons/hand.png",
      "secondCardText": "3 Daily\nIntroductions",
      "thirdCardIcon": "assets/icons/profile_card.png",
      "thirdCardText": "40 Daily\nProfile Cards",
      "fourCardIcon": "assets/icons/Show.png",
      "fourCardText": "See Who Wants\nTo Connect"
    },
    {
      "head": "Premium Account Features",
      "title": "My Circle Pro",
      "icon": "assets/icons/bach.png",
      "fistCardIcon": "assets/icons/flag.png",
      "fistCardText": "My\nGlobal Circle ",
      "secondCardIcon": "assets/icons/rocket.png",
      "secondCardText": "Boosted\nExposure",
      "thirdCardIcon": "assets/icons/exclusive.png",
      "thirdCardText": "Exclusive\nDigital Events",
      "fourCardIcon": "assets/icons/Chat.png",
      "fourCardText": "Advanced\nMessaging"
    },
    {
      "head": "Premium Account Features",
      "title": "My Circle Pro",
      "icon": "assets/icons/bach.png",
      "fistCardIcon": "assets/icons/Close Square.png",
      "fistCardText": "Retract\nRequest",
      "secondCardIcon": "assets/icons/Notification.png",
      "secondCardText": "Reminder\nMessages",
      "thirdCardIcon": "assets/icons/Vector.png",
      "thirdCardText": "Get\nSuggested",
      "fourCardIcon": "assets/icons/business_card.png",
      "fourCardText": "Design A Digital\nBusiness Card"
    },
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));

    return Scaffold(
        body: SafeArea(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          const Color(0xFF019DA2),
          const Color(0xFF009CFF).withOpacity(0.8),
        ],
        begin: Alignment.topLeft, //begin of the gradient color
        end: const Alignment(0.3, 0.3), //end of the gradient color
        //stops: [0, 0.8]
      )),
      child: Column(children: [
        Expanded(
          child: PageView.builder(
            itemCount: _list.length,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: 59,
                  ),
                  Text(
                    _list[index]["head"],
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      padding: EdgeInsets.only(left: 20, right: 20, top: 35),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21),
                            topRight: Radius.circular(21),
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 97,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFF019DA2),
                                    const Color(0xFF009CFF).withOpacity(0.8),
                                  ],
                                  begin: Alignment
                                      .topLeft, //begin of the gradient color
                                  end: const Alignment(
                                      0.3, 0.3), //end of the gradient color
                                  //stops: [0, 0.8]
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _list[index]["title"],
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: "Sk-Modernist",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                _list[index]["icon"] != ""
                                    ? Image.asset(_list[index]["icon"])
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              cardItem(
                                  image: _list[index]["fistCardIcon"],
                                  text: _list[index]["fistCardText"],
                                  color: const Color(0xFF019DA2)),
                              SizedBox(
                                width: 15,
                              ),
                              cardItem(
                                  image: _list[index]["secondCardIcon"],
                                  text: _list[index]["secondCardText"],
                                  color: const Color(0xFF009CFF)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              cardItem(
                                  image: _list[index]["thirdCardIcon"],
                                  text: _list[index]["thirdCardText"],
                                  color: const Color(0xFF009CFF)),
                              SizedBox(
                                width: 15,
                              ),
                              cardItem(
                                  color: const Color(0xFF019DA2),
                                  text: _list[index]["fourCardText"],
                                  image: _list[index]["fourCardIcon"]),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 224,
          color: const Color(0xFFF5F5F5),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: _list.length,
                effect: ScrollingDotsEffect(
                    dotColor: const Color(0xFF000000).withOpacity(0.3),
                    activeDotColor: const Color(0xFF019DA2),
                    dotWidth: 8,
                    dotHeight: 8),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: CustomButton(
                  text:
                      selectIndex == _list.length - 1 ? "Sign Me Up!" : "Skip",
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpFirstScreen(),
                      )),
                ),
              ),
            ],
          ),
        ),
      ]),
    )));
  }

  Widget cardItem(
      {required String image, required String text, required Color color}) {
    return Expanded(
      child: Container(
        //height: 100,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Image.asset(image),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontFamily: "Sk-Modernist",
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
