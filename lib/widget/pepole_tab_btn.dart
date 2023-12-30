import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
class PeopleButton extends StatelessWidget {
  const PeopleButton({Key? key, this.onClicked, required this.text}) : super(key: key);
  final VoidCallback? onClicked;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: 20.sp,
        width: 60.sp,
        decoration:  BoxDecoration(
            color: const Color(0xffEFEFEF),
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Center(child: Text(text,

          style: AppStyles.sliderText.copyWith(
              color: const Color(0xff000000),
              fontSize: 10.sp,
              fontWeight: FontWeight.normal
          ),
        )),
      ),
    );
  }
}
