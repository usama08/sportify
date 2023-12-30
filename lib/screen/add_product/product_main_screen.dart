import 'package:flutter/material.dart';
import 'package:sportify/screen/venue/venue_tabing/venue_product.dart';
import 'package:sportify/utils/app_styles.dart';
import '../../constants/asset_path.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ProductMainScreen extends StatefulWidget {
  const ProductMainScreen({Key? key}) : super(key: key);

  @override
  State<ProductMainScreen> createState() => _ProductMainScreenState();
}

class _ProductMainScreenState extends State<ProductMainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _nestedTabController;
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _nestedTabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Product',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            //Get.to(MainPage());
          },
        ),
      ),
      body: Column(
        children: [
          TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Rubik',
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
                              width: 137.sp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.sportProduct5,
                                            height: 120.sp,
                                            width: 190.sp,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            left: 100.sp,
                                            bottom: 90.sp,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isFavorite =
                                                      !isFavorite; // Toggle the favorite state on each tap
                                                });
                                              },
                                              child: Icon(
                                                isFavorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Table Tennis',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'RM34',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 137.sp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.sportProduct4,
                                            height: 120.sp,
                                            width: 190.sp,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            left: 100.sp,
                                            bottom: 90.sp,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isFavorite =
                                                      !isFavorite; // Toggle the favorite state on each tap
                                                });
                                              },
                                              child: Icon(
                                                isFavorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Table Tennis',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'RM34',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
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
                              width: 137.sp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.sportProduct6,
                                            height: 120.sp,
                                            width: 190.sp,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            left: 100.sp,
                                            bottom: 90.sp,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isFavorite =
                                                      !isFavorite; // Toggle the favorite state on each tap
                                                });
                                              },
                                              child: Icon(
                                                isFavorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Tennis',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'RM34',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 137.sp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.sportProduct1,
                                            height: 120.sp,
                                            width: 190.sp,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            left: 100.sp,
                                            bottom: 90.sp,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isFavorite =
                                                      !isFavorite; // Toggle the favorite state on each tap
                                                });
                                              },
                                              child: Icon(
                                                isFavorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Racket',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'RM34',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
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
                              width: 137.sp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.sportProduct2,
                                            height: 120.sp,
                                            width: 190.sp,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            left: 100.sp,
                                            bottom: 90.sp,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isFavorite =
                                                      !isFavorite; // Toggle the favorite state on each tap
                                                });
                                              },
                                              child: Icon(
                                                isFavorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Shuttle',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'RM34',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 137.sp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            ImageAssetPath.sportProduct1,
                                            height: 120.sp,
                                            width: 190.sp,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          Positioned(
                                            left: 100.sp,
                                            bottom: 90.sp,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isFavorite =
                                                      !isFavorite; // Toggle the favorite state on each tap
                                                });
                                              },
                                              child: Icon(
                                                isFavorite
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.red,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Racket',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'RM34',
                                          style: AppStyles.appBarTitleTextStyle
                                              .copyWith(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
