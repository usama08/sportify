import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';

import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class RackingDetailScreen extends StatefulWidget {
  const RackingDetailScreen({Key? key}) : super(key: key);

  @override
  State<RackingDetailScreen> createState() => _RackingDetailScreenState();
}

class _RackingDetailScreenState extends State<RackingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: Text(
          'Players with Super Smash',
          style: AppStyles.appBarTitleTextStyle.copyWith(
              color: AppStyles.black.withOpacity(0.75),
              fontSize: 13.sp,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    ImageAssetPath.icRankingGroup,
                    height: 30.sp,
                    width: 30.sp,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    'Super Smash',
                    style: AppStyles.appBarTitleTextStyle.copyWith(
                        color: AppStyles.black.withOpacity(0.75),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: 10.sp, bottom: 10.sp, left: 5.sp, right: 5.sp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              ImageAssetPath.homeNearbyActivityUser,
                              fit: BoxFit.fill,
                              width: 35.sp,
                              height: 35.sp,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          SizedBox(
                            width: 8.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13.sp, left: 8.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Steven Smith',
                                  style: AppStyles.smallTextStyle.copyWith(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppStyles.black),
                                ),
                                Text(
                                  'Since June 2020',
                                  style: AppStyles.smallTextStyle.copyWith(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppStyles.black.withOpacity(0.50)),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '453',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black.withOpacity(0.64)),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
