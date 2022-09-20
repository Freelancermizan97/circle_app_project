import 'package:circle_app_project/screens/bottom_nav_bar/bottom_bar.dart';
import 'package:circle_app_project/screens/home_screen/home_page.dart';
import 'package:flutter/material.dart';

class BottomController extends StatefulWidget {
  const BottomController({super.key});

  static final List<Widget> _widgetsOptions = <Widget>[
    HomePage(),
    Center(child: Text('Connections')),
    Center(child: Text('My Card')),
    Center(child: Text('Events')),
    Center(child: Text('Business')),
  ];

  @override
  State<BottomController> createState() => _BottomControllerState();
}

class _BottomControllerState extends State<BottomController> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BottomController._widgetsOptions[_selectIndex]),
      bottomNavigationBar: BottomBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
