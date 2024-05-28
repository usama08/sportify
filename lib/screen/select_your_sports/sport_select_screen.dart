import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/select_your_sports/select_sport_category.dart';
import 'package:sportify/utils/app_styles.dart';
import '../../widget/popular_sport_select_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SportSelectScreen extends StatefulWidget {
  const SportSelectScreen({super.key});

  @override
  State<SportSelectScreen> createState() => _SportSelectScreenState();
}

class _SportSelectScreenState extends State<SportSelectScreen> {
  String? selectedSport;

  void handleSportSelected(String sportName) {
    setState(() {
      selectedSport = sportName;
      print('sport${sportName}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                ImageAssetPath.shape,
                fit: BoxFit.fill,
                height: 130.sp,
                width: 130.sp,
                filterQuality: FilterQuality.high,
              ),
              Positioned(
                top: 40.sp,
                left: 20,
                child: Row(
                  children: [
                    Text('What Sports do you play?',
                        style: AppStyles.sliderText.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.bold)),
                    SizedBox(width: 90.sp),
                    // InkWell(
                    //   onTap: () {
                    //     Get.to(() =>
                    //         const SelectSportCategory(gamename: 'Football'));
                    //   },
                    //   child: Text('Next',
                    //       style: AppStyles.sliderText.copyWith(
                    //           fontSize: 12.sp, color: AppStyles.primary)),
                    // ),
                  ],
                ),
              ),
              // Positioned(
              //   top: 75.sp,
              //   left: 10.sp,
              //   right: 10.sp,
              //   child: const InputTextField(
              //     hintText: 'Search for a sports',
              //     prefixIconData: Icons.search,
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Popular Sport',
              style: AppStyles.sliderText.copyWith(fontSize: 13.sp),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SportSelect(
                  gameImage: ImageAssetPath.fotball,
                  gameName: 'Football',
                  onClicked: () {
                    Get.to(
                        () => const SelectSportCategory(gamename: 'Football'));
                    print('{}');
                  },
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(
                        () => const SelectSportCategory(gamename: 'Cricket'));
                  },
                  gameImage: ImageAssetPath.cricket,
                  gameName: 'Cricket',
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(() => const SelectSportCategory(gamename: 'Hockey'));
                  },
                  gameImage: ImageAssetPath.hockey,
                  gameName: 'Hockey',
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SportSelect(
                  gameImage: ImageAssetPath.tennis,
                  gameName: 'Tennis',
                  onClicked: () {
                    Get.to(() => const SelectSportCategory(gamename: 'Tennis'));
                  },
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(() =>
                        const SelectSportCategory(gamename: 'Volley Ball'));
                  },
                  gameImage: ImageAssetPath.valleyball,
                  gameName: 'Volley Ball',
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(() =>
                        const SelectSportCategory(gamename: 'Table Tennis'));
                  },
                  gameImage: ImageAssetPath.tableTenis,
                  gameName: 'Table Tennis',
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SportSelect(
                  gameImage: ImageAssetPath.baseball,
                  gameName: 'Baseball',
                  onClicked: () {
                    Get.to(
                        () => const SelectSportCategory(gamename: 'Baseball'));
                  },
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(() => const SelectSportCategory(gamename: 'Golf'));
                  },
                  gameImage: ImageAssetPath.golf,
                  gameName: 'Golf',
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(
                        () => const SelectSportCategory(gamename: 'Badminton'));
                  },
                  gameImage: ImageAssetPath.badmintion,
                  gameName: 'Badminton',
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SportSelect(
                  gameImage: ImageAssetPath.rugvy,
                  gameName: 'Rugby',
                  onClicked: () {
                    Get.to(() => const SelectSportCategory(gamename: 'rugby'));
                  },
                ),
                SportSelect(
                  onClicked: () {
                    Get.to(() =>
                        const SelectSportCategory(gamename: 'basketball'));
                  },
                  gameImage: ImageAssetPath.basketball,
                  gameName: 'Basketball',
                ),
                Container(
                  height: 60.sp,
                  width: 90.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Aligns items vertically at the center
                    children: [
                      SizedBox(
                        height: 3.sp,
                      ),
                      Text(
                        'Other',
                        style: AppStyles.sliderText.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.normal,
                        ),
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
