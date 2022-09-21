import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class RequestUser extends StatelessWidget {
  final String name;
  final String title;
  final String avatarPath;
  final int days;
  const RequestUser({
    Key? key,
    required this.name,
    required this.title,
    required this.avatarPath,
    required this.days,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                title: Text(name),
                subtitle: Text(title),
                leading: CircleAvatar(backgroundImage: AssetImage(avatarPath)),
                trailing: Text("$days days ago"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding * 1,
                          horizontal: kDefaultPadding * 3,
                        ),
                        backgroundColor: kSecounderyColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                color: kPrimaryColor.withAlpha(0xff019DA2)))),
                    child: const Text("Connect"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(
                                vertical: kDefaultPadding * 1,
                                horizontal: kDefaultPadding * 3)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white.withAlpha(0xffE5E5E5)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color: kPrimaryColor
                                            .withAlpha(0xff019DA2))))),
                    child: Text(
                      "Decline",
                      style:
                          TextStyle(color: kPrimaryColor.withAlpha(0xff019DA2)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding - 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: kDefaultPadding - 5,
        ),
      ],
    );
  }
}
