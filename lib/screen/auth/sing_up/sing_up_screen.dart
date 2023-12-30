import 'package:flutter/material.dart';
import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  ImageAssetPath.shape,
                  fit: BoxFit.fill,
                  height: 130.sp,
                  width: 130.sp,
                  filterQuality: FilterQuality.high,
                ),
                Positioned(
                  top: 30.sp,
                  left: 15.sp,
                  right: 15.sp,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.black,
                          size: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 100.sp,
                  left: 100.sp,
                  child: Text('Welcome!',
                      style: AppStyles.sliderText.copyWith(
                        fontSize: 16.sp,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25.sp,
            ),
            const AppTextField(
              hintText: 'Enter your full name',
            ),
            SizedBox(
              height: 20.sp,
            ),
            const Center(
                child: AppTextField(
              hintText: 'Enter your Institute ID',
            )),
            SizedBox(
              height: 20.sp,
            ),
            const Center(
                child: AppTextField(
              hintText: 'Enter your email',
            )),
            SizedBox(
              height: 20.sp,
            ),
            const Center(
                child: AppTextField(
              hintText: 'Enter password',
            )),
            SizedBox(
              height: 20.sp,
            ),
            const Center(
                child: AppTextField(
              hintText: 'Re-Enter password',
            )),
            SizedBox(
              height: 30.sp,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AppButton(
                background: AppStyles.primary,
                text: 'SIGN UP',
                onClicked: () {
                  Get.to(() => const LoginScreen());
                },
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Center(
              child: Text(
                'OR  ',
                style: AppStyles.smallTextStyle
                    .copyWith(color: AppStyles.black, fontSize: 15.sp),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => const LoginScreen());
                },
                child: Text(
                  'Sign in',
                  style: AppStyles.smallTextStyle
                      .copyWith(color: AppStyles.primary, fontSize: 13.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
