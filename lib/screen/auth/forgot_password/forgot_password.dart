import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
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
                child: Text('Forgot Password',
                    style: AppStyles.sliderText.copyWith(
                      fontSize: 16.sp,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          const Center(
              child: AppTextField(
            hintText: 'Enter your email',
          )),
          SizedBox(
            height: 25.sp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AppButton(
                onClicked: () {
                  Navigator.of(context).pop();
                },
                background: AppStyles.primary,
                text: 'FORGOT PASSWORD'),
          ),
        ],
      ),
    );
  }
}
