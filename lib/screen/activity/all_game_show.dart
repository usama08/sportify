import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AllGameShow extends StatefulWidget {
  const AllGameShow({
    Key? key,
    required this.onClicked,
    required this.gameName,
    required this.gameImage,
    required this.isSelected,
  }) : super(key: key);

  final ValueChanged<bool> onClicked;
  final String gameName;
  final String gameImage;
  final bool isSelected;

  @override
  State<AllGameShow> createState() => _AllGameShowState();
}

class _AllGameShowState extends State<AllGameShow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onClicked(!widget.isSelected);
        });
      },
      child: Container(
        height: 50.sp,
        width: 50.sp,
        decoration: BoxDecoration(
          color: widget.isSelected ? AppStyles.primary : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.center, // Aligns items vertically at the center
          children: [
            Image.asset(
              widget.gameImage,
              height: 22.sp,
              width: 22.sp,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.gameName,
              style: AppStyles.sliderText.copyWith(
                fontSize: 7.sp,
                color: widget.isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
