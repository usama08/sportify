import 'package:sportify/widget/activity_list.dart';
import 'package:sportify/widget/crate_activity_btn.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/search_screen.dart';
import 'package:sportify/utils/app_styles.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class CrateActivity extends StatefulWidget {
  const CrateActivity({Key? key}) : super(key: key);

  @override
  State<CrateActivity> createState() => _CrateActivityState();
}

class _CrateActivityState extends State<CrateActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyles.authScaffoldColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppStyles.authScaffoldColor,
          automaticallyImplyLeading: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Activity',
                style: AppStyles.homeAppBarTextStyle
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                'Set your location',
                style: AppStyles.homeAppBarTextStyle
                    .copyWith(fontSize: 15, fontWeight: FontWeight.normal),
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
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        CreateActivityButton(
                          onClicked: () {},
                          gameName: 'Distance',
                          gameImage: ImageAssetPath.activityDistance,
                        ),
                        CreateActivityButton(
                          onClicked: () {},
                          gameName: 'Badminton',
                          gameImage: ImageAssetPath.activityBadmintion,
                        ),
                        CreateActivityButton(
                          onClicked: () {},
                          gameName: 'Filter',
                          gameImage: ImageAssetPath.activityFilter,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ActivityList(),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
