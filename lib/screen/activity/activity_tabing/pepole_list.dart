import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/pepole_tab_btn.dart';
import 'package:sportify/widget/shap_class.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class PeopleListTab extends StatefulWidget {
  const PeopleListTab({Key? key}) : super(key: key);

  @override
  State<PeopleListTab> createState() => _PeopleListTabState();
}

class _PeopleListTabState extends State<PeopleListTab> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                          style: AppStyles.sliderText.copyWith(
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
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            ImageAssetPath.fotball,
                            height: 18.sp,
                            width: 18.sp,
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                          ),
                          Text(
                            'Siew Kam Seng ',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black),
                          ),
                          Text(
                            'Choa Chu Kang, Singapore',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black.withOpacity(0.42)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFavorite =
                                !isFavorite; // Toggle the favorite state on each tap
                          });
                        },
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.black,
                          size: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          PeopleButton(
                            text: 'View',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          PeopleButton(
                            text: 'Block',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PeopleButton(
                            text: 'Follow',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          PeopleButton(
                            text: 'Unblock',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PeopleButton(
                            text: 'Unfollow',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          PeopleButton(
                            text: 'Report',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PeopleButton(
                            text: 'Chat',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
