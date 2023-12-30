import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.text,
    required this.assetImagePath,
    this.onClicked,
  }) : super(key: key);

  final String text;
  final String assetImagePath;
  final VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: 40.sp,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: AppStyles.socialButtonBorder,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 8.sp),
            Image.asset(
              assetImagePath,
              width: 20.sp,
              height: 20.sp,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            ),
            const Spacer(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
