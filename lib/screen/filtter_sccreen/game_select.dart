import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SelectGame extends StatefulWidget {
  const SelectGame({
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
  State<SelectGame> createState() => _SelectGameState();
}

class _SelectGameState extends State<SelectGame> {
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
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment
                .start, // Aligns items vertically at the center
            children: [
              Image.asset(
                widget.gameImage,
                height: 22.sp,
                width: 22.sp,
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 10.sp,
              ),
              Text(
                widget.gameName,
                style: AppStyles.sliderText.copyWith(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              widget.isSelected
                  ? Icon(
                      Icons.check,
                      size: 18.sp,
                      color: AppStyles.primary,
                    )
                  : const Text(''),
              SizedBox(
                width: 5.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
