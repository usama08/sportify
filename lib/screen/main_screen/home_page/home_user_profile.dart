import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
import 'package:sportify/screen/main_screen/widgets/shimmer_effect.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class HomeUserProfile extends StatefulWidget {
  const HomeUserProfile({super.key});

  @override
  State<HomeUserProfile> createState() => _HomeUserProfileState();
}

class _HomeUserProfileState extends State<HomeUserProfile> {
  var authcntroller = Get.put(AuthController());
  @override
  initState() {
    super.initState();
    setState(() {
      authcntroller.getgameName();
    });
    print('va${authcntroller.gamenameget}');
    // Add listeners to this class
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return authcntroller.isLoading.value
          // ignore: prefer_const_constructors
          ? ShimmerLoadingWidget()
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 00, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              ImageAssetPath.profileUserImage,
                              height: 60.sp,
                              width: 60.sp,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              authcntroller.verifyvalue.value == 'verified'
                                  ? Container(
                                      width: 30.w,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 1,
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 130, 207, 154),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        'Verified',
                                        style: AppStyles.homeAppBarTextStyle
                                            .copyWith(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 11,
                                                color: AppColors.whiteColor),
                                      ),
                                    )
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1, horizontal: 50),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 243, 57, 57),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        'Not verified',
                                        style: AppStyles.homeAppBarTextStyle
                                            .copyWith(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10,
                                                color: AppColors.whiteColor),
                                      ),
                                    ),
                              Text(
                                authcntroller.userName.value,
                                style: AppStyles.homeAppBarTextStyle.copyWith(
                                  fontSize: 11.sp,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Interest:',
                                    style:
                                        AppStyles.homeAppBarTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    authcntroller.namegameis.value,
                                    style: AppStyles.homeAppBarTextStyle
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: AppColors.primary),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3.sp,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Pakiatan',
                                    style: AppStyles.homeAppBarTextStyle.copyWith(
                                        //  color: AppStyles.black.withOpacity(0.8),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: 20.sp,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _showDialogBox(context);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 5),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0xff88FFB8),
                                      ),
                                      // Adjusted font size from 8 to 10
                                      child: Text(
                                        'Matches Played',
                                        style: AppStyles.homeAppBarTextStyle
                                            .copyWith(
                                          color: AppStyles.black,
                                          fontSize: 10, // Adjusted font size
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0xff88FFB8)),
                                    child: Center(
                                      child: Text(
                                        'Coach',
                                        style: AppStyles.homeAppBarTextStyle
                                            .copyWith(
                                                color: AppStyles.black
                                                    .withOpacity(0.75),
                                                fontSize: 7,
                                                fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Since July 2023',
                                    style: AppStyles.smallTextStyle.copyWith(
                                        fontSize: 7.sp, color: AppStyles.grey),
                                  ),
                                  SizedBox(
                                    width: 7.sp,
                                  ),
                                  Container(
                                    height: 15.sp,
                                    width: 42.sp,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color:
                                                AppStyles.grey.withOpacity(0.5),
                                            width: 1.5)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '5',
                                          style: AppStyles.homeAppBarTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8.sp,
                                                  color: AppStyles.black
                                                      .withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Container(
                                    height: 15.sp,
                                    width: 42.sp,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color:
                                                AppStyles.grey.withOpacity(0.5),
                                            width: 1.5)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '5',
                                          style: AppStyles.homeAppBarTextStyle
                                              .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8.sp,
                                                  color: AppStyles.black
                                                      .withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
    });
  }

  void _showDialogBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Upgrade Player',
            style: AppStyles.activityJoinTabingText.copyWith(
                color: AppStyles.black.withOpacity(0.75),
                fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Level 1',
                  style: AppStyles.activityJoinTabingText.copyWith(
                      fontSize: 12.sp,
                      color: AppStyles.black.withOpacity(0.75),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: AppStyles.grey.withOpacity(0.20)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 5.sp, left: 5.sp, right: 5.sp, bottom: 10.sp),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 9.sp,
                          color: AppStyles.black.withOpacity(0.53)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Text(
                  'Level 2',
                  style: AppStyles.activityJoinTabingText.copyWith(
                      fontSize: 12.sp,
                      color: AppStyles.black.withOpacity(0.75),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: AppStyles.grey.withOpacity(0.20)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 5.sp, left: 5.sp, right: 5.sp, bottom: 10.sp),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 9.sp,
                          color: AppStyles.black.withOpacity(0.53)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Text(
                  'Level 3',
                  style: AppStyles.activityJoinTabingText.copyWith(
                      fontSize: 12.sp,
                      color: AppStyles.black.withOpacity(0.75),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: AppStyles.grey.withOpacity(0.20)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 5.sp, left: 5.sp, right: 5.sp, bottom: 10.sp),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 9.sp,
                          color: AppStyles.black.withOpacity(0.53)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Text(
                  'Host',
                  style: AppStyles.activityJoinTabingText.copyWith(
                      fontSize: 12.sp,
                      color: AppStyles.black.withOpacity(0.75),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: AppStyles.grey.withOpacity(0.20)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 5.sp, left: 5.sp, right: 5.sp, bottom: 10.sp),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 9.sp,
                          color: AppStyles.black.withOpacity(0.53)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.sp,
                ),
                Text(
                  'Super Host',
                  style: AppStyles.activityJoinTabingText.copyWith(
                      fontSize: 12.sp,
                      color: AppStyles.black.withOpacity(0.75),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: AppStyles.grey.withOpacity(0.20)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 5.sp, left: 5.sp, right: 5.sp, bottom: 10.sp),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 9.sp,
                          color: AppStyles.black.withOpacity(0.53)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
