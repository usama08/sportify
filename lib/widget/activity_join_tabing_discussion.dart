import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityJoinTabingTextDiscussion extends StatelessWidget {
  const ActivityJoinTabingTextDiscussion(
      {Key? key, required this.text, required this.time})
      : super(key: key);
  final String text;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: AppStyles.activityJoinTabingText.copyWith(
                  color: AppStyles.black.withOpacity(0.67), fontSize: 10.sp),
            ),
          ),
          Text(
            time,
            style: AppStyles.activityJoinTabingText.copyWith(
                color: AppStyles.black.withOpacity(0.67), fontSize: 10.sp),
          ),
        ],
      ),
    );
  }
}
