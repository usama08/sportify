import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/main_screen.dart';
import 'package:sportify/widget/shap_class.dart';
import 'package:sportify/widget/venue_join_tabing_detail.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/discussion_for_game/discussion_tab.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class ActivityJoin extends StatefulWidget {
  const ActivityJoin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ActivityJoinState createState() => _ActivityJoinState();
}

class _ActivityJoinState extends State<ActivityJoin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> myTabs = [
    const Tab(text: 'Details'),
    const Tab(text: 'Discussion'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 95.sp,
            width: MediaQuery.of(context).size.width,
            color: AppStyles.primary,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 13.sp,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,
                            color: AppStyles.white, size: 18.sp),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Normal Fun Game',
                        style: AppStyles.homeAppBarTextStyle.copyWith(
                          fontSize: 16.sp,
                          color: AppStyles.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.sp),
                  TabBar(
                    labelStyle: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    dividerColor: AppStyles.primary,
                    labelColor: AppStyles.white,
                    unselectedLabelColor: AppStyles.white,
                    indicatorColor: const Color(0xffA8FFFA),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight:
                        3.0, // Adjust the indicator weight as desired
                    controller: _tabController,
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Details'),
                      Tab(text: 'Discussion'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoinGraph,
                            text: 'Thomson Community Center'),
                        const SizedBox(
                          height: 10,
                        ),
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoinclock,
                            text: 'Monday 10july 8:30PM to 10:30PM.'),
                        const SizedBox(
                          height: 10,
                        ),
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoinlocation,
                            text: 'Jalan  Layang - Layang-1 '),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            ActivityJoinTabingImageandText(
                                image: ImageAssetPath.venueJoinUser,
                                text: 'RM23'),
                            SizedBox(
                              width: 40,
                            ),
                            ActivityJoinTabingImageandText(
                                image: ImageAssetPath.venueJoinUserF,
                                text: 'RM30'),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoinCoupon,
                            text: 'Court booked '),
                        const SizedBox(
                          height: 10,
                        ),
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoinCoupon,
                            text: 'Beginner, Intermediate'),
                        const SizedBox(
                          height: 10,
                        ),
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoindualUser,
                            text: 'Double players'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              ImageAssetPath.venueJoinActivity,
                              height: 15.sp,
                              width: 15.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                            SizedBox(
                              width: 15.sp,
                            ),
                            SizedBox(
                              height: 18.sp,
                              width: 50.sp,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: AppStyles.primary,
                                      borderRadius:
                                          BorderRadius.circular(5.sp)),
                                  child: Center(
                                      child: Text(
                                    'Social',
                                    style: AppStyles.sliderText.copyWith(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Image.asset(
                          ImageAssetPath.staticMap,
                          height: 150.sp,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ActivityJoinTabingImageandText(
                            image: ImageAssetPath.venueJoinAddressActivity,
                            text:
                                'G/9,ONEWORD WEST BUILDING \n City Center Road, USA '),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageAssetPath.venueJoinAddressSctivity,
                              height: 12.sp,
                              width: 12.sp,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                            SizedBox(
                              width: 20.sp,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Description',
                                    style: AppStyles.activityJoinTabingText
                                        .copyWith(
                                            color: AppStyles.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11.sp),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                    style: AppStyles.activityJoinTabingText
                                        .copyWith(
                                            color: AppStyles.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 11.sp),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text('Going to 2/8',
                            style: AppStyles.activityJoinTabingText
                                .copyWith(fontSize: 11.sp)),
                        Text('Min 2 to start',
                            style: AppStyles.activityJoinTabingText
                                .copyWith(fontSize: 11.sp)),
                        SizedBox(
                          height: 5.sp,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 40.sp,
                                      width: 43.sp,
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.homeNearbyActivityK,
                                            fit: BoxFit.fill,
                                            width: 35.sp,
                                            height: 35.sp,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            top: 20.sp,
                                            left: 26.sp,
                                            right: 0,
                                            bottom: 0,
                                            child: ClipPath(
                                              clipper: HexagonClipper(),
                                              child: Container(
                                                height: 20.sp,
                                                width: 20.sp,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '4.3',
                                                    style: AppStyles.sliderText
                                                        .copyWith(
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.sp,
                                    ),
                                    Text(
                                      'Steven \n Smith',
                                      style: AppStyles.smallTextStyle
                                          .copyWith(fontSize: 9.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8.sp,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 40.sp,
                                      width: 43.sp,
                                      child: Stack(
                                        children: [
                                          ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityUser,
                                              fit: BoxFit.fill,
                                              width: 35.sp,
                                              height: 35.sp,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          ),
                                          Positioned(
                                            top: 20.sp,
                                            left: 26.sp,
                                            right: 0,
                                            bottom: 0,
                                            child: ClipPath(
                                              clipper: HexagonClipper(),
                                              child: Container(
                                                height: 20.sp,
                                                width: 20.sp,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '4.3',
                                                    style: AppStyles.sliderText
                                                        .copyWith(
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.sp,
                                    ),
                                    Text(
                                      'Kevin',
                                      style: AppStyles.smallTextStyle
                                          .copyWith(fontSize: 9.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8.sp,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 40.sp,
                                      width: 43.sp,
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.homeNearbyActivityE,
                                            fit: BoxFit.fill,
                                            width: 35.sp,
                                            height: 35.sp,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            top: 20.sp,
                                            left: 26.sp,
                                            right: 0,
                                            bottom: 0,
                                            child: ClipPath(
                                              clipper: HexagonClipper(),
                                              child: Container(
                                                height: 20.sp,
                                                width: 20.sp,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '4.3',
                                                    style: AppStyles.sliderText
                                                        .copyWith(
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.sp,
                                    ),
                                    Text(
                                      'Emma',
                                      style: AppStyles.smallTextStyle
                                          .copyWith(fontSize: 9.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8.sp,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 40.sp,
                                      width: 43.sp,
                                      child: Stack(
                                        children: [
                                          ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityUser,
                                              fit: BoxFit.fill,
                                              width: 35.sp,
                                              height: 35.sp,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          ),
                                          Positioned(
                                            top: 20.sp,
                                            left: 26.sp,
                                            right: 0,
                                            bottom: 0,
                                            child: ClipPath(
                                              clipper: HexagonClipper(),
                                              child: Container(
                                                height: 20.sp,
                                                width: 20.sp,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '4.3',
                                                    style: AppStyles.sliderText
                                                        .copyWith(
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.sp,
                                    ),
                                    Text(
                                      'Kevin',
                                      style: AppStyles.smallTextStyle
                                          .copyWith(fontSize: 9.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8.sp,
                                ),
                                Image.asset(
                                  ImageAssetPath.homeNearbyActivityA,
                                  fit: BoxFit.fill,
                                  width: 35.sp,
                                  height: 35.sp,
                                  filterQuality: FilterQuality.high,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        SizedBox(
                          height: 30.sp,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: SizedBox(
                                  height: 50.sp,
                                  width: 170.sp,
                                  child: Stack(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          ImageAssetPath.homeNearbyActivityUser,
                                          fit: BoxFit.fill,
                                          width: 30.sp,
                                          height: 30.sp,
                                          filterQuality: FilterQuality.high,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 30,
                                        child: ClipOval(
                                          child: Image.asset(
                                            ImageAssetPath.homeNearbyActivityK,
                                            fit: BoxFit.fill,
                                            width: 30.sp,
                                            height: 30.sp,
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 60,
                                          child: ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityE,
                                              fit: BoxFit.fill,
                                              width: 30.sp,
                                              height: 30.sp,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          )),
                                      Positioned(
                                          top: 0,
                                          left: 90,
                                          child: ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityS,
                                              fit: BoxFit.fill,
                                              width: 30.sp,
                                              height: 30.sp,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          )),
                                      Positioned(
                                        top: 0,
                                        left: 120,
                                        child: ClipOval(
                                          child: Image.asset(
                                            ImageAssetPath.homeNearbyActivityR,
                                            fit: BoxFit.fill,
                                            width: 30.sp,
                                            height: 30.sp,
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          'Waitlist(0)',
                          style: AppStyles.activityJoinTabingText
                              .copyWith(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'if someone who is already in leaves then the next person in the wait list join automatically.',
                          style: AppStyles.activityJoinTabingText
                              .copyWith(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AppButton(
                          background: AppStyles.primary,
                          text: 'Join',
                          onClicked: () {
                            Get.to(() => const MainPage());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const DisscusionTab()
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool showEmojiPicker = false;
  TextEditingController textEditingController = TextEditingController();
}
