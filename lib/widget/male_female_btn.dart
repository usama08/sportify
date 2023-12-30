import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
class MaleFemaleBtn extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onClicked;

  const MaleFemaleBtn({super.key,
    required this.text,
    required this.isSelected,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.sp,
      width: 110.sp,
      decoration: BoxDecoration(
        color: isSelected ? AppStyles.primary : Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color:isSelected ? AppStyles.primary : AppStyles.grey,
          width: 2.0,
        ),
      ),
      child: InkWell(
        onTap: onClicked,
        child: Center(
          child: Text(
            text,
            style: AppStyles.sliderText.copyWith(
              color: isSelected ? AppStyles.white : AppStyles.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}