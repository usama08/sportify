import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
import 'package:sportify/screen/auth/sing_up/sing_up_screen.dart';
import '../../utils/app_styles.dart';
import '../../widget/shape_widget.dart';
import '../../widget/social_sing_widget.dart';
// ignore: depend_on_referenced_packages

import 'package:sizer/sizer.dart';

import '../auth/controller/auth_controller.dart';

class SingUpWithYourGoogle extends StatefulWidget {
  const SingUpWithYourGoogle({super.key});

  @override
  State<SingUpWithYourGoogle> createState() => _SingUpWithYourGoogleState();
}

class _SingUpWithYourGoogleState extends State<SingUpWithYourGoogle> {
  var authcntroller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShapeWidget(text: ''),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageAssetPath.splash,
                fit: BoxFit.fill,
                height: 49.sp,
                width: 158.sp,
                filterQuality: FilterQuality.high,
              ),
              SizedBox(
                height: 40.sp,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.sp,
                    width: 258.sp,
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
                    child: Text(
                      'Sign in  ',
                      style: AppStyles.smallTextStyle
                          .copyWith(color: AppStyles.primary, fontSize: 13.sp),
                    ),
                  ),
                ),
              ),
              // const LoginWithSocial(),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                'Don’t have an account ? ',
                style: AppStyles.smallTextStyle
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    authcntroller.getLocation(context);
                    Get.to(() => const SingUpScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.sp,
                    width: 258.sp,
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
                    child: Text(
                      'Sign up',
                      style: AppStyles.smallTextStyle
                          .copyWith(color: AppStyles.primary, fontSize: 13.sp),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
