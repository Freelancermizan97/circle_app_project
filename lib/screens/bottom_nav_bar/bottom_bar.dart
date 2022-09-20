import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final void Function(int) onTap;
  final int currentIndex;

  const BottomBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: kSecounderyColor),
      selectedItemColor: kSecounderyColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          //icon: Image.asset("assets/icons/home_icon.png"),
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          //icon: Image.asset("assets/icons/connection_icon.png"),
          icon: Icon(Icons.groups_outlined),
          label: "Connections",
        ),
        BottomNavigationBarItem(
          //icon: Image.asset("assets/icons/card_icon.png"),
          icon: Icon(Icons.badge_outlined),
          label: "My Card",
        ),
        BottomNavigationBarItem(
          //icon: Image.asset("assets/icons/event_icon_blc.png"),
          icon: Icon(Icons.event),
          label: "Events",
        ),
        BottomNavigationBarItem(
          //icon: Image.asset("assets/icons/business_icon.png"),
          icon: Icon(Icons.business_center_outlined),
          label: "Business",
        ),
      ],
    );
  }
}
