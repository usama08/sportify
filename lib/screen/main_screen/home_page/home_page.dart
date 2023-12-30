import 'package:sportify/screen/activity/activity_home_screen.dart';
import 'package:sportify/screen/inbox/inbox_screen.dart';
import 'package:sportify/screen/venue/venue_review.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_comptition_list.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_social_list.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_traning_list.dart';
import 'package:sportify/screen/add_product/product_main_screen.dart';
import 'package:sportify/screen/favrit_screen.dart';
import 'package:sportify/screen/main_screen/home_page/home_page_slider.dart';
import 'package:sportify/screen/main_screen/home_page/home_user_profile.dart';
import 'package:sportify/screen/notification_screen.dart';
import 'package:sportify/screen/rancking/racking_home_screen.dart';
import 'package:sportify/screen/search_screen.dart';
import 'package:sportify/screen/store/store_screen.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/widget/input_text_fild.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.authScaffoldColor,
        body: Padding(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 5.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: const Color(0xff1A5C59),
                      size: 25.sp,
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Home',
                          style: AppStyles.homeAppBarTextStyle
                              .copyWith(fontSize: 12.sp),
                        ),
                        Text(
                          'Set your location',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                              //  color: AppStyles.black.withOpacity(0.8),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const SearchScreen());
                      },
                      child: Icon(
                        Icons.search,
                        color: const Color(0xff1A5C59),
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(width: 5.sp),
                    InkWell(
                      onTap: () {
                        Get.to(() => const NotificationScreen());
                      },
                      child: Icon(
                        Icons.notifications_outlined,
                        color: const Color(0xff1A5C59),
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(width: 5.sp),
                    InkWell(
                      onTap: () {
                        Get.to(() => const FavritScreen());
                      },
                      child: Icon(
                        Icons.favorite_border,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.sp,
                ),
                const HomeUserProfile(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() =>
                                  const ActivityHomeScreen(initialTabIndex: 0));
                            },
                            child: Image.asset(
                              ImageAssetPath.homeActivity,
                              height: 40.sp,
                              width: 42.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Activities',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(
                                  () => const InboxScreen(initialTabIndex: 1));
                            },
                            child: Image.asset(
                              ImageAssetPath.homePeople,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'People',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() =>
                                  const ActivityHomeScreen(initialTabIndex: 1));
                            },
                            child: Image.asset(
                              ImageAssetPath.homeCoach,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Coach',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() =>
                                  const ActivityHomeScreen(initialTabIndex: 3));
                            },
                            child: Image.asset(
                              ImageAssetPath.homeGroups,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Team',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => const VenueReviewScreen());
                            },
                            child: Image.asset(
                              ImageAssetPath.homeVenue,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Venue',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const RackingHomeScreen());
                            },
                            child: Image.asset(
                              ImageAssetPath.homeRanking,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ranking',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => const StoreScreen());
                            },
                            child: Image.asset(
                              ImageAssetPath.homeStore,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Store',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const ProductMainScreen());
                            },
                            child: Image.asset(
                              ImageAssetPath.homeProduct,
                              height: 38.sp,
                              width: 38.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Product',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const HomePageSlider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 53.sp,
                      width: 50.sp,
                      decoration: BoxDecoration(
                        color: AppStyles.white,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Aligns items vertically at the center
                        children: [
                          Image.asset(
                            ImageAssetPath.tableTenis,
                            height: 30.sp,
                            width: 30.sp,
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Table Tennis',
                            style: AppStyles.smallTextStyle.copyWith(
                              fontSize: 7.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndexButton = 0;
                          });
                        },
                        child: Text(
                          'Social',
                          style: AppStyles.smallTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: selectedIndexButton == 0
                                  ? AppStyles.black
                                  : AppStyles.grey),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndexButton = 1;
                          });
                        },
                        child: Text(
                          'Competition',
                          style: AppStyles.smallTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: selectedIndexButton == 1
                                  ? AppStyles.black
                                  : AppStyles.grey),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndexButton = 2;
                          });
                        },
                        child: Text(
                          'Training',
                          style: AppStyles.smallTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: selectedIndexButton == 2
                                  ? AppStyles.black
                                  : AppStyles.grey),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 32.sp,
                        child: const InputTextField(
                          hintText: 'Search',
                          prefixIconData: Icons.search,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.sp,
                    ),
                    SvgPicture.asset(
                      ImageAssetPath.icCirclePlush,
                      height: 25.sp,
                      width: 25.sp,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 8.sp,
                    ),
                    SvgPicture.asset(
                      ImageAssetPath.icfiltter,
                      height: 22.sp,
                      width: 22.sp,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                if (selectedIndexButton == 0) const ActivitySocialList(),
                if (selectedIndexButton == 1) const ActivityCompititionList(),
                if (selectedIndexButton == 2) const ActivityTrainingList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  int selectedIndexButton = 0;
}
