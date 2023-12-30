import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CompetitionBtn extends StatelessWidget {
  const CompetitionBtn({
    Key? key,
    required  this.onClicked,
    required this.gameName,

  }) : super(key: key);

  final VoidCallback? onClicked;
  final String gameName;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 0,right: 0,top: 5,bottom: 5),
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
            child: Center(
              child: Text(
                gameName,
                style: AppStyles.sliderText.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}