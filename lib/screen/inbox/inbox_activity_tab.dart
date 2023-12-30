import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class InboxActivityTab extends StatefulWidget {
  const InboxActivityTab({Key? key}) : super(key: key);

  @override
  State<InboxActivityTab> createState() => _InboxActivityTabState();
}

class _InboxActivityTabState extends State<InboxActivityTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        ImageAssetPath.greenGroup,
                        fit: BoxFit.fill,
                        width: 30.sp,
                        height: 30.sp,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ball machine rental with or w/o coach',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black),
                          ),
                          Text(
                            'Badminton, THU 3 Mar',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.43)),
                          ),
                          Text(
                            'Roman, OK',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black.withOpacity(0.75)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'THU, 3 mar',
                      style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppStyles.black.withOpacity(0.42)),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
