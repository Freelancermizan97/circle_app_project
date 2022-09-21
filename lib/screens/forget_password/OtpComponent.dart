import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtpComponent extends StatelessWidget {
  const OtpComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      child: SizedBox(
        height: size.height / 10,
        width: size.width / 5,
        child: TextFormField(
          textAlign: TextAlign.center,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: const InputDecoration(
            hintText: "0",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff009CFF)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff009CFF)),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff009CFF)),
            ),
          ),
          style: Theme.of(context).textTheme.headline5,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
