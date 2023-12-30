import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class VenueReviewTab extends StatefulWidget {
  const VenueReviewTab({Key? key}) : super(key: key);

  @override
  State<VenueReviewTab> createState() => _VenueReviewTabState();
}

class _VenueReviewTabState extends State<VenueReviewTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '3.6',
                      style: AppStyles.bigTextStyle.copyWith(fontSize: 20.sp),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          color: Colors.orange,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star_border_purple500_outlined,
                          color: Colors.orange,
                          size: 18.sp,
                        ),
                      ],
                    ),
                    Text(
                      '5 Ratings',
                      style: AppStyles.bigTextStyle.copyWith(
                          color: AppStyles.black.withOpacity(0.75),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '5',
                          style: AppStyles.bigTextStyle.copyWith(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                          height: 4.sp,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              const BoxDecoration(color: AppStyles.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '4',
                          style: AppStyles.bigTextStyle.copyWith(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                          height: 4.sp,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              const BoxDecoration(color: AppStyles.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '3',
                          style: AppStyles.bigTextStyle.copyWith(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 5.sp),
                        Container(
                          height: 4.sp,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: AppStyles.grey,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 4.sp,
                                width: MediaQuery.of(context).size.width *
                                    0.3 *
                                    0.75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '2',
                          style: AppStyles.bigTextStyle.copyWith(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                          height: 4.sp,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            color: AppStyles.grey,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 4.sp,
                                width: MediaQuery.of(context).size.width *
                                    0.3.sp *
                                    0.50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '1',
                          style: AppStyles.bigTextStyle.copyWith(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                          height: 4.sp,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration:
                              const BoxDecoration(color: AppStyles.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: Row(
              children: [
                Text(
                  'Your review',
                  style: AppStyles.homeAppBarTextStyle.copyWith(
                      color: AppStyles.black.withOpacity(0.75),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset(
                  ImageAssetPath.venueError,
                  height: 15.sp,
                  width: 15.sp,
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: Text(
              'Played here before? Leave a review',
              style: AppStyles.homeAppBarTextStyle.copyWith(
                  fontSize: 10.sp,
                  color: AppStyles.black.withOpacity(0.53),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    ImageAssetPath.homeNearbyActivityUser,
                    height: 40.sp,
                    width: 40.sp,
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
                      color: AppStyles.black.withOpacity(0.53),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18.sp,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18.sp,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18.sp,
                ),
                Icon(
                  Icons.star_border_purple500_outlined,
                  color: Colors.orange,
                  size: 18.sp,
                ),
                Icon(
                  Icons.star_border_purple500_outlined,
                  color: Colors.orange,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          const Divider(
            thickness: 1.5,
            color: AppStyles.grey,
          ),
          /*const ReviewListOtherUser(),*/
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Text(
                      'Reviews',
                      style: AppStyles.homeAppBarTextStyle.copyWith(
                          color: AppStyles.black.withOpacity(0.75),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Image.asset(
                      ImageAssetPath.venueError,
                      height: 15.sp,
                      width: 15.sp,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        ImageAssetPath.homeNearbyActivityUser,
                        height: 40.sp,
                        width: 40.sp,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(
                      'Seth Rollins',
                      style: AppStyles.homeAppBarTextStyle.copyWith(
                          fontSize: 11.sp,
                          color: AppStyles.black.withOpacity(0.53),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'For Thompson community center',
                  style: AppStyles.homeAppBarTextStyle.copyWith(
                      fontSize: 10.sp,
                      color: AppStyles.black.withOpacity(0.53),
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18.sp,
                    ),
                    Icon(
                      Icons.star_border_purple500_outlined,
                      color: Colors.orange,
                      size: 18.sp,
                    ),
                    Icon(
                      Icons.star_border_purple500_outlined,
                      color: Colors.orange,
                      size: 18.sp,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(
                      '9 hours ago',
                      style: AppStyles.homeAppBarTextStyle.copyWith(
                          fontSize: 10.sp,
                          color: AppStyles.black.withOpacity(0.53),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Nice and friendly place for Badminton !!',
                  style: AppStyles.homeAppBarTextStyle.copyWith(
                      fontSize: 10.sp,
                      color: AppStyles.black.withOpacity(0.53),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.sp,
          ),
        ],
      ),
    );
  }
}
