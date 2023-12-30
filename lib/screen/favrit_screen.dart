import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/activity/activity_tabing/group_tabing.dart';
import 'package:sportify/screen/activity/activity_tabing/pepole_list.dart';
import 'package:sportify/screen/coach/coach_tabing.dart';
import 'package:sportify/screen/inbox/inbox_people_tab.dart';
import 'package:sportify/screen/notification_screen.dart';
import 'package:sportify/screen/venue/venue_tabing/venue_product.dart';
import 'package:sportify/widget/venue_call_widget.dart';
import '../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class FavritScreen extends StatefulWidget {
  const FavritScreen({Key? key}) : super(key: key);

  @override
  State<FavritScreen> createState() => _FavritScreenState();
}

class _FavritScreenState extends State<FavritScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Host'),
    const Tab(text: 'Coach'),
    const Tab(text: 'People'),
    const Tab(text: 'Venue'),
    const Tab(text: 'Store'),
    const Tab(text: 'Group'),
    const Tab(text: 'Products'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.image_outlined),
        centerTitle: true,
        title: Text(
          'Favorite',
          style: AppStyles.appBarTitleTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Get.to(() => const NotificationScreen());
              },
              child: const Icon(
                Icons.notifications_outlined,
                size: 25,
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppStyles.screenBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelStyle: const TextStyle(
                fontFamily: 'Rubik',
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              labelColor: AppStyles.primary,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppStyles.primary,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: myTabs.map((Tab tab) {
                return Tab(
                  text: tab.text,
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: InboxPeopleTab(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: SingleChildScrollView(child: CoachTab()),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: PeopleListTab(),
                ),
                const SingleChildScrollView(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: VenueCallListWidget(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: InboxPeopleTab(),
                ),
                const SingleChildScrollView(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: GroupTab(),
                ),
                DefaultTabController(
                  length: 3,
                  child: Builder(
                    builder: (BuildContext context) {
                      _nestedTabController = DefaultTabController.of(context);
                      return Column(
                        children: [
                          TabBar(
                            labelStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            labelColor: AppStyles.black,
                            unselectedLabelColor: AppStyles.grey,
                            indicatorColor: const Color(0xff07B6C0),
                            indicatorSize: TabBarIndicatorSize.label,
                            controller: _nestedTabController,
                            tabs: const [
                              Tab(text: 'Category -1'),
                              Tab(text: 'Category -2'),
                              Tab(text: 'Category -3'),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _nestedTabController,
                              children: [
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.sp,
                                      right: 10.sp,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 140.sp,
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            ImageAssetPath
                                                                .sportProduct5,
                                                            height: 100.sp,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.fill,
                                                            filterQuality:
                                                                FilterQuality
                                                                    .high,
                                                          ),
                                                          Positioned(
                                                            left: 145,
                                                            bottom: 105,
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isFavorite =
                                                                      !isFavorite; // Toggle the favorite state on each tap
                                                                });
                                                              },
                                                              child: Icon(
                                                                isFavorite
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: isFavorite
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .red,
                                                                size: 18.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'Table Tennis',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: AppStyles
                                                                      .black
                                                                      .withOpacity(
                                                                          0.75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'RM34',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 140.sp,
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            ImageAssetPath
                                                                .sportProduct4,
                                                            height: 100.sp,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.fill,
                                                            filterQuality:
                                                                FilterQuality
                                                                    .high,
                                                          ),
                                                          Positioned(
                                                            left: 145,
                                                            bottom: 105,
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isFavorite =
                                                                      !isFavorite; // Toggle the favorite state on each tap
                                                                });
                                                              },
                                                              child: Icon(
                                                                isFavorite
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: isFavorite
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .red,
                                                                size: 18.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'Table Tennis',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: AppStyles
                                                                      .black
                                                                      .withOpacity(
                                                                          0.75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'RM34',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 140.sp,
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            ImageAssetPath
                                                                .sportProduct6,
                                                            height: 100.sp,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.fill,
                                                            filterQuality:
                                                                FilterQuality
                                                                    .high,
                                                          ),
                                                          Positioned(
                                                            left: 145,
                                                            bottom: 105,
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isFavorite =
                                                                      !isFavorite; // Toggle the favorite state on each tap
                                                                });
                                                              },
                                                              child: Icon(
                                                                isFavorite
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: isFavorite
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .red,
                                                                size: 18.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'Tennis',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: AppStyles
                                                                      .black
                                                                      .withOpacity(
                                                                          0.75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'RM34',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 140.sp,
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            ImageAssetPath
                                                                .sportProduct1,
                                                            height: 100.sp,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.fill,
                                                            filterQuality:
                                                                FilterQuality
                                                                    .high,
                                                          ),
                                                          Positioned(
                                                            left: 145,
                                                            bottom: 105,
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isFavorite =
                                                                      !isFavorite; // Toggle the favorite state on each tap
                                                                });
                                                              },
                                                              child: Icon(
                                                                isFavorite
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: isFavorite
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .red,
                                                                size: 18.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'Racket',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: AppStyles
                                                                      .black
                                                                      .withOpacity(
                                                                          0.75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'RM34',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 140.sp,
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            ImageAssetPath
                                                                .sportProduct2,
                                                            height: 100.sp,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.fill,
                                                            filterQuality:
                                                                FilterQuality
                                                                    .high,
                                                          ),
                                                          Positioned(
                                                            left: 145,
                                                            bottom: 105,
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isFavorite =
                                                                      !isFavorite; // Toggle the favorite state on each tap
                                                                });
                                                              },
                                                              child: Icon(
                                                                isFavorite
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: isFavorite
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .red,
                                                                size: 18.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'Shuttle',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: AppStyles
                                                                      .black
                                                                      .withOpacity(
                                                                          0.75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'RM34',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 140.sp,
                                              child: Card(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 15),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            ImageAssetPath
                                                                .sportProduct1,
                                                            height: 100.sp,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.fill,
                                                            filterQuality:
                                                                FilterQuality
                                                                    .high,
                                                          ),
                                                          Positioned(
                                                            left: 145,
                                                            bottom: 105,
                                                            child: InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  isFavorite =
                                                                      !isFavorite; // Toggle the favorite state on each tap
                                                                });
                                                              },
                                                              child: Icon(
                                                                isFavorite
                                                                    ? Icons
                                                                        .favorite
                                                                    : Icons
                                                                        .favorite_border,
                                                                color: isFavorite
                                                                    ? Colors.red
                                                                    : Colors
                                                                        .red,
                                                                size: 18.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'Racket',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: AppStyles
                                                                      .black
                                                                      .withOpacity(
                                                                          0.75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.sp),
                                                        child: Text(
                                                          'RM34',
                                                          style: AppStyles
                                                              .appBarTitleTextStyle
                                                              .copyWith(
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      VenueProductTab(
                                        image: ImageAssetPath.sportProduct4,
                                        text: 'Football',
                                        price: 'RM34',
                                      ),
                                    ],
                                  ),
                                ),
                                const SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      VenueProductTab(
                                        image: ImageAssetPath.sportProduct2,
                                        text: 'Football',
                                        price: 'RM34',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool isFavorite = false;
}
