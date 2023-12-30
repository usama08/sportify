import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0.sp,
        elevation: 0,
        backgroundColor: const Color(0xffF6F6F6),
        title: Text(
          'Notification',
          style: AppStyles.homeAppBarTextStyle.copyWith(
              fontSize: 12.sp,
              color: AppStyles.black,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 18.sp,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        ImageAssetPath.homeNearbyActivityUser,
                        height: 35.sp,
                        width: 35.sp,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Steven Smith',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontSize: 10.sp,
                              color: AppStyles.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Tennis player',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontSize: 9.sp,
                              color: AppStyles.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Color(0xffD9D9D9),
              ),
              Padding(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      ImageAssetPath.icDummyUser,
                      height: 35.sp,
                      width: 35.sp,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Steven Finn',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontSize: 10.sp,
                              color: AppStyles.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Football player',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontSize: 9.sp,
                              color: AppStyles.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Color(0xffD9D9D9),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
