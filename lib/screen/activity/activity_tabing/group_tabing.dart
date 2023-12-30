import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';
/*import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/app_button.dart';*/
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class GroupTab extends StatefulWidget {
  const GroupTab({Key? key}) : super(key: key);

  @override
  State<GroupTab> createState() => _GroupTabState();
}

class _GroupTabState extends State<GroupTab> {
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
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.sp, right: 20.sp, top: 10.sp, bottom: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.sp),
                        child: Image.asset(
                          ImageAssetPath.teamGroup,
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
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.black,
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
                        'East coast tennis',
                        style: AppStyles.bigTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                      Text(
                        '400 players',
                        style: AppStyles.bigTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                      SizedBox(
                        width: 7.sp,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Since 05  jul 2023',
                            style: AppStyles.bigTextStyle.copyWith(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black.withOpacity(0.75)),
                          ),
                          const Spacer(),
                          Container(
                            height: 20.sp,
                            width: 60.sp,
                            decoration: BoxDecoration(
                                color: AppStyles.primary,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Center(
                              child: Text(
                                'Join',
                                style: AppStyles.sliderText.copyWith(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
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
        });

    /*return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImageAssetPath.groupTab,
                              fit: BoxFit.fill,
                              width: 75.sp,
                              height: 75.sp,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ],
                      ),
                       SizedBox(
                        width: 10.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           SizedBox(
                            height: 5.sp,
                          ),
                          Text(
                            'East coast tennis',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: AppStyles.black.withOpacity(0.75)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '400 players',
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                                color: AppStyles.black),
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
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                   AppButton(
                      onClicked: (){},
                      background: AppStyles.primary, text: 'Join')
                ],
              ),
            ),
          );
        });*/
  }
}
