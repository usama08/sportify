import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class VenueProductTab extends StatefulWidget {
  final String image, text, price;

  const VenueProductTab({
    Key? key,
    required this.image,
    required this.text,
    required this.price,
  }) : super(key: key);

  @override
  State<VenueProductTab> createState() => _VenueProductTabState();
}

class _VenueProductTabState extends State<VenueProductTab> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 10.sp,
          ),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      widget.image,
                      height: 100.sp,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    Positioned(
                      left: 100.sp,
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
                          color: isFavorite ? Colors.red : Colors.red,
                          size: 18.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: Text(
                    widget.text,
                    style: AppStyles.appBarTitleTextStyle.copyWith(
                        fontSize: 12.sp,
                        color: AppStyles.black.withOpacity(0.75),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: Text(
                    widget.price,
                    style: AppStyles.appBarTitleTextStyle
                        .copyWith(fontSize: 11.sp, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
