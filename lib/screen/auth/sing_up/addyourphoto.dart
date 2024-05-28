import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/constants/asset_path.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
import 'package:sportify/widget/app_button.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/male_female_btn.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AddYourPhoto extends StatefulWidget {
  const AddYourPhoto({super.key});

  @override
  State<AddYourPhoto> createState() => _AddYourPhotoState();
}

class _AddYourPhotoState extends State<AddYourPhoto> {
  var controller = Get.put(AuthController());

  Future<void> _selectImage() async {
    final picker = ImagePicker();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image Source'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('Gallery'),
                  onTap: () async {
                    Navigator.pop(context);
                    // ignore: deprecated_member_use
                    final pickedImage = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (pickedImage != null) {
                      setState(() {
                        controller.file = File(pickedImage.path);
                      });
                    }
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                GestureDetector(
                  child: const Text('Camera'),
                  onTap: () async {
                    Navigator.pop(context);
                    // ignore: deprecated_member_use
                    final pickedImage = await picker.pickImage(
                      source: ImageSource.camera,
                    );
                    if (pickedImage != null) {
                      setState(() {
                        controller.file = File(pickedImage.path);
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                ImageAssetPath.shape,
                fit: BoxFit.fill,
                height: 160.sp,
                width: MediaQuery.of(context).size.width,
                filterQuality: FilterQuality.high,
              ),
              Positioned(
                top: 30.sp,
                left: 20.sp,
                right: 10.sp,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                        size: 18.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Tell us more about you',
                        style: AppStyles.sliderText.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 75.sp,
                left: 50.sp,
                right: 35.sp,
                child: Text(
                  textAlign: TextAlign.center,
                  'Almost there! Just a few more things  for sport players to know you better ',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Positioned(
                top: 125.sp,
                left: 50.sp,
                right: 35.sp,
                bottom: 0.sp,
                child: Center(
                  child: Text(
                    'Add your photo',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: InkWell(
              onTap: _selectImage,
              child: controller.file != null
                  ? Container(
                      width: 100.sp,
                      height: 100.sp,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(controller.file!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : Image.asset(
                      ImageAssetPath.userImage,
                      fit: BoxFit.fill,
                      width: 100.sp,
                      height: 100.sp,
                      filterQuality: FilterQuality.high,
                    ),
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          if (_isBeginnerSelected)
            Text(
              "Male",
              style: AppStyles.appBarTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          if (_isIntermediateSelected)
            Text(
              "Female",
              style: AppStyles.appBarTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          SizedBox(
            height: 20.sp,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 35.sp,
              right: 35.sp,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemaleBtn(
                  text: 'male',
                  isSelected: _isBeginnerSelected,
                  onClicked: () => _handleSelection(
                      'male'), // Pass 'Male' when Male button is clicked
                ),
                MaleFemaleBtn(
                  text: 'female',
                  isSelected: _isIntermediateSelected,
                  onClicked: () => _handleSelection(
                      'female'), // Pass 'Female' when Female button is clicked
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(
          //       Icons.location_on,
          //       color: Colors.black,
          //       size: 15.sp,
          //     ),
          //     SizedBox(
          //       width: 5.sp,
          //     ),
          //     InkWell(
          //       onTap: () {
          //         Get.to(() => const SetLocation());
          //       },
          //       child: Text(
          //         'Change your location',
          //         style: TextStyle(
          //           fontSize: 12.sp,
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 25),
          //   child: SizedBox(
          //     height: 60,
          //     width: MediaQuery.of(context).size.width,
          //     child: InkWell(
          //       onTap: () {},
          //       child: Container(
          //         height: 60,
          //         width: MediaQuery.of(context).size.width,
          //         decoration: BoxDecoration(
          //             border: Border.all(color: AppStyles.primary, width: 2.5),
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(10)),
          //         child: Center(
          //           child: Text(
          //             'BIRMINGHAM',
          //             style: TextStyle(
          //               color: AppStyles.primary,
          //               fontSize: 12.sp,
          //               fontWeight: FontWeight.w600,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
              child: controller.isLoading.value != false
                  ? const Center(
                      child:
                          CircularProgressIndicator(color: AppColors.primary),
                    )
                  : AppButton(
                      onClicked: () async {
                        print('hit');
                        await controller.signUpApi(context);
                      },
                      background: AppStyles.primary,
                      text: 'NEXT'),
            );
          }),
        ],
      ),
    );
  }

  bool _isBeginnerSelected = true;
  bool _isIntermediateSelected = false;

  void _handleSelection(String gender) {
    setState(() {
      _isBeginnerSelected = gender == 'male';
      _isIntermediateSelected = gender == 'female';
      controller.gender = gender;
      print('value${controller.gender}');
    });
  }
}
