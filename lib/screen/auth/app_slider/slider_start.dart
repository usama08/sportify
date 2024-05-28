import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages

class SliderStart extends StatefulWidget {
  const SliderStart({Key? key}) : super(key: key);

  @override
  State<SliderStart> createState() => _SliderStartState();
}

class _SliderStartState extends State<SliderStart> {
  var authcntroller = Get.put(AuthController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
          Obx(() {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: authcntroller.isLoading.value != false
                  ? const Center(
                      child:
                          CircularProgressIndicator(color: AppColors.primary),
                    )
                  : AppButton(
                      onClicked: () async {
                        authcntroller.loginApi(context);
                      },
                      background: AppStyles.primary,
                      text: "LET’S GO"),
            );
          }),
        ],
      ),
    );
  }
}
