import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityJoinTabingImageandText extends StatelessWidget {
  const ActivityJoinTabingImageandText(
      {Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 13.sp,
          width: 13.sp,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
        SizedBox(
          width: 15.sp,
        ),
        Text(
          text,
          style: AppStyles.activityJoinTabingText.copyWith(
              color: AppStyles.black.withOpacity(0.75), fontSize: 10.sp),
        ),
      ],
    );
  }
}
