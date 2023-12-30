import 'package:flutter/material.dart';
import 'package:sportify/screen/location_set/set_your_location.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class VenueDetailsTab extends StatefulWidget {
  const VenueDetailsTab({Key? key}) : super(key: key);

  @override
  State<VenueDetailsTab> createState() => _VenueDetailsTabState();
}

class _VenueDetailsTabState extends State<VenueDetailsTab> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: "Owned by  ",
                  style: AppStyles.smallTextStyle.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                  ),
                  children: [
                    TextSpan(
                      text: "Thompson",
                      style: AppStyles.smallTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppStyles.primary,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
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
            height: 5.sp,
          ),
          Row(
            children: [
              Text(
                'Are you the business owner?',
                style: AppStyles.smallTextStyle.copyWith(
                    color: AppStyles.black.withOpacity(0.75),
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 17.sp,
                  width: 50.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppStyles.primary, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'CLAIM',
                      style: TextStyle(
                        color: AppStyles.primary,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.sp,
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: AppStyles.black,
                size: 14.sp,
              ),
              SizedBox(
                width: 5.sp,
              ),
              Text(
                'Upper Thompson Road, Singapore',
                style: AppStyles.smallTextStyle.copyWith(
                    color: AppStyles.black.withOpacity(0.75), fontSize: 10.sp),
              )
            ],
          ),
          SizedBox(
            height: 8.sp,
          ),
          Image.asset(
            ImageAssetPath.staticMap,
            height: 110.sp,
            width: MediaQuery.of(context).size.width,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 8.sp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: AppStyles.black,
                size: 13.sp,
              ),
              SizedBox(
                width: 5.sp,
              ),
              Expanded(
                child: Text(
                  '10,Rubik Street ,Upper Thompson Road, Singapore',
                  style: AppStyles.smallTextStyle.copyWith(
                      color: AppStyles.black.withOpacity(0.75),
                      fontSize: 10.sp),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            children: [
              Icon(
                Icons.access_time_outlined,
                color: AppStyles.black,
                size: 13.sp,
              ),
              SizedBox(
                width: 5.sp,
              ),
              Text(
                'Open now',
                style: AppStyles.smallTextStyle.copyWith(
                  fontSize: 10.sp,
                  color: AppStyles.black.withOpacity(0.75),
                ),
              ),
              SizedBox(
                width: 2.sp,
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: AppStyles.black,
                size: 13.sp,
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            children: [
              Icon(
                Icons.call,
                color: AppStyles.black,
                size: 13.sp,
              ),
              SizedBox(
                width: 5.sp,
              ),
              Text(
                '6253 4582',
                style: AppStyles.smallTextStyle.copyWith(
                  fontSize: 10.sp,
                  color: AppStyles.black.withOpacity(0.75),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.sp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  launchUrl(Uri(scheme: 'tel', path: '1234567891'));
                },
                child: Container(
                  height: 35.sp,
                  width: 130.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppStyles.primary, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'CALL',
                      style: TextStyle(
                        color: AppStyles.primary,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const SetLocation());
                },
                child: Container(
                  height: 35.sp,
                  width: 130.sp,
                  decoration: BoxDecoration(
                      color: AppStyles.primary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'LOCATION',
                    style: AppStyles.sliderText.copyWith(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
