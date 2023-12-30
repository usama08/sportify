import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SportSelect extends StatelessWidget {
  const SportSelect({
    Key? key,
    required this.onClicked,
    required this.gameName,
    required this.gameImage,
  }) : super(key: key);

  final VoidCallback? onClicked;
  final String gameName;
  final String gameImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: 60.sp,
        width: 90.sp,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.center, // Aligns items vertically at the center
          children: [
            Image.asset(
              gameImage,
              height: 25.sp,
              width: 25.sp,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 3.sp,
            ),
            Text(
              gameName,
              style: AppStyles.sliderText.copyWith(
                fontSize: 11.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
