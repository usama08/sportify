import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Terms',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 13.sp, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorem Ipsum is simply dummy text of the....',
              style: AppStyles.whiteTextStyle
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              style: AppStyles.whiteOpacityTextStyle.copyWith(
                  fontSize: 11.sp, color: AppStyles.black.withOpacity(0.50)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              style: AppStyles.whiteOpacityTextStyle.copyWith(
                  fontSize: 11.sp, color: AppStyles.black.withOpacity(0.50)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              style: AppStyles.whiteOpacityTextStyle.copyWith(
                  fontSize: 11.sp, color: AppStyles.black.withOpacity(0.50)),
            ),
          ],
        ),
      ),
    );
  }
}
