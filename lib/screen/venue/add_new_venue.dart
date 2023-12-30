import 'dart:io';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/main_screen.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:sportify/widget/input_text_fild.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class AddVenue extends StatefulWidget {
  const AddVenue({Key? key}) : super(key: key);

  @override
  State<AddVenue> createState() => _AddVenueState();
}

class _AddVenueState extends State<AddVenue> {
  List<String> selectedValues = [];

  void _onCheckboxSelected(String value, bool isChecked) {
    setState(() {
      if (isChecked) {
        selectedValues.add(value);
      } else {
        selectedValues.remove(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  child: Image.asset(
                    ImageAssetPath.login,
                    fit: BoxFit.fill,
                    height: 130.sp,
                    width: MediaQuery.of(context).size.width,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Positioned(
                  top: 30.sp,
                  left: 20.sp,
                  right: 25.sp,
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
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Add Venue',
                          style: AppStyles.sliderText.copyWith(
                              fontSize: 13.sp,
                              color: AppStyles.black.withOpacity(0.75)),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 70.sp,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                    child: const InputTextField(hintText: 'Venue Name'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.sp,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: AppStyles.primary,
                      checkColor: AppStyles.white,
                      value: selectedValues.contains('Football'),
                      onChanged: (bool? value) {
                        _onCheckboxSelected('Football', value!);
                      },
                    ),
                    Image.asset(
                      ImageAssetPath.fotball,
                      height: 15.sp,
                      width: 15.sp,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      'Football',
                      style: AppStyles.sliderText.copyWith(
                          fontSize: 10.sp,
                          color: AppStyles.black.withOpacity(0.75)),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: AppStyles.primary,
                      checkColor: AppStyles.white,
                      value: selectedValues.contains('Badminton'),
                      onChanged: (bool? value) {
                        _onCheckboxSelected('Badminton', value!);
                      },
                    ),
                    Image.asset(
                      ImageAssetPath.badmintion,
                      height: 15.sp,
                      width: 15.sp,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      'Badminton',
                      style: AppStyles.sliderText.copyWith(
                          fontSize: 10.sp,
                          color: AppStyles.black.withOpacity(0.75)),
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: AppStyles.primary,
                      checkColor: AppStyles.white,
                      value: selectedValues.contains('Table Tennis'),
                      onChanged: (bool? value) {
                        _onCheckboxSelected('Table Tennis', value!);
                      },
                    ),
                    Image.asset(
                      ImageAssetPath.tableTenis,
                      height: 15.sp,
                      width: 15.sp,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      'Table Tennis',
                      style: AppStyles.sliderText.copyWith(
                          fontSize: 10.sp,
                          color: AppStyles.black.withOpacity(0.75)),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Column(
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: _selectImage,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 25,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: AppStyles.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                'Choose file',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppStyles.black.withOpacity(0.7)),
                              )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        _selectedImage != null
                            ? Expanded(
                                child:
                                    Text(_selectedImage!.path.split('/').last))
                            : Text(
                                'Select image',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppStyles.black.withOpacity(0.7)),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.sp),
                  const InputTextField(hintText: 'Venue Description'),
                  SizedBox(height: 20.sp),
                  const InputTextField(hintText: 'Google Address'),
                  SizedBox(height: 20.sp),
                  const InputTextField(hintText: 'Full address'),
                  SizedBox(height: 20.sp),
                  const InputTextField(hintText: 'Mobile Number'),
                  SizedBox(height: 40.sp),
                  AppButton(
                      onClicked: () {
                        Get.offAll(() => const MainPage());
                      },
                      background: AppStyles.primary,
                      text: 'ADD'),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  File? _selectedImage;

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
                        _selectedImage = File(pickedImage.path);
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
                        _selectedImage = File(pickedImage.path);
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
}
