import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 15.0.sp,
          ),
          margin: EdgeInsets.only(top: 40.0.sp, right: 8.0.sp, left: 8.sp),
          decoration: BoxDecoration(
              color: AppStyles.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 0.0,
                  offset: Offset(0.0, 0.0),
                ),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Friendly",
                    style: AppStyles.appBarTitleTextStyle.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w500)),
              ) //
                  ),
              Center(
                  child: Padding(
                padding: EdgeInsets.all(10.0.sp),
                child: Text("2 players has awarded you this budge",
                    style: AppStyles.smallTextStyle.copyWith(
                        fontSize: 9.sp,
                        color: AppStyles.grey,
                        fontWeight: FontWeight.w400)),
              ) //
                  ),
              SizedBox(height: 5.0.sp),
              Center(
                child: SizedBox(
                  height: 30.sp,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: MediaQuery.of(context).size.width / 5,
                        child: SizedBox(
                          height: 50.sp,
                          width: 170.sp,
                          child: Stack(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  ImageAssetPath.homeNearbyActivityUser,
                                  fit: BoxFit.fill,
                                  width: 30.sp,
                                  height: 30.sp,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 30,
                                child: ClipOval(
                                  child: Image.asset(
                                    ImageAssetPath.homeNearbyActivityK,
                                    fit: BoxFit.fill,
                                    width: 30.sp,
                                    height: 30.sp,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 60,
                                  child: ClipOval(
                                    child: Image.asset(
                                      ImageAssetPath.homeNearbyActivityE,
                                      fit: BoxFit.fill,
                                      width: 30.sp,
                                      height: 30.sp,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 90,
                                  child: ClipOval(
                                    child: Image.asset(
                                      ImageAssetPath.homeNearbyActivityS,
                                      fit: BoxFit.fill,
                                      width: 30.sp,
                                      height: 30.sp,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  )),
                              Positioned(
                                top: 0,
                                left: 120,
                                child: ClipOval(
                                  child: Image.asset(
                                    ImageAssetPath.homeNearbyActivityR,
                                    fit: BoxFit.fill,
                                    width: 30.sp,
                                    height: 30.sp,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0)),
                  ),
                  child: const Center(
                    child: Text(
                      "Learn more",
                      style:
                          TextStyle(color: AppStyles.primary, fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        Positioned(
          right: 95.sp,
          left: 95.sp,
          bottom: 135.sp,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              ImageAssetPath.icRankingGroup,
              height: 50.sp,
              width: 50.sp,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
