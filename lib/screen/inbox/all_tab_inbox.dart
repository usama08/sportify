import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/inbox/inbox_btn.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AllTabInbox extends StatefulWidget {
  const AllTabInbox({Key? key}) : super(key: key);

  @override
  State<AllTabInbox> createState() => _AllTabInboxState();
}

class _AllTabInboxState extends State<AllTabInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Groups',
            style: AppStyles.appBarTitleTextStyle
                .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InboxBtn(
                onClicked: () {},
                gameName: 'Create Group',
                gameImage: ImageAssetPath.crateNewGroup,
              ),
              InboxBtn(
                onClicked: () {},
                gameName: 'Export Group',
                gameImage: ImageAssetPath.exportGroupS,
              )
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            'Peoples & Activities',
            style: AppStyles.appBarTitleTextStyle
                .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.sp, right: 20.sp, top: 15.sp, bottom: 15.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      ImageAssetPath.homeNearbyActivityUser,
                      fit: BoxFit.fill,
                      width: 40.sp,
                      height: 40.sp,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  SizedBox(
                    width: 8.sp,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Steven Smith',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black),
                      ),
                      Text(
                        'Since June 2020',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.50)),
                      ),
                      Text(
                        'Roman, OK',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      ImageAssetPath.greenGroup,
                      fit: BoxFit.fill,
                      width: 40.sp,
                      height: 40.sp,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ball machine rental with or w/o coach',
                          style: AppStyles.smallTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppStyles.black.withOpacity(0.9)),
                        ),
                        Text(
                          'Badminton, THU 3 Mar',
                          style: AppStyles.smallTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppStyles.grey.withOpacity(0.9)),
                        ),
                        Text(
                          'Roman, OK',
                          style: AppStyles.smallTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppStyles.black.withOpacity(0.7)),
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
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppStyles.grey.withOpacity(0.9)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
