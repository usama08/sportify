import 'package:flutter/material.dart';
import '../../constants/asset_path.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class CoachTab extends StatefulWidget {
  const CoachTab({Key? key}) : super(key: key);

  @override
  State<CoachTab> createState() => _CoachTabState();
}

class _CoachTabState extends State<CoachTab> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.sp),
                        child: Image.asset(
                          ImageAssetPath.user,
                          fit: BoxFit.fill,
                          width: 65.sp,
                          height: 75.sp,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mike',
                              style: AppStyles.bigTextStyle.copyWith(
                                  fontSize: 12.sp,
                                  color: AppStyles.black.withOpacity(0.75)),
                            ),
                            Text(
                              'Since July 2022',
                              style: AppStyles.bigTextStyle.copyWith(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppStyles.black.withOpacity(0.32)),
                            ),
                            Row(
                              children: [
                                Text(
                                  '3.6',
                                  style: AppStyles.bigTextStyle.copyWith(
                                      fontSize: 12.sp,
                                      color: AppStyles.black.withOpacity(0.75)),
                                ),
                                SizedBox(
                                  width: 8.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star_border_purple500_outlined,
                                  color: Colors.orange,
                                  size: 15.sp,
                                ),
                                Icon(
                                  Icons.star_border_purple500_outlined,
                                  color: Colors.orange,
                                  size: 15.sp,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.sp,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 18.sp,
                                ),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Expanded(
                                    child: Text(
                                  'Upper Thompson Road, Singapore',
                                  style: AppStyles.bigTextStyle.copyWith(
                                      fontSize: 10.sp,
                                      color: AppStyles.black.withOpacity(0.75),
                                      fontWeight: FontWeight.normal),
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isFavorite =
                                    !isFavorite; // Toggle the favorite state on each tap
                              });
                            },
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.black,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Container(
                            height: 25.sp,
                            width: 50.sp,
                            decoration: BoxDecoration(
                                color: AppStyles.primary,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Center(
                              child: Text(
                                'View',
                                style: AppStyles.smallTextStyle.copyWith(
                                    color: AppStyles.white, fontSize: 11.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
