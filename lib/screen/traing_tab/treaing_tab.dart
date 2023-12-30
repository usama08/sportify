import 'package:flutter/material.dart';
import 'package:sportify/screen/activity/all_game_show.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:sportify/widget/shap_class.dart';
import '../../constants/asset_path.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class TrainingTab extends StatefulWidget {
  const TrainingTab({Key? key}) : super(key: key);

  @override
  State<TrainingTab> createState() => _TrainingTabState();
}

class _TrainingTabState extends State<TrainingTab> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AllGameShow(
                  onClicked: (selected) {
                    setState(() {
                      _isFootBalSelected = selected;
                    });
                  },
                  isSelected: _isFootBalSelected,
                  gameName: 'Football',
                  gameImage: ImageAssetPath.fotball,
                ),
                AllGameShow(
                  gameName: 'Badminton',
                  gameImage: ImageAssetPath.badmintion,
                  onClicked: (selected) {
                    setState(() {
                      _isBadmintionSelected = selected;
                    });
                  },
                  isSelected: _isBadmintionSelected,
                ),
                AllGameShow(
                  onClicked: (selected) {
                    setState(() {
                      _isTableTenisSelected = selected;
                    });
                  },
                  isSelected: _isTableTenisSelected,
                  gameName: 'Table Tennis',
                  gameImage: ImageAssetPath.tableTenis,
                ),
                AllGameShow(
                  onClicked: (selected) {
                    setState(() {
                      _isFootBalSelected2 = selected;
                    });
                  },
                  isSelected: _isFootBalSelected2,
                  gameName: 'Football',
                  gameImage: ImageAssetPath.fotball,
                ),
                AllGameShow(
                  onClicked: (selected) {
                    setState(() {
                      _isBadmintionSelected2 = selected;
                    });
                  },
                  isSelected: _isBadmintionSelected2,
                  gameName: 'Badminton',
                  gameImage: ImageAssetPath.badmintion,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 330.sp,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Tennis',
                                    style: AppStyles.sliderText
                                        .copyWith(fontSize: 14.sp),
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
                                            borderRadius:
                                                BorderRadius.circular(5.sp)),
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
                                            borderRadius:
                                                BorderRadius.circular(5.sp)),
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
                                height: 10.sp,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset(
                                                ImageAssetPath
                                                    .homeNearbyActivityK,
                                                fit: BoxFit.fill,
                                                width: 50,
                                                height: 50,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              Positioned(
                                                top: 30,
                                                left: 30,
                                                right: 0,
                                                bottom: 0,
                                                child: ClipPath(
                                                  clipper: HexagonClipper(),
                                                  child: Container(
                                                    height: 18,
                                                    width: 18,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.green,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '4.3',
                                                        style: AppStyles
                                                            .sliderText
                                                            .copyWith(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const Text(
                                            'Steven \n Smith',
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset(
                                                ImageAssetPath
                                                    .homeNearbyActivityUser,
                                                fit: BoxFit.fill,
                                                width: 50,
                                                height: 50,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              Positioned(
                                                top: 30,
                                                left: 30,
                                                right: 0,
                                                bottom: 0,
                                                child: ClipPath(
                                                  clipper: HexagonClipper(),
                                                  child: Container(
                                                    height: 18,
                                                    width: 18,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.green,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '4.3',
                                                        style: AppStyles
                                                            .sliderText
                                                            .copyWith(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const Text(
                                            'Kevin',
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset(
                                                ImageAssetPath
                                                    .homeNearbyActivityE,
                                                fit: BoxFit.fill,
                                                width: 50,
                                                height: 50,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              Positioned(
                                                top: 30,
                                                left: 30,
                                                right: 0,
                                                bottom: 0,
                                                child: ClipPath(
                                                  clipper: HexagonClipper(),
                                                  child: Container(
                                                    height: 18,
                                                    width: 18,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.green,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '4.3',
                                                        style: AppStyles
                                                            .sliderText
                                                            .copyWith(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const Text(
                                            'Emma',
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset(
                                                ImageAssetPath
                                                    .homeNearbyActivityUser,
                                                fit: BoxFit.fill,
                                                width: 50,
                                                height: 50,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              Positioned(
                                                top: 30,
                                                left: 30,
                                                right: 0,
                                                bottom: 0,
                                                child: ClipPath(
                                                  clipper: HexagonClipper(),
                                                  child: Container(
                                                    height: 18,
                                                    width: 18,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.green,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '4.3',
                                                        style: AppStyles
                                                            .sliderText
                                                            .copyWith(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const Text(
                                            'Kevin',
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        ImageAssetPath.homeNearbyActivityA,
                                        fit: BoxFit.fill,
                                        width: 50,
                                        height: 50,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.sp,
                              ),
                              Text(
                                '6/10 going - Min 2  to start',
                                style: AppStyles.smallTextStyle.copyWith(
                                    fontSize: 12.sp,
                                    color: AppStyles.black.withOpacity(0.75)),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    ImageAssetPath.venueJoinUser,
                                    fit: BoxFit.fill,
                                    width: 20,
                                    height: 20,
                                    filterQuality: FilterQuality.high,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'RM88',
                                    style: AppStyles.bigTextStyle.copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    ImageAssetPath.venueJoinUser,
                                    fit: BoxFit.fill,
                                    width: 20,
                                    height: 20,
                                    filterQuality: FilterQuality.high,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'RM55',
                                    style: AppStyles.bigTextStyle.copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Sat 24 Dec  10:00AM',
                                style: AppStyles.smallTextStyle.copyWith(
                                    fontSize: 10.sp,
                                    color: AppStyles.black.withOpacity(0.75)),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                'Simei MRT Station (EW3)',
                                style: AppStyles.smallTextStyle.copyWith(
                                    fontSize: 10.sp,
                                    color: AppStyles.black.withOpacity(0.75)),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              AppButton(
                                  onClicked: () {},
                                  background: AppStyles.primary,
                                  text: 'Join')
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  bool _isFootBalSelected = false;
  bool _isBadmintionSelected = false;
  bool _isTableTenisSelected = false;
  bool _isFootBalSelected2 = false;
  bool _isBadmintionSelected2 = false;
}
