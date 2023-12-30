import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/controller/radio_controller.dart';
import 'package:sportify/screen/location_set/manage_location.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  final MyRadioController controller = Get.put(MyRadioController());
  double _position = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      bottomNavigationBar: SizedBox(
        height: 130.sp,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.sp, right: 10.sp, top: 5.sp),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Distance to your location',
                          style: AppStyles.smallTextStyle,
                        ),
                        const Spacer(),
                        Text(
                          '${_position.toStringAsFixed(2)} km',
                          style: AppStyles.smallTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    inactiveColor: AppStyles.grey.withOpacity(0.8),
                    secondaryActiveColor: AppStyles.primary,
                    thumbColor: AppStyles.white,
                    activeColor: AppStyles.primary,
                    value: _position,
                    onChanged: (newValue) {
                      setState(() {
                        _position = newValue;
                      });
                    },
                    min: 0.0,
                    max: 50.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
              child: AppButton(
                  background: AppStyles.primary,
                  text: 'APPLY',
                  onClicked: () {
                    Navigator.of(context).pop();
                  }),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0.sp,
        elevation: 0,
        backgroundColor: const Color(0xffF6F6F6),
        title: Row(
          children: [
            Text(
              'Your location',
              style: AppStyles.homeAppBarTextStyle.copyWith(
                  fontSize: 12.sp,
                  color: AppStyles.black,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.to(() => const ManageLocation());
              },
              child: Text(
                'Manage',
                style: AppStyles.homeAppBarTextStyle.copyWith(
                    fontSize: 12.sp,
                    color: AppStyles.primary,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 15.sp,
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 18.sp,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 1.0,
            color: AppStyles.black.withOpacity(0.2),
          ),
          Obx(() => Row(
                children: [
                  SizedBox(
                    width: 5.sp,
                  ),
                  Radio(
                    activeColor: AppStyles.primary,
                    fillColor: MaterialStateProperty.all(AppStyles.primary),
                    value: 1,
                    groupValue: controller.selectedRadio.value,
                    onChanged: (value) =>
                        controller.changeSelectedRadio(value!),
                  ),
                  SizedBox(
                    width: 7.sp,
                  ),
                  Text(
                    'Current location',
                    style:
                        AppStyles.profileStyle.copyWith(color: AppStyles.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    ImageAssetPath.icCurrentLocation,
                    height: 18.sp,
                    width: 18.sp,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 15.sp,
                  ),
                ],
              )),
          Divider(
            thickness: 1.0,
            color: AppStyles.black.withOpacity(0.2),
          ),
          Obx(() => Row(
                children: [
                  SizedBox(
                    width: 5.sp,
                  ),
                  Radio(
                    activeColor: AppStyles.primary,
                    fillColor: MaterialStateProperty.all(AppStyles.primary),
                    value: 2,
                    groupValue: controller.selectedRadio.value,
                    onChanged: (value) =>
                        controller.changeSelectedRadio(value!),
                  ),
                  SizedBox(
                    width: 7.sp,
                  ),
                  Text(
                    'Simei MRT Station (EW3)',
                    style:
                        AppStyles.profileStyle.copyWith(color: AppStyles.black),
                  )
                ],
              )),
          Divider(
            thickness: 1.0,
            color: AppStyles.black.withOpacity(0.2),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 30.sp, right: 30.sp, top: 25.sp, bottom: 25.sp),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 60.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3.sp)),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          ImageAssetPath.icPlushBlue,
                          height: 12.sp,
                          width: 12.sp,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text(
                          'Add new location',
                          style: TextStyle(
                            color: AppStyles.primary,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
