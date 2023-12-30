import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../../main_screen.dart';

class SliderStart extends StatefulWidget {
  const SliderStart({Key? key}) : super(key: key);

  @override
  State<SliderStart> createState() => _SliderStartState();
}

class _SliderStartState extends State<SliderStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            ImageAssetPath.startSlider,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'You’re all set.',
              style: AppStyles.sliderText
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'Start using sport to find  and organize activities and get more active.',
                textAlign: TextAlign.center,
                style: AppStyles.sliderText
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: AppButton(
                onClicked: () {
                  Get.to(() => const MainPage());
                },
                background: AppStyles.primary,
                text: "LET’S GO"),
          ),
        ],
      ),
    );
  }
}
