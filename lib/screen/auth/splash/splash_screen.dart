import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportify/screen/auth/app_slider/App_slider.dart';

import '../controller/auth_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var authcntroller = Get.put(AuthController());

  @override
  void initState() {
    authcntroller.getLocation(context);
    Timer(const Duration(seconds: 4), () => _navigateToHome());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/home_image/splashh.gif',
              filterQuality: FilterQuality.high,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToHome() {
    Get.offAll(const AppSlider());
  }
}
