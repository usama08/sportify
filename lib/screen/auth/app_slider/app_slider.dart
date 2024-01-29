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
  const AppSlider({Key? key}) : super(key: key);

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  int currentIndex = 0;
  late PageController _controller;

  List<SliderPages> slider = [
    SliderPages(
      image: 'assets/images/home_image/sliders2.png',
      title: 'The community for sports players',
      subTitle:
          'We help sports players to build their\n personalized profile building\n for sports',
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
          'Played a good game? Track the score,\n exchange badges and compete \n in a friendly leaderboard.',
    ),
    SliderPages(
      image: 'assets/images/home_image/sliderss2.png',
      title: 'The easier way to organize tournaments',
      subTitle:
          'Played a good game? Track the score,\n exchange badges and compete \n in a friendly leaderboard.',
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
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: slider.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 45.h, // Adjust height as per requirement
                        width: double.infinity,
                        child: Image.asset(
                          slider[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          slider[index].title,
                          textAlign: TextAlign.center,
                          style: AppStyles.sliderText.copyWith(
                            color: AppColors.BlackColor.withOpacity(0.75),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          slider[index].subTitle,
                          textAlign: TextAlign.center,
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 10.sp,
                            color: AppColors.BlackColor.withOpacity(0.74),
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
                padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                        (index) => buildDot(index),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (currentIndex == 3) {
                          Get.to(() => const SingUpWithYourGoogle());
                        } else {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
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
