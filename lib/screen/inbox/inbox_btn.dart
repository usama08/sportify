import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class InboxBtn extends StatelessWidget {
  const InboxBtn({
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
    return Container(
      decoration: BoxDecoration(
          color: AppStyles.white, borderRadius: BorderRadius.circular(10)),
      height: 100.sp,
      width: 130.sp,
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
        child: InkWell(
          onTap: onClicked,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  gameImage,
                  height: 20,
                  width: 20,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Text(
                  gameName,
                  style: AppStyles.sliderText.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: AppStyles.grey.withOpacity(0.8)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
