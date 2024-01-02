// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/screen/select_country/loginwith_social_account.dart';
import 'package:sportify/utils/app_styles.dart';

class SliderPages {
  final String image;
  final String title;
  final String subTitle;

  SliderPages({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  int currentIndex = 0;

  final PageController _sliderController = PageController(initialPage: 0);
  late PageController _controller;

  List<SliderPages> slider = [
    SliderPages(
      image: 'assets/images/home_image/sliders2.png',
      title: 'The community for sports players',
      subTitle:
          'We help sports players to build their\n personalized profile building\nfor sports',
    ),
    SliderPages(
      image: 'assets/images/home_image/sliders12.png',
      title: 'Find the sport buddies near you',
      subTitle:
          'Find the people at your skill level. Join a \n sports group to organize activities \n and inspire each other.',
    ),
    SliderPages(
      image: 'assets/images/home_image/scorre.png',
      title: 'Get better at your sports',
      subTitle:
          'Played  a good game? Track the score,\n exchanges badges and compete \n in a friendly leaderboard.',
    ),
    SliderPages(
      image: 'assets/images/home_image/sliderss2.png',
      title: 'The easier way to organize tournaments',
      subTitle:
          'Played  a good game? Track the score,\n exchanges badges and compete \n in a friendly leaderboard.',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  if (mounted) {
                    setState(() {
                      currentIndex = value;
                    });
                  }
                },
                itemCount: slider.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(slider[index].image),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          textAlign: TextAlign.center,
                          slider[index].title,
                          style: AppStyles.sliderText.copyWith(
                            color: AppStyles.black.withOpacity(0.75),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          textAlign: TextAlign.center,
                          slider[index].subTitle,
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 10.sp,
                            color: AppStyles.black.withOpacity(0.74),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const SingUpWithYourGoogle());
                      },
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                          letterSpacing: 0.0,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        slider.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (currentIndex == slider.length - 1) {
                          Get.to(() => const SingUpWithYourGoogle());
                        } else if (_sliderController.positions.isNotEmpty) {
                          _sliderController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                        // Add an else block or additional logic if needed for cases when positions are empty.
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                          letterSpacing: 0.0,
                          fontSize: 13.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 38 : 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? const Color(0xffEB7724)
            : const Color(0xffD9D9D9),
      ),
    );
  }
}
