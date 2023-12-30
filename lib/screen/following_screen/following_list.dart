import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/following_screen/following_users_details_screen.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class FollowingList extends StatelessWidget {
  const FollowingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const FollowingUsersDetailScreen());
                },
                child: Padding(
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
                      Text(
                        'Steven Smith',
                        style: AppStyles.homeAppBarTextStyle.copyWith(
                            fontSize: 10.sp,
                            color: AppStyles.black,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      ClipOval(
                                        child: Image.asset(
                                          ImageAssetPath.homeNearbyActivityUser,
                                          height: 50.sp,
                                          width: 50.sp,
                                          fit: BoxFit.fill,
                                          filterQuality: FilterQuality.high,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Text(
                                        "If you change your mind,you'll have to request to follow  Steven Smith again",
                                        style: AppStyles.homeAppBarTextStyle
                                            .copyWith(
                                                fontSize: 10.sp,
                                                color: AppStyles.black,
                                                fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 30.sp,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 23.sp,
                                          width: 100.sp,
                                          decoration: BoxDecoration(
                                              color: AppStyles.primary,
                                              borderRadius:
                                                  BorderRadius.circular(4.sp)),
                                          child: Center(
                                            child: Text(
                                              'Unfollow',
                                              style: AppStyles.sliderText
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 23.sp,
                                          width: 100.sp,
                                          decoration: BoxDecoration(
                                              color: AppStyles.primary,
                                              borderRadius:
                                                  BorderRadius.circular(4.sp)),
                                          child: Center(
                                            child: Text(
                                              'Cancel',
                                              style: AppStyles.sliderText
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 23.sp,
                          width: 60.sp,
                          decoration: BoxDecoration(
                              color: AppStyles.primary,
                              borderRadius: BorderRadius.circular(4.sp)),
                          child: Center(
                            child: Text(
                              'Following',
                              style: AppStyles.sliderText.copyWith(
                                  color: Colors.white,
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.sp,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Color(0xffD9D9D9),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const FollowingUsersDetailScreen());
                },
                child: Padding(
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
                      Text(
                        'Steven Finn',
                        style: AppStyles.homeAppBarTextStyle.copyWith(
                            fontSize: 10.sp,
                            color: AppStyles.black,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        ImageAssetPath.icDummyUser,
                                        height: 50.sp,
                                        width: 50.sp,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Text(
                                        "If you change your mind,you'll have to request to follow  Steven Finn again",
                                        style: AppStyles.homeAppBarTextStyle
                                            .copyWith(
                                                fontSize: 10.sp,
                                                color: AppStyles.black,
                                                fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 30.sp,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 23.sp,
                                          width: 100.sp,
                                          decoration: BoxDecoration(
                                              color: AppStyles.primary,
                                              borderRadius:
                                                  BorderRadius.circular(4.sp)),
                                          child: Center(
                                            child: Text(
                                              'Unfollow',
                                              style: AppStyles.sliderText
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 23.sp,
                                          width: 100.sp,
                                          decoration: BoxDecoration(
                                              color: AppStyles.primary,
                                              borderRadius:
                                                  BorderRadius.circular(4.sp)),
                                          child: Center(
                                            child: Text(
                                              'Cancel',
                                              style: AppStyles.sliderText
                                                  .copyWith(
                                                      color: Colors.white,
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 23.sp,
                          width: 60.sp,
                          decoration: BoxDecoration(
                              color: AppStyles.primary,
                              borderRadius: BorderRadius.circular(4.sp)),
                          child: Center(
                            child: Text(
                              'Following',
                              style: AppStyles.sliderText.copyWith(
                                  color: Colors.white,
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.sp,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Color(0xffD9D9D9),
              ),
            ],
          );
        });
  }
}
