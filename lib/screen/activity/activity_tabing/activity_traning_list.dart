import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/details_of_venue/venue_join_screen.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/shap_class.dart';
import '../../../widget/venue_join_tabing_detail.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityTrainingList extends StatefulWidget {
  const ActivityTrainingList({Key? key}) : super(key: key);

  @override
  State<ActivityTrainingList> createState() => _ActivityTrainingListState();
}

class _ActivityTrainingListState extends State<ActivityTrainingList> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: AppStyles.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tennis ',
                        style: AppStyles.bigTextStyle.copyWith(fontSize: 14.sp),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 18.sp,
                        width: 60.sp,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppStyles.primary,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Center(
                                child: Text(
                              'Double Player',
                              style: AppStyles.sliderText.copyWith(
                                  color: Colors.white,
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.normal),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      SizedBox(
                        height: 18.sp,
                        width: 60.sp,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppStyles.primary,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Center(
                                child: Text(
                              'Training',
                              style: AppStyles.sliderText.copyWith(
                                  color: Colors.white,
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.normal),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Text(
                    'Ball machine rental with or w/o coach (court included) ball machine rental with or w/o coach... ',
                    style: AppStyles.appBarTitleTextStyle
                        .copyWith(fontSize: 11.sp),
                  ),
                  SizedBox(
                    height: 10.sp,
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                                        ImageAssetPath.homeNearbyActivityUser,
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                                        ImageAssetPath.homeNearbyActivityUser,
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                  Text(
                    '6/10 going - Min 2  to start',
                    style: AppStyles.smallTextStyle.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  const Row(
                    children: [
                      ActivityJoinTabingImageandText(
                          image: ImageAssetPath.venueJoinUser, text: 'RM88'),
                      SizedBox(
                        width: 40,
                      ),
                      ActivityJoinTabingImageandText(
                          image: ImageAssetPath.venueJoinUserF, text: 'RM55'),
                    ],
                  ),
                  SizedBox(
                    height: 13.sp,
                  ),
                  Text(
                    'Sat 24 Dec  10:00AM',
                    style: AppStyles.smallTextStyle.copyWith(
                      fontSize: 10.sp,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Simei MRT Station (EW3)',
                        style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 10.sp,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Distance 8 km',
                        style: AppStyles.smallTextStyle.copyWith(
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 10, bottom: 0),
                    child: AppButton(
                        onClicked: () {
                          Get.to(() => const ActivityJoin());
                        },
                        background: AppStyles.primary,
                        text: 'Join'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
