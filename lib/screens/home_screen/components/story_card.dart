import 'package:circle_app_project/models/story_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    required this.stroy,
  }) : super(key: key);

  final Stroy stroy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 20,
                child: CircleAvatar(
                  backgroundImage: AssetImage(stroy.image),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3,
                        )),
                  ))
            ],
          ),
          SizedBox(height: kDefaultPadding / 2),
          SizedBox(
            width: 60.w,
            child: Text(
              stroy.name,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
