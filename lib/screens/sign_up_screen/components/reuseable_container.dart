import 'package:circle_app_project/constants.dart';
import 'package:circle_app_project/screens/sign_up_screen/signup_promote2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseTextContent extends StatelessWidget {
  final String textHint;
  const ReUseTextContent({super.key, required this.textHint});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const SignUpPromoteScreen2()));
      },
      child: Container(
        //padding: EdgeInsets.all(size.width * 0.05 ),
        margin: EdgeInsets.only(top: size.height * 0.02),
        width: size.width - 20,
        height: size.height / 13,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [kTitleColor, kPrimaryColor]),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            textHint,
            style: GoogleFonts.modernAntiqua(
                color: kBackgroundColor, fontSize: 15),
            // color: kBackgroundColor,
            //   fontSize: 15,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
