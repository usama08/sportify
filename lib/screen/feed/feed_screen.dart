import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/craete_post/create_post.dart';
import 'package:sportify/screen/feed/play_boat.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.screenBackgroundColor,
        appBar: AppBar(
          titleSpacing: 15.0.sp,
          centerTitle: false,
          elevation: 0,
          backgroundColor: AppStyles.screenBackgroundColor,
          automaticallyImplyLeading: false,
          title: Text(
            'Feed',
            style: AppStyles.homeAppBarTextStyle.copyWith(
                color: AppStyles.black.withOpacity(0.75),
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          ImageAssetPath.userImage,
                          fit: BoxFit.fill,
                          width: 40.sp,
                          height: 40.sp,
                          filterQuality: FilterQuality.high,
                        ),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What’s going on Steven smith?',
                                style: AppStyles.whiteTextStyle.copyWith(
                                  fontSize: 12.sp,
                                  color: AppStyles.black.withOpacity(0.75),
                                ),
                              ),
                              Text(
                                'Share a post, photo or activity with your followes',
                                style: AppStyles.whiteTextStyle.copyWith(
                                    color: AppStyles.black.withOpacity(0.50),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8.sp,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => const CratePost());
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          ImageAssetPath.cameraBlue,
                                          height: 18.sp,
                                          width: 20.sp,
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Photo',
                                          style: AppStyles.whiteTextStyle
                                              .copyWith(
                                                  color: AppStyles.primary,
                                                  fontSize: 12.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    ImageAssetPath.activityBlue,
                                    height: 18.sp,
                                    width: 20.sp,
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Activity',
                                    style: AppStyles.whiteTextStyle.copyWith(
                                        color: AppStyles.primary,
                                        fontSize: 12.sp),
                                  ),
                                  const Spacer(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const PlayBoat()
              ],
            ),
          ),
        ));
  }
}
