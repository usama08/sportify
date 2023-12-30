import 'package:sportify/screen/News/news_detail_scree.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/News/news_list.dart';
import 'package:sportify/screen/notification_screen.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class NewsHomeScreen extends StatefulWidget {
  const NewsHomeScreen({Key? key}) : super(key: key);

  @override
  State<NewsHomeScreen> createState() => _NewsHomeScreenState();
}

class _NewsHomeScreenState extends State<NewsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 15.0.sp,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Daily News',
          style: AppStyles.homeAppBarTextStyle.copyWith(
              fontSize: 13.sp,
              color: AppStyles.black.withOpacity(0.75),
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              size: 25,
            ),
            onPressed: () {
              Get.to(() => const NotificationScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const NewsDetailScreen());
                },
                child: Column(
                  children: [
                    Image.asset(
                      ImageAssetPath.gallary1,
                      height: 200.sp,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the....',
                      style: AppStyles.whiteTextStyle.copyWith(
                          fontSize: 13.sp,
                          color: AppStyles.black.withOpacity(0.75),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.sp),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    '11 min ago',
                    style: AppStyles.whiteOpacityTextStyle.copyWith(
                        fontSize: 10.sp,
                        color: AppStyles.black.withOpacity(0.68),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('|'),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Sports',
                    style: AppStyles.whiteOpacityTextStyle.copyWith(
                        fontSize: 10.sp,
                        color: const Color(0xff277C82),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'News',
                style: AppStyles.whiteOpacityTextStyle.copyWith(
                    fontSize: 13.sp,
                    color: AppStyles.black.withOpacity(0.75),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const NewsList()
            ],
          ),
        ),
      ),
    );
  }

  bool isFavorite = false;
}
