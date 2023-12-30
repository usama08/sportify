import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityAddImageAndText extends StatelessWidget {
  const ActivityAddImageAndText(
      {Key? key, required this.text, required this.prefixIconData})
      : super(key: key);

  final String text;
  final IconData? prefixIconData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: [
          Icon(
            prefixIconData,
            size: 15.sp,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: AppStyles.activityJoinTabingText.copyWith(
                color: AppStyles.black.withOpacity(0.40),
                fontWeight: FontWeight.bold,
                fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
