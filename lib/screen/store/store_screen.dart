import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/filtter_sccreen/filtter_screen.dart';
import 'package:sportify/screen/search_screen.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppStyles.authScaffoldColor,
        automaticallyImplyLeading: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Store',
              style: AppStyles.homeAppBarTextStyle.copyWith(
                  fontSize: 11.sp,
                  color: AppStyles.black.withOpacity(0.75),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Singapore',
              style: AppStyles.homeAppBarTextStyle.copyWith(
                  fontSize: 10.sp,
                  color: AppStyles.black.withOpacity(0.75),
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const SearchScreen());
              },
              icon: const Icon(
                Icons.search,
                color: Color(0xff1A5C59),
                size: 25,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FiltterScreen(),
              SizedBox(
                width: 10.sp,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.sp),
                                  child: Image.asset(
                                    ImageAssetPath.store,
                                    height: 100.sp,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                                Positioned(
                                  left: 210.sp,
                                  bottom: 80.sp,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Titus Sport Store',
                                  style: AppStyles.bigTextStyle.copyWith(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppStyles.black.withOpacity(0.75)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '3.6',
                                      style: AppStyles.bigTextStyle.copyWith(
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
                                      Icons.star_border_purple500_outlined,
                                      color: Colors.orange,
                                      size: 15.sp,
                                    ),
                                    Icon(
                                      Icons.star_border_purple500_outlined,
                                      color: Colors.orange,
                                      size: 15.sp,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.sp,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                        style: AppStyles.bigTextStyle.copyWith(
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppStyles.black
                                                .withOpacity(0.75)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchUrl(Uri(
                                            scheme: 'tel', path: '1234567891'));
                                      },
                                      child: Container(
                                        height: 20.sp,
                                        width: 60.sp,
                                        decoration: BoxDecoration(
                                            color: AppStyles.primary,
                                            borderRadius:
                                                BorderRadius.circular(5.sp)),
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
      ),
    );
  }

  bool isFavorite = false;
}
