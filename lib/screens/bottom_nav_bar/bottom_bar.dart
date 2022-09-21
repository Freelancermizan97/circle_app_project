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
          icon: ImageIcon(AssetImage("assets/icons/home_icon.png")),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/connection_icon.png")),
          label: "Connections",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/card_icon.png")),
          label: "My Card",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/event_icon_blc.png")),
          label: "Events",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/business_icon.png")),
          label: "Business",
        ),
      ],
    );
  }
}
