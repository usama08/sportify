import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AppStyles {
  static const primary = Color(0xffEB7724);
  static const screenBackgroundColor = Color(0xffF6F6F6);
  static const authScaffoldColor = Color(0xffF6F6F6);
  static const danger500Color = Color(0xffEF4444);
  static const waring500Color = Color(0xffEAB308);
  static const success500Color = Color(0xff22C55E);
  static const facebookColor = Color(0xff1877f2);
  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);
  static const grey = Color(0xff9D9D9D);
  static const socialButtonBorder = Color(0xffE5E5E5);
  static const snapchatColor = Color(0xfffffc00);
  static const youtubeColor = Color(0xffff0000);
  static const instagramColor = Color(0xffe1306c);

  static const containerCornerRadius = 8.0;
  static const double cardCornerRadios = 0.0;
  static const inputBoxesVerticalMargin = 7.0;
  static const cornerRadius = 1.0;
  static const double appbarHeight = 50.0;
  static const double buttonHeight = 45.0;
  static const double homeIconSize = 30.0;
  static const double normalIconSize = 24.0;

  static const fontFamily = 'Inter';

  static Color whiteOpacityColor = const Color(0xffffffff).withOpacity(0.2);

  static TextStyle thinLargeTextStyle = TextStyle(
    color: AppStyles.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle thinMediumTextStyle = TextStyle(
    color: AppStyles.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle thickLargeTextStyle = TextStyle(
    color: AppStyles.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle normalTextStyle = TextStyle(
    color: AppStyles.black,
    fontSize: 6.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle whiteOpacityTextStyle = TextStyle(
    color: grey,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle whiteTextStyle = TextStyle(
    color: black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bigTextStyle = TextStyle(
    color: black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle subTitleTextStyle = TextStyle(
    color: black,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle sliderText = TextStyle(
    color: black,
    fontWeight: FontWeight.w600,
    fontSize: 22.sp,
  );

  static TextStyle activityJoinTabingText = TextStyle(
    color: black,
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
  );
  static TextStyle smallTextStyle = TextStyle(
    color: AppStyles.black.withOpacity(0.75),
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );
  static TextStyle homeAppBarTextStyle = TextStyle(
    color: black,
    fontWeight: FontWeight.w600,
    fontSize: 15.sp,
  );
  static TextStyle profileStyle = TextStyle(
    color: black.withOpacity(0.8),
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
  );
  static TextStyle appBarTitleTextStyle = TextStyle(
    color: black,
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
  );

  static TextStyle errorTextStyle = TextStyle(
    color: Colors.red,
    fontSize: 13.sp,
  );
}
