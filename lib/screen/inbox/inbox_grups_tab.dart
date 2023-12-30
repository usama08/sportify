import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class InboxGroupsTab extends StatefulWidget {
  const InboxGroupsTab({Key? key}) : super(key: key);

  @override
  State<InboxGroupsTab> createState() => _InboxGroupsTabState();
}

class _InboxGroupsTabState extends State<InboxGroupsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          'Groups',
          style: AppStyles.appBarTitleTextStyle
              .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          ImageAssetPath.exportGroups,
          height: 150.sp,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 15.sp, right: 15.sp, top: 25.sp, bottom: 25.sp),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 35.sp,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: AppStyles.primary, width: 1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'EXPORT GROUP',
                  style: TextStyle(
                    color: AppStyles.primary,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
