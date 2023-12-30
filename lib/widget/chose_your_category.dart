import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SelectCategoryGame extends StatefulWidget {
  const SelectCategoryGame({
    Key? key,
    required this.text,
    required this.onClicked,
    required this.isSelected,
  }) : super(key: key);

  final String text;
  final ValueChanged<bool> onClicked;
  final bool isSelected;

  @override
  // ignore: library_private_types_in_public_api
  _SelectCategoryGameState createState() => _SelectCategoryGameState();
}

class _SelectCategoryGameState extends State<SelectCategoryGame> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onClicked(!widget.isSelected);
        });
      },
      child: Container(
        height: 40.sp,
        width: 90.sp,
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
              fontSize: 11.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
