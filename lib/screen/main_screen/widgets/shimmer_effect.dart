import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.sp,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 00, top: 10, bottom: 10),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 60.sp,
                        width: 60.sp,
                        color: Colors.white, // Change color if needed
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 30.w,
                          height: 10,
                          color: Colors.white, // Change color if needed
                        ),
                        SizedBox(height: 3.sp),
                        Container(
                          width: 50.w,
                          height: 10,
                          color: Colors.white, // Change color if needed
                        ),
                        SizedBox(height: 3.sp),
                        Container(
                          width: 50.w,
                          height: 10,
                          color: Colors.white, // Change color if needed
                        ),
                        SizedBox(height: 3.sp),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 40,
                              color: Colors.white, // Change color if needed
                            ),
                            SizedBox(width: 20.sp),
                            Container(
                              height: 10,
                              width: 63,
                              color: Colors.white, // Change color if needed
                            ),
                            SizedBox(width: 10.sp),
                            Container(
                              height: 10,
                              width: 63,
                              color: Colors.white, // Change color if needed
                            ),
                          ],
                        ),
                        SizedBox(height: 3.sp),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 70,
                              color: Colors.white, // Change color if needed
                            ),
                            SizedBox(width: 7.sp),
                            Container(
                              height: 15.sp,
                              width: 42.sp,
                              color: Colors.white, // Change color if needed
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              height: 15.sp,
                              width: 42.sp,
                              color: Colors.white, // Change color if needed
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
