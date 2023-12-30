import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/filtter_sccreen/filtter_screen.dart';
import 'package:sportify/screen/rancking/racking_detail.dart';
import 'package:sportify/screen/rancking/racking_list.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class RackingHomeScreen extends StatefulWidget {
  const RackingHomeScreen({Key? key}) : super(key: key);

  @override
  State<RackingHomeScreen> createState() => _RackingHomeScreenState();
}

class _RackingHomeScreenState extends State<RackingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Ranking',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FiltterScreen(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 130.sp,
                    width: 125.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            ImageAssetPath.rackingStart,
                            height: 50,
                            width: 50,
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Top ranked \nbadminton players',
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 10.sp,
                            color: AppStyles.black.withOpacity(0.75),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(() => const RackingDetailScreen());
                    },
                    child: Container(
                      height: 130.sp,
                      width: 125.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Aligns items vertically at the center
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left:
                                    10.0), // Adds left padding to the game image
                            child: SvgPicture.asset(
                              ImageAssetPath.icRankingGroup,
                              height: 40.sp,
                              width: 40.sp,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Super Smash',
                            style: AppStyles.sliderText.copyWith(
                              fontSize: 10.sp,
                              color: AppStyles.black.withOpacity(0.75),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const RackingList(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
