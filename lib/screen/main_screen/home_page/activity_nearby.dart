import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
import '../../../widget/shap_class.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityNearby extends StatelessWidget {
  const ActivityNearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.sp,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Tennis',
                            style:
                                AppStyles.sliderText.copyWith(fontSize: 14.sp),
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
                          const SizedBox(
                            width: 5,
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
                                  'Activity',
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ball machine rental with or w/o coach (court included) ball machine rental with or w/o coach... ',
                        style: AppStyles.appBarTitleTextStyle
                            .copyWith(fontSize: 10.sp),
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
                                  Stack(
                                    children: [
                                      Image.asset(
                                        ImageAssetPath.homeNearbyActivityK,
                                        fit: BoxFit.fill,
                                        width: 50,
                                        height: 50,
                                        filterQuality: FilterQuality.high,
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
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                '4.3',
                                                style: AppStyles.sliderText
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
                                      ClipOval(
                                        child: Image.asset(
                                          ImageAssetPath.homeNearbyActivityUser,
                                          fit: BoxFit.fill,
                                          width: 50,
                                          height: 50,
                                          filterQuality: FilterQuality.high,
                                        ),
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
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                '4.3',
                                                style: AppStyles.sliderText
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
                                        ImageAssetPath.homeNearbyActivityE,
                                        fit: BoxFit.fill,
                                        width: 50,
                                        height: 50,
                                        filterQuality: FilterQuality.high,
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
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                            ),
                                            child: Center(
                                              child: Text(
                                                '4.3',
                                                style: AppStyles.sliderText
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
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '6/10 going - Min 2  to start',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 10.sp,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                      Text(
                        'Free',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 10.sp, color: AppStyles.primary),
                      ),
                      const Divider(
                        thickness: 1,
                        color: AppStyles.grey,
                      ),
                      Text(
                        'Sat 24 Dec  10:00AM',
                        style: AppStyles.smallTextStyle.copyWith(
                            color: AppStyles.black.withOpacity(0.75),
                            fontSize: 10.sp),
                      ),
                      SizedBox(
                        height: 3.sp,
                      ),
                      Text(
                        'Simei MRT Station (EW3)',
                        style: AppStyles.smallTextStyle.copyWith(
                            color: AppStyles.black.withOpacity(0.75),
                            fontSize: 10.sp),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      AppButton(
                        background: AppStyles.primary,
                        text: 'Join',
                        onClicked: () {
                          //  Get.to(const SingUpWithYourGoogle());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
