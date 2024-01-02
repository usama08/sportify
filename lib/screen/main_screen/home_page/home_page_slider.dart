import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/main_screen/home_page/slider_detail_screen.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class HomePageSlider extends StatefulWidget {
  const HomePageSlider({Key? key}) : super(key: key);

  @override
  State<HomePageSlider> createState() => _HomePageSliderState();
}

class _HomePageSliderState extends State<HomePageSlider> {
  int currentIndex = 0;
  final PageController _sliderController = PageController(initialPage: 0);
  // ignore: prefer_typing_uninitialized_variables
  var email, userid;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const HomeSliderDetailScreen()));
      },
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.white,
          child: PageView.builder(
              controller: _sliderController,
              itemCount: sliderView.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  //scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10.sp, bottom: 10.sp, left: 5.sp, right: 5.sp),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    textAlign: TextAlign.start,
                                    sliderView[i].title,
                                    style: AppStyles.sliderText.copyWith(
                                        fontSize: 13.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.75),
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 45,
                                  width: 150,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 60,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: AppStyles.primary,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        sliderView[i].btnTitle,
                                        style: AppStyles.sliderText.copyWith(
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.normal),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Center(
                              child: Image.asset(
                                sliderView[i].image,
                                height: 150,
                                width: 150,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            sliderView.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 12,
      width: currentIndex == index ? 12 : 12,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: currentIndex == index
              ? AppStyles.primary
              : const Color(0xffD9D9D9)),
    );
  }
}

class HomeSliderPages {
  String image;
  String title;
  String btnTitle;
  HomeSliderPages({
    required this.image,
    required this.title,
    required this.btnTitle,
  });
}

// ignore: non_constant_identifier_names
List<HomeSliderPages> sliderView = [
  HomeSliderPages(
    image: ImageAssetPath.mainslider2,
    title: 'Unlock your sport \n Premium',
    btnTitle: 'Try for free',
  ),
  HomeSliderPages(
    image: ImageAssetPath.mainslider1,
    title: 'Unlock your sport \n Premium',
    btnTitle: 'Try for free',
  ),
  HomeSliderPages(
    image: ImageAssetPath.mainslider2,
    title: 'Unlock your sport \n Premium',
    btnTitle: 'Try for free',
  ),
  HomeSliderPages(
    image: ImageAssetPath.mainslider1,
    title: 'Unlock your sport \n Premium',
    btnTitle: 'Try for free',
  ),
];
