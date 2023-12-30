import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        ImageAssetPath.user,
                        fit: BoxFit.fill,
                        width: 70.sp,
                        height: 73.sp,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.sp),
                          Text(
                            'Lorem Ipsum is simply dummy text',
                            style: AppStyles.whiteOpacityTextStyle.copyWith(
                                fontSize: 11.sp,
                                color: AppStyles.black.withOpacity(0.75),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3.sp,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '11 min ago',
                                style: AppStyles.whiteOpacityTextStyle.copyWith(
                                    fontSize: 10.sp,
                                    color: AppStyles.black.withOpacity(0.68),
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text("|"),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Sports',
                                style: AppStyles.whiteOpacityTextStyle.copyWith(
                                    fontSize: 10.sp,
                                    color: const Color(0xff277C82),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
