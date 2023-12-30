import 'package:sportify/constants/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ShapeWidget extends StatelessWidget {
  const ShapeWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAssetPath.shape,
          height: 130.sp,
          width: 130.sp,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
        Positioned(
          top: 95,
          left: 105,
          right: 105,
          child: Text(text,
              style: AppStyles.sliderText.copyWith(
                fontSize: 15.sp,
              )),
        ),
      ],
    );
  }
}
