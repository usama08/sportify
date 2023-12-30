import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class CreateActivityButton extends StatelessWidget {
  const CreateActivityButton({
    Key? key,
    required this.onClicked,
    required this.gameName,
    required this.gameImage,
  }) : super(key: key);

  final VoidCallback? onClicked;
  final String gameName;
  final String gameImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.sp,
      width: 90.sp,
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
        child: InkWell(
          onTap: onClicked,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment
                  .center,
              children: [

                Padding(
                  padding:  EdgeInsets.only(left: 10.sp),
                  child: Text(
                    gameName,
                    style: AppStyles.sliderText.copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  gameImage,
                  height: 13.sp,
                  width: 13.sp,
                  fit: BoxFit.fill,
                ),

                SizedBox(width: 10.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
