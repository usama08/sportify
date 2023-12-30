import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class VenueServiceTab extends StatelessWidget {
  const VenueServiceTab({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 8),
          child: Text(
            text,
            style: AppStyles.activityJoinTabingText
                .copyWith(color: AppStyles.black.withOpacity(0.50), fontSize: 12.sp),
          ),
        ),
      ],
    );
  }
}
