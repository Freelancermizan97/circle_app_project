import 'package:circle_app_project/constants.dart';
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatelessWidget {
  final bool borderAndColor;
  final String message;
  const AnimatedContainerWidget({
    Key? key,
    required this.borderAndColor,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: borderAndColor ? kSecounderyColor : Colors.transparent,
            border: borderAndColor
                ? Border.all(color: Colors.transparent)
                : Border.all(color: Colors.grey.shade400),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: kBackgroundColor,
              size: 14,
            ),
          ),
        ),
        const SizedBox(width: 7),
        Text(message),
      ],
    );
  }
}
