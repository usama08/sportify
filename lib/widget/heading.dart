import 'package:flutter/material.dart';
import 'package:sportify/constants/app_color.dart';

bool compulsory = true;
Widget heading(BuildContext context, heading, bool compulsory) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: RichText(
      maxLines: 3,
      text: TextSpan(
        children: [
          TextSpan(
            text: heading,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.BlackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
          ),
          compulsory
              ? TextSpan(
                  text: ' *',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: AppColors.redColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                )
              : TextSpan(
                  text: '',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: AppColors.redColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                )
        ],
      ),
    ),
  );
}
