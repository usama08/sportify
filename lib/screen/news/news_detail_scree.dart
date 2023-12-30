import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Daily News',
          style: AppStyles.homeAppBarTextStyle.copyWith(
              fontSize: 13.sp,
              color: AppStyles.black.withOpacity(0.75),
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.black,
              size: 18.sp,
            ),
            onPressed: () {
              setState(() {
                isFavorite =
                    !isFavorite; // Toggle the favorite state on each tap
              });
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
              Text(
                'Lorem Ipsum is simply dummy text of the....',
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 15.sp,
                    color: AppStyles.black.withOpacity(0.75),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 11.sp,
                    color: AppStyles.black.withOpacity(0.50),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15.sp),
              Image.asset(
                ImageAssetPath.gallary1,
                height: 200.sp,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
              SizedBox(height: 10.sp),
              Text(
                'By Sane Bond',
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 12.sp,
                    color: AppStyles.black.withOpacity(0.68),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                'Published Jun 12, 2022',
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 12.sp,
                    color: AppStyles.black.withOpacity(0.34),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Updated Jun 22, 2022',
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 12.sp,
                    color: AppStyles.black.withOpacity(0.34),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 11.sp,
                    color: AppStyles.black.withOpacity(0.50),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: AppStyles.whiteTextStyle.copyWith(
                    fontSize: 11.sp,
                    color: AppStyles.black.withOpacity(0.50),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isFavorite = false;
}
