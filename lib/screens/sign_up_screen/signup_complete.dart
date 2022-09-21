import 'package:flutter/material.dart';

class SignUpComplete extends StatelessWidget {
  const SignUpComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: [
              Color(0xff019DA2),
              Color(0xff009CFF),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.white,
              size: 150.0,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sign Up Complete',
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Your account has been created',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}