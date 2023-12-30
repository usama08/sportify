import 'package:sportify/widget/venue_call_widget.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/filtter_sccreen/filtter_screen.dart';
import 'package:sportify/screen/search_screen.dart';
import 'package:sportify/utils/app_styles.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class VenueReviewScreen extends StatefulWidget {
  const VenueReviewScreen({Key? key}) : super(key: key);

  @override
  State<VenueReviewScreen> createState() => _VenueReviewScreenState();
}

class _VenueReviewScreenState extends State<VenueReviewScreen> {
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
              'Venue',
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
              const VenueCallListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
