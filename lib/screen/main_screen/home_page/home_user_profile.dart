import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class HomeUserProfile extends StatefulWidget {
  const HomeUserProfile({Key? key}) : super(key: key);

  @override
  State<HomeUserProfile> createState() => _HomeUserProfileState();
}

class _HomeUserProfileState extends State<HomeUserProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.sp,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(
              left: 10.sp, right: 00, top: 10.sp, bottom: 10.sp),
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
                      Text(
                        'Steven Smith',
                        style: AppStyles.homeAppBarTextStyle.copyWith(
                          fontSize: 11.sp,
                        ),
                      ),
                      SizedBox(
                        height: 3.sp,
                      ),
                      Row(
                        children: [
                          Text(
                            'Australia',
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
                              height: 17.sp,
                              width: 42.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff88FFB8)),
                              child: Center(
                                child: Text(
                                  'Bronze',
                                  style: AppStyles.homeAppBarTextStyle.copyWith(
                                      color: AppStyles.black.withOpacity(0.75),
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Container(
                            height: 17.sp,
                            width: 42.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffFFAC88)),
                            child: Center(
                              child: Text(
                                'Coach',
                                style: AppStyles.homeAppBarTextStyle.copyWith(
                                    color: AppStyles.black.withOpacity(0.75),
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
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
                                    color: AppStyles.grey, width: 1.5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 11.sp,
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Text(
                                  '5.0',
                                  style: AppStyles.homeAppBarTextStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.sp,
                                      color: AppStyles.black.withOpacity(0.8)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Container(
                            height: 15.sp,
                            width: 42.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: AppStyles.grey, width: 1.5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 11.sp,
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Text(
                                  '5.0',
                                  style: AppStyles.homeAppBarTextStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.sp,
                                      color: AppStyles.black.withOpacity(0.8)),
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
