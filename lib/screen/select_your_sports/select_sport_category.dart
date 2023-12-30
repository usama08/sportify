import 'package:sportify/constants/app_color.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/auth/sing_up/addyourphoto.dart';
import 'package:sportify/screen/select_your_sports/controller/sportcontroller.dart';
import 'package:sportify/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SelectSportCategory extends StatefulWidget {
  final String gamename;

  const SelectSportCategory({Key? key, required this.gamename})
      : super(key: key);

  @override
  State<SelectSportCategory> createState() => _SelectSportCategoryState();
}

class _SelectSportCategoryState extends State<SelectSportCategory> {
  var controllersport = Get.put(SportSelection());
  @override
  void initState() {
    super.initState();
    // datecontroller.DatePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: AppStyles.authScaffoldColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    ImageAssetPath.shape,
                    fit: BoxFit.fill,
                    height: 130.sp,
                    width: 130.sp,
                    filterQuality: FilterQuality.high,
                  ),
                  Positioned(
                    top: 30.sp,
                    left: 15.sp,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                            size: 18.sp,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'How good are you at these',
                            style: AppStyles.sliderText.copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80.sp,
                    left: 20.sp,
                    right: 35.sp,
                    child: Row(
                      children: [
                        Text(
                          widget.gamename,
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 13.sp,
                            color: AppStyles.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 5,
                  children: [
                    for (int index = 0;
                        index < controllersport.levelsection.length;
                        index++)
                      buildFilterContainer(
                        alignment: Alignment.center,
                        color:
                            index == controllersport.selectedFilterIndex.value
                                ? AppColors.primary
                                : AppColors.whiteColor,
                        border: Border.all(
                          width: 0.5,
                        ),
                        text: controllersport.levelsection[index],
                        textcolor:
                            index == controllersport.selectedFilterIndex.value
                                ? Colors.white
                                : AppColors.BlackColor,
                        onTap: () {
                          controllersport.selectedFilterIndex.value = index;
                        },
                      ),
                    SizedBox(width: 5.w),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
                child: AppButton(
                    onClicked: () {
                      Get.offAll(() => const AddYourPhoto());
                    },
                    background: AppStyles.primary,
                    text: 'Next'),
              )
            ],
          ),
        ),
      );
    });
  }
}

Widget buildFilterContainer({
  Border? border,
  double gap = 0.0,
  alignment,
  text,
  color,
  textcolor,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 40.sp,
      width: 90.sp,
      alignment: alignment,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
        color: color,
        border: border,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.normal,
            color: textcolor,
          ),
        ),
      ),
    ),
  );
}
