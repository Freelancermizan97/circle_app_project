import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kBackgroundColor,
      ),
      child: SafeArea(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ImageIcon(
                AssetImage("assets/icons/attacment_icon.png"),
                color: Colors.black,
              ),
            ),
            SizedBox(width: kDefaultPadding / 2),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ImageIcon(
                AssetImage("assets/icons/voice_icon.png"),
                color: Colors.black,
              ),
            ),
            SizedBox(width: kDefaultPadding / 2),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Write message...",
                            hintStyle: kTitleTextstyle.copyWith(
                                color: kHeaderColor.withOpacity(0.3))),
                      ),
                    ),
                    ImageIcon(
                      AssetImage("assets/icons/send_icon.png"),
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
