import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class ConnectionUser extends StatelessWidget {
  final String name;
  final String title;
  final String avatarPath;

  const ConnectionUser({
    Key? key,
    required this.name,
    required this.title,
    required this.avatarPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text(name),
            subtitle: Text(title),
            leading: CircleAvatar(backgroundImage: AssetImage(avatarPath)),
            trailing: SizedBox(
              width: 60,
              child: Row(
                children: [
                  PopupMenuButton(
                    elevation: 0,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 1,
                          child: Row(
                            children: const [
                              Icon(Icons.delete_outline),
                              Text(
                                "Remove",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ],
                    child: const ImageIcon(
                      AssetImage("assets/icons/chat_icon.png"),
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(onTap: () {}, child: const Icon(Icons.more_vert))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: kDefaultPadding - 5,
        ),
      ],
    );
  }
}
