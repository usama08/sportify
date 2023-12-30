import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityButton extends StatefulWidget {
  const ActivityButton(
      {Key? key,
      required this.text,
      required this.onClicked,
      required this.isSelected})
      : super(key: key);
  final String text;
  final ValueChanged<bool> onClicked;
  final bool isSelected;

  @override
  State<ActivityButton> createState() => _ActivityButtonState();
}

class _ActivityButtonState extends State<ActivityButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.sp,
      width: 75.sp,
      child: InkWell(
        onTap: () {
          setState(() {
            widget.onClicked(!widget.isSelected);
          });
        },
        child: Container(
          height: 70.sp,
          width: 150.sp,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
            color: widget.isSelected ? AppStyles.primary : Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: widget.isSelected ? AppStyles.primary : Colors.white,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : Colors.black,
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
