import 'package:flutter/material.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
import 'package:sportify/screen/auth/forgot_password/forgot_password.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:sportify/widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// import '../../../widget/social_sing_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
import 'package:sportify/widget/show_toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var authcntroller = Get.put(AuthController());
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
                  child: Text('Welcome Back!',
                      style: AppStyles.sliderText.copyWith(
                        fontSize: 16.sp,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Center(
              child: Image.asset(
                ImageAssetPath.loginUserGraph,
                fit: BoxFit.fill,
                height: 130.sp,
                width: 130.sp,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.email,
              hintText: 'Enter your email',
            )),
            const SizedBox(
              height: 30,
            ),

            Center(
                child: AppTextField(
              textEditingController: authcntroller.password,
              hintText: 'Enter password',
            )),
            SizedBox(
              height: 10.sp,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const ForgotPassword());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: AppStyles.thinMediumTextStyle
                          .copyWith(color: AppStyles.primary, fontSize: 15.sp),
                    )),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),

            Obx(
              () {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: authcntroller.isLoading.value != false
                      ? const Center(
                          child: CircularProgressIndicator(
                              color: AppColors.primary),
                        )
                      : AppButton(
                          onClicked: () async {
                            if (authcntroller.email.text.trim().isEmpty) {
                              ToastWidget.show('Email is Empty', context,
                                  backgroundColor: AppColors.redColor);
                            } else if (authcntroller.password.text
                                .trim()
                                .isEmpty) {
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
                                  'Password must contain at least one symbol',
                                  context,
                                  backgroundColor: AppColors.redColor);
                              return;
                            } else if (authcntroller.password.text
                                    .trim()
                                    .length <
                                8) {
                              ToastWidget.show(
                                  'Password must contain at least 8 characters',
                                  context,
                                  backgroundColor: AppColors.redColor);
                              return;
                            } else {
                              await authcntroller.loginApi();
                            }
                          },
                          background: AppStyles.primary,
                          text: 'SIGN IN'),
                );
              },
            ),
            SizedBox(
              height: 20.sp,
            ),
            // const LoginWithSocial(),
          ],
        ),
      ),
    );
  }
}
