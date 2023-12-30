import 'package:flutter/material.dart';
import 'package:sportify/screen/venue/venue_tabing/venue_product.dart';
import 'package:sportify/screen/venue/venue_tabing/venue_review.dart';
import 'package:sportify/screen/venue/venue_tabing/venue_service.dart';
import 'package:sportify/screen/venue/venue_tabing/venue_table_details.dart';
import '../../constants/asset_path.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class VenueDetailsScreen extends StatefulWidget {
  const VenueDetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VenueDetailsScreenState createState() => _VenueDetailsScreenState();
}

class _VenueDetailsScreenState extends State<VenueDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    /* _nestedTabController.dispose();*/
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                ImageAssetPath.venueDtails,
                height: 150.sp,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
              Positioned(
                  top: 15.sp,
                  left: 10.sp,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 18.sp,
                        color: AppStyles.white,
                      )))
            ],
          ),
          SizedBox(
            height: 5.sp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Thomson Community Center',
              style: AppStyles.bigTextStyle.copyWith(
                  fontSize: 12.sp,
                  color: AppStyles.black.withOpacity(0.75),
                  fontWeight: FontWeight.bold),
            ),
          ),
          TabBar(
            labelStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            labelColor: AppStyles.black,
            unselectedLabelColor: AppStyles.grey,
            indicatorColor: const Color(0xff07B6C0),
            controller: _tabController,
            tabs: const [
              Tab(text: 'Product'),
              Tab(text: 'Details'),
              Tab(text: 'Services'),
              Tab(text: 'Review'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
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
                                // // sub tab 1
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

                                // sub tab 2

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
                                // sub tab 3
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
                const VenueDetailsTab(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Service',
                        style: AppStyles.activityJoinTabingText
                            .copyWith(color: AppStyles.black, fontSize: 20),
                      ),
                      const VenueServiceTab(
                        text: 'Badminton court',
                      ),
                      const VenueServiceTab(
                        text: 'Dance studio',
                      ),
                      const VenueServiceTab(
                        text: 'Multi purpose hall',
                      ),
                      const VenueServiceTab(
                        text: 'Multi purpose room',
                      ),
                      const VenueServiceTab(
                        text: 'Table tennis room',
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 10),
                  child: VenueReviewTab(),
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
