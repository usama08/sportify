// ignore: depend_on_referenced_packages
import 'package:sportify/screen/coach/coach_tabing.dart';
import 'package:sportify/screen/favrit_screen.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/venue_call_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/add_product/product_main_screen.dart';
import 'package:sportify/screen/badge/badage_screen.dart';
import 'package:sportify/screen/followers_screen/followers_screen.dart';
import 'package:sportify/screen/following_screen/following_screen.dart';
import 'package:sportify/screen/notification_screen.dart';
import 'package:sportify/screen/profile/profile_image.dart';
import 'package:sportify/screen/profile/profile_setting/profile_setting.dart';
import 'package:sportify/screen/wall/wall_comment.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Gallery'),
    const Tab(text: 'Wall'),
    const Tab(text: 'Coach'),
    const Tab(text: 'Venue'),
    const Tab(text: 'Store'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 15.0.sp,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        title: Text('Profile',
            style: AppStyles.homeAppBarTextStyle.copyWith(
                fontSize: 13.sp,
                color: AppStyles.black.withOpacity(0.75),
                fontWeight: FontWeight.w600)),
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
              onTap: () {
                Get.to(() => const ProfileSetting());
              },
              child: Icon(
                Icons.menu,
                size: 18.sp,
                color: AppStyles.black,
              )),
          SizedBox(
            width: 3.sp,
          ),
          InkWell(
              onTap: () {
                Get.to(() => const NotificationScreen());
              },
              child: Icon(
                Icons.notifications_outlined,
                size: 18.sp,
                color: AppStyles.black,
              )),
          SizedBox(
            width: 3.sp,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
                onTap: () {
                  Get.to(() => const FavritScreen());
                },
                child: Icon(
                  Icons.favorite_border,
                  size: 18.sp,
                  color: AppStyles.black,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
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
              ),
              const SizedBox(
                height: 15,
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
              SizedBox(height: 10.sp),
              InkWell(
                onTap: () {
                  Get.to(() => const BadgeScreen());
                },
                child: SizedBox(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: AppStyles.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '50% Profile competition',
                                style: AppStyles.sliderText.copyWith(
                                    color: AppStyles.black.withOpacity(0.76),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: AppStyles.black,
                                size: 15.sp,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 3,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: AppStyles.grey,
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  height: 3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.topLeft,
                                      colors: [Colors.orange, Colors.green],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.sp,
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
                          ImageAssetPath.icFlowers,
                          height: 30.sp,
                          width: 30.sp,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        )),
                  ],
                ),
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
                    const ProfileImageList(),
                    const NewsContainer(),
                    const Column(
                      children: [
                        CoachTab(),
                      ],
                    ),
                    const VenueCallListWidget(),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.sp,
                                  right: 20.sp,
                                  top: 10.sp,
                                  bottom: 10.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.to(
                                              () => const ProductMainScreen());
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5.sp),
                                          child: Image.asset(
                                            ImageAssetPath.store,
                                            height: 100.sp,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 210.sp,
                                        bottom: 80.sp,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isFavorite = !isFavorite;
                                            });
                                          },
                                          child: Icon(
                                            isFavorite
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.white,
                                            size: 18.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.sp,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Titus Sport Store',
                                        style: AppStyles.bigTextStyle.copyWith(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppStyles.black
                                                .withOpacity(0.75)),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '3.6',
                                            style: AppStyles.bigTextStyle
                                                .copyWith(
                                                    fontSize: 11.sp,
                                                    color: AppStyles.black
                                                        .withOpacity(0.75)),
                                          ),
                                          SizedBox(
                                            width: 7.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons
                                                .star_border_purple500_outlined,
                                            color: Colors.orange,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            Icons
                                                .star_border_purple500_outlined,
                                            color: Colors.orange,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.sp,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.sp,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'SB-52 Krishna Enclave, Tonk Road,Jaipur, INDIA',
                                              style: AppStyles.bigTextStyle
                                                  .copyWith(
                                                      fontSize: 9.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppStyles.black
                                                          .withOpacity(0.75)),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              launchUrl(Uri(
                                                  scheme: 'tel',
                                                  path: '1234567891'));
                                            },
                                            child: Container(
                                              height: 20.sp,
                                              width: 60.sp,
                                              decoration: BoxDecoration(
                                                  color: AppStyles.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.sp)),
                                              child: Center(
                                                child: Text(
                                                  'Call',
                                                  style: AppStyles.sliderText
                                                      .copyWith(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
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

  bool isFavorite = false;
}
