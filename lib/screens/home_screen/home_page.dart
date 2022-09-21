import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';
import 'body.dart';
import 'components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      // appBar: buildAppBar(),
      body: Body(),
      drawer: MyDrawer(),
    );
  }
}
