import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/auth/app_slider/App_slider.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () => _navigateToHome());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/home_image/splashh.gif',
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  void _navigateToHome() {
    Get.offAll(const AppSlider());
  }
}
