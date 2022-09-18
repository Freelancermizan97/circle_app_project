import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double w = size.width;
    double h = size.height;

    path.lineTo(0, h - 100);
    path.quadraticBezierTo(w / 2, h, w, h - 100);
    path.lineTo(w, 0);

    path.close();

    //path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
    //throw UnimplementedError();
  }
}
