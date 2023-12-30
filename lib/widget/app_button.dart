import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    Key? key,
    required this.background,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  final Color background;
  final String text;
  final VoidCallback? onClicked;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 35.sp),
          backgroundColor: AppStyles.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: widget.onClicked,
        child: Text(
          widget.text,
          style: AppStyles.sliderText.copyWith(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold),
        ));
  }
}
