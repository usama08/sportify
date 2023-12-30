import 'package:flutter/material.dart';
import 'package:sportify/screen/details_of_venue/venue_join_screen.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:sportify/widget/shap_class.dart';

import '../constants/asset_path.dart';
import '../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:share_plus/share_plus.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Badminton  meetup',
                          style: AppStyles.sliderText.copyWith(fontSize: 18),
                        ),
                        IconButton(
                            onPressed: () async {
                              final box =
                                  context.findRenderObject() as RenderBox?;
                              await Share.share('Badminton meetup to play bot',
                                  sharePositionOrigin:
                                      box!.localToGlobal(Offset.zero) &
                                          box.size);
                            },
                            icon: const Icon(Icons.share))
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Adrian’s Double',
                      style:
                          AppStyles.appBarTitleTextStyle.copyWith(fontSize: 15),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                                              style:
                                                  AppStyles.sliderText.copyWith(
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
                    Text(
                      '6/10 player - 6MYR / person',
                      style: AppStyles.smallTextStyle.copyWith(fontSize: 14),
                    ),
                    Text(
                      'Game is on',
                      style: AppStyles.smallTextStyle
                          .copyWith(fontSize: 14, color: AppStyles.primary),
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppStyles.grey,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          color: AppStyles.black.withOpacity(0.7),
                          size: 25,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tomorrow, 5pm-7pm kuala lumpur time',
                                textAlign: TextAlign.start,
                                style: AppStyles.smallTextStyle
                                    .copyWith(fontSize: 14),
                              ),
                              Text(
                                'one time activity',
                                textAlign: TextAlign.start,
                                style: AppStyles.smallTextStyle.copyWith(
                                  fontSize: 14,
                                  color: AppStyles.black.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          color: AppStyles.black.withOpacity(0.7),
                          size: 25,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tomorrow, 5pm-7pm kuala lumpur time',
                                textAlign: TextAlign.start,
                                style: AppStyles.smallTextStyle
                                    .copyWith(fontSize: 14),
                              ),
                              Text(
                                'one time activity',
                                textAlign: TextAlign.start,
                                style: AppStyles.smallTextStyle.copyWith(
                                  fontSize: 14,
                                  color: AppStyles.black.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButton(
                        onClicked: () {
                          Get.to(() => const ActivityJoin());
                        },
                        background: AppStyles.primary,
                        text: 'Join')
                  ],
                ),
              ),
            ),
          );
        });
  }
}
