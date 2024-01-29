import 'package:flutter/material.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/widget/show_toast.dart';
import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  var authcntroller = Get.put(AuthController());
  @override
  void initState() {
    super.initState();
    authcntroller.getLocation(context);
  }

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
                  child: Text('Welcome!${authcntroller.latitude.toString()}',
                      style: AppStyles.sliderText.copyWith(
                        fontSize: 16.sp,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25.sp,
            ),
            AppTextField(
              textEditingController: authcntroller.username,
              hintText: 'Enter your full name',
            ),
            SizedBox(
              height: 20.sp,
            ),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.institutename,
              hintText: 'Enter Institute name',
            )),
            SizedBox(
              height: 20.sp,
            ),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.instituteId,
              hintText: 'Enter your Institute ID',
            )),
            SizedBox(
              height: 20.sp,
            ),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.email,
              hintText: 'Enter your email',
            )),
            SizedBox(
              height: 20.sp,
            ),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.phoneNumber,
              hintText: 'Enter Phone No',
            )),
            SizedBox(
              height: 10.sp,
            ),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.password,
              hintText: 'Enter password',
            )),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AppButton(
                background: AppStyles.primary,
                text: 'SIGN UP',
                onClicked: () {
                  if (authcntroller.email.text.trim().isEmpty) {
                    ToastWidget.show('Email is Empty', context,
                        backgroundColor: AppColors.redColor);
                  } else if (authcntroller.username.text.trim().isEmpty) {
                    ToastWidget.show('Username is Empty', context,
                        backgroundColor: AppColors.redColor);
                  } else if (authcntroller.institutename.text.trim().isEmpty) {
                    ToastWidget.show('Institute name is Empty', context,
                        backgroundColor: AppColors.redColor);
                  } else if (authcntroller.instituteId.text.trim().isEmpty) {
                    ToastWidget.show('Institute id is Empty', context,
                        backgroundColor: AppColors.redColor);
                  } else if (authcntroller.phoneNumber.text.trim().isEmpty) {
                    ToastWidget.show('Phone Number is Empty', context,
                        backgroundColor: AppColors.redColor);
                  } else if (authcntroller.password.text.trim().isEmpty) {
                    ToastWidget.show('Password is Empty', context,
                        backgroundColor: AppColors.redColor);
                  } else if (!authcntroller.password.text
                      .trim()
                      .contains(RegExp(r'[A-Z]'))) {
                    ToastWidget.show(
                        'Password must contain at least one uppercase letter',
                        context,
                        backgroundColor: AppColors.redColor);
                    return;
                  } else if (!authcntroller.password.text
                      .trim()
                      .contains(RegExp(r'[@\$#%&!]'))) {
                    ToastWidget.show(
                        'Password must contain at least one symbol', context,
                        backgroundColor: AppColors.redColor);
                    return;
                  } else if (authcntroller.password.text.trim().length < 8) {
                    ToastWidget.show(
                        'Password must contain at least 8 characters', context,
                        backgroundColor: AppColors.redColor);
                    return;
                  } else {
                    Get.to(() => const LoginScreen());
                  }
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
                onTap: () {},
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
