import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
import '../../constants/asset_path.dart';
import '../../utils/app_styles.dart';

class InboxPeopleTab extends StatefulWidget {
  const InboxPeopleTab({Key? key}) : super(key: key);

  @override
  State<InboxPeopleTab> createState() => _InboxPeopleTabState();
}

class _InboxPeopleTabState extends State<InboxPeopleTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.sp, right: 20.sp, top: 15.sp, bottom: 15.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      ImageAssetPath.homeNearbyActivityUser,
                      fit: BoxFit.fill,
                      width: 40.sp,
                      height: 40.sp,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Steven Smith',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black),
                      ),
                      Text(
                        'Since June 2020',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.50)),
                      ),
                      Text(
                        'Roman, OK',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
