import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';

class ProfileSettingWidget extends StatelessWidget {
  const ProfileSettingWidget(
      {Key? key, required this.text, required this.onClicked})
      : super(key: key);
  final String text;
  final VoidCallback? onClicked;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          children: [
            Text(
              text,
              style: AppStyles.appBarTitleTextStyle.copyWith(fontSize: 16),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              color: AppStyles.primary,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
