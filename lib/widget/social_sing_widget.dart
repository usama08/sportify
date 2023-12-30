import 'package:sportify/constants/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
import 'package:sportify/widget/social_media_button.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class LoginWithSocial extends StatefulWidget {
  const LoginWithSocial({Key? key}) : super(key: key);

  @override
  State<LoginWithSocial> createState() => _LoginWithSocialState();
}

class _LoginWithSocialState extends State<LoginWithSocial> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
          child: SocialMediaButton(
            onClicked: () {
              Get.to(() => const LoginScreen());
            },
            text: 'Sign in with Google',
            assetImagePath: ImageAssetPath.google,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
          child: SocialMediaButton(
            onClicked: () {
              Get.to(() => const LoginScreen());
            },
            text: 'Sign in with Facebook',
            assetImagePath: ImageAssetPath.facebook,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
