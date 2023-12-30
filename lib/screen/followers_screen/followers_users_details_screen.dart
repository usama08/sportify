import 'package:sportify/screen/chat/chat_screen.dart';
import 'package:sportify/screen/followers_screen/followers_screen.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_social_list.dart';
import 'package:sportify/screen/craete_post/create_post.dart';
import 'package:sportify/screen/following_screen/following_screen.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../../constants/asset_path.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class FollowersUsersDetailScreen extends StatefulWidget {
  const FollowersUsersDetailScreen({Key? key}) : super(key: key);

  @override
  State<FollowersUsersDetailScreen> createState() =>
      _FollowersUsersDetailScreenState();
}

class _FollowersUsersDetailScreenState extends State<FollowersUsersDetailScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0.sp,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        title: Text('@steven smith',
            style: AppStyles.homeAppBarTextStyle.copyWith(
                fontSize: 13.sp,
                color: AppStyles.black.withOpacity(0.75),
                fontWeight: FontWeight.w600)),
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
      body: Padding(
        padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
        child: SingleChildScrollView(
          child: Column(
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
                          Container(
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
              ),
              SizedBox(
                height: 15.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Activities',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.sp,
                            color: AppStyles.black.withOpacity(0.75),
                          ),
                        ),
                        Text(
                          '12',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.sp,
                            color: AppStyles.black.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          'Joined',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.sp,
                            color: AppStyles.black.withOpacity(0.75),
                          ),
                        ),
                        Text(
                          '15',
                          style: AppStyles.homeAppBarTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.sp,
                            color: AppStyles.black.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const FollowersScreen());
                      },
                      child: Column(
                        children: [
                          Text(
                            'Followers',
                            style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 9.sp,
                              color: AppStyles.black.withOpacity(0.75),
                            ),
                          ),
                          Text(
                            '15',
                            style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 9.sp,
                              color: AppStyles.black.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const FollowingScreen());
                      },
                      child: Column(
                        children: [
                          Text(
                            'Followings',
                            style: AppStyles.homeAppBarTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.75),
                                fontSize: 9.sp),
                          ),
                          Text(
                            '42',
                            style: AppStyles.homeAppBarTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 9.sp,
                              color: AppStyles.black.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const ChatScreen());
                    },
                    child: Container(
                      height: 30.sp,
                      width: 100.sp,
                      decoration: BoxDecoration(
                          color: AppStyles.primary,
                          borderRadius: BorderRadius.circular(4.sp)),
                      child: Center(
                        child: Text(
                          'MESSAGE',
                          style: AppStyles.sliderText.copyWith(
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.sp,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30.sp,
                      width: 100.sp,
                      decoration: BoxDecoration(
                          color: AppStyles.primary,
                          borderRadius: BorderRadius.circular(4.sp)),
                      child: Center(
                        child: Text(
                          'FOLLOWING',
                          style: AppStyles.sliderText.copyWith(
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                height: 120.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppStyles.screenBackgroundColor,
                    borderRadius: BorderRadius.circular(3.sp)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8.sp,
                      left: 0.sp,
                      right: 0,
                      bottom: 0.sp,
                      child: Container(
                        height: 100.sp,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppStyles.primary,
                                AppStyles.primary
                                    .withOpacity(0.70) // Extra light blue
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(3.sp)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Football',
                                style: AppStyles.sliderText.copyWith(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                'Intermediate',
                                style: AppStyles.sliderText.copyWith(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    ImageAssetPath.icUserPoint,
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 30.sp),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Sports',
                                          style: AppStyles.sliderText.copyWith(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5.sp,
                                        ),
                                        Image.asset(
                                          ImageAssetPath.icWhitePlush,
                                          height: 15.sp,
                                          width: 15.sp,
                                          fit: BoxFit.fill,
                                          filterQuality: FilterQuality.high,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.sp),
                                child: Text(
                                  '360',
                                  style: AppStyles.sliderText.copyWith(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0.sp,
                        left: 200.sp,
                        right: 20.sp,
                        bottom: 70.sp,
                        child: Image.asset(
                          ImageAssetPath.icFootBalls,
                          height: 30.sp,
                          width: 30.sp,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              TabBar(
                isScrollable: true,
                controller: _tabController,
                labelStyle: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                labelColor: AppStyles.primary,
                unselectedLabelColor: Colors.black.withOpacity(0.32),
                indicatorColor: AppStyles.primary,
                indicatorSize: TabBarIndicatorSize.label,
                //indicatorWeight: .0, // Adjust the indicator weight as desired
                tabs: myTabs.map((Tab tab) {
                  return Tab(
                    text: tab.text,
                  );
                }).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'What’s going on Steven smith?',
                                          style:
                                              AppStyles.whiteTextStyle.copyWith(
                                            fontSize: 12.sp,
                                            color: AppStyles.black
                                                .withOpacity(0.75),
                                          ),
                                        ),
                                        Text(
                                          'Share a post, photo or activity with your followes',
                                          style: AppStyles.whiteTextStyle
                                              .copyWith(
                                                  color: AppStyles.black
                                                      .withOpacity(0.50),
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
                                                    filterQuality:
                                                        FilterQuality.high,
                                                    fit: BoxFit.fill,
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Photo',
                                                    style: AppStyles
                                                        .whiteTextStyle
                                                        .copyWith(
                                                            color: AppStyles
                                                                .primary,
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
                                              style: AppStyles.whiteTextStyle
                                                  .copyWith(
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
                          SizedBox(
                            height: 10.sp,
                          ),
                          Image.asset(
                            ImageAssetPath.exportGroups,
                            height: 100.sp,
                            width: MediaQuery.of(context).size.width,
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          const ActivitySocialList(),
                        ],
                      ),
                    ),
                    Column(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'What’s going on Steven smith?',
                                        style:
                                            AppStyles.whiteTextStyle.copyWith(
                                          fontSize: 12.sp,
                                          color:
                                              AppStyles.black.withOpacity(0.75),
                                        ),
                                      ),
                                      Text(
                                        'Share a post, photo or activity with your followes',
                                        style: AppStyles.whiteTextStyle
                                            .copyWith(
                                                color: AppStyles.black
                                                    .withOpacity(0.50),
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
                                                  filterQuality:
                                                      FilterQuality.high,
                                                  fit: BoxFit.fill,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Photo',
                                                  style: AppStyles
                                                      .whiteTextStyle
                                                      .copyWith(
                                                          color:
                                                              AppStyles.primary,
                                                          fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              Image.asset(
                                                ImageAssetPath.activityBlue,
                                                height: 18.sp,
                                                width: 20.sp,
                                                filterQuality:
                                                    FilterQuality.high,
                                                fit: BoxFit.fill,
                                              ),
                                              SizedBox(
                                                width: 10.sp,
                                              ),
                                              Text(
                                                'Activity',
                                                style: AppStyles.whiteTextStyle
                                                    .copyWith(
                                                        color:
                                                            AppStyles.primary,
                                                        fontSize: 12.sp),
                                              ),
                                            ],
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
                        SizedBox(
                          height: 10.sp,
                        ),
                        Image.asset(
                          ImageAssetPath.exportGroups,
                          height: 100.sp,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                      ],
                    ),
                    const ActivitySocialList(),
                    Column(
                      children: [
                        SizedBox(
                          height: 5.sp,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15.sp,
                              color: AppStyles.grey,
                            ),
                            SizedBox(
                              width: 15.sp,
                            ),
                            Text(
                              'Sydney, Australia',
                              style: AppStyles.activityJoinTabingText.copyWith(
                                  color: AppStyles.black.withOpacity(0.64),
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.male,
                              size: 15.sp,
                              color: AppStyles.grey,
                            ),
                            SizedBox(
                              width: 15.sp,
                            ),
                            Text(
                              'Male',
                              style: AppStyles.activityJoinTabingText.copyWith(
                                  color: AppStyles.black.withOpacity(0.64),
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              ImageAssetPath.icUrlPin,
                              height: 13.sp,
                              width: 13.sp,
                              fit: BoxFit.fill,

                              // ignore: deprecated_member_use
                              color: AppStyles.grey,
                            ),
                            SizedBox(
                              width: 15.sp,
                            ),
                            Text(
                              'sportify.co@steven smith',
                              style: AppStyles.activityJoinTabingText.copyWith(
                                  color: AppStyles.black.withOpacity(0.64),
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // Dispose the nested TabController if it exists
    super.dispose();
  }

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Home'),
    const Tab(text: 'Posts'),
    const Tab(text: 'Activities'),
    const Tab(text: 'About'),
  ];
}
