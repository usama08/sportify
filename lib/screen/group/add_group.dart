import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/main_screen.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:sportify/widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/widget/input_text_fild.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AddGroup extends StatefulWidget {
  const AddGroup({Key? key}) : super(key: key);

  @override
  State<AddGroup> createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                child: Image.asset(
                  ImageAssetPath.login,
                  fit: BoxFit.fill,
                  height: 130.sp,
                  width: MediaQuery.of(context).size.width,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Positioned(
                top: 30.sp,
                left: 20.sp,
                right: 25.sp,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Add Team',
                        style: AppStyles.sliderText.copyWith(
                            fontSize: 13.sp,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 70.sp,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                  child: const InputTextField(hintText: 'Team Name'),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.sp, right: 7.sp),
            child: const AppTextField(
              hintText: 'Description',
            ),
          ),
          SizedBox(height: 40.sp),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: AppButton(
                onClicked: () {
                  Get.offAll(() => const MainPage());
                },
                background: AppStyles.primary,
                text: 'ADD'),
          ),
        ],
      ),
    );
  }
}
