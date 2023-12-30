import 'package:flutter/material.dart';
import 'package:sportify/controller/radio_controller.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class ManageLocation extends StatefulWidget {
  const ManageLocation({Key? key}) : super(key: key);

  @override
  State<ManageLocation> createState() => _ManageLocationState();
}

class _ManageLocationState extends State<ManageLocation> {
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
                    offset:
                        const Offset(0, 1), // Offset in the bottom direction
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
                    max: 50.0, // Set your desired maximum value
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
              'Manage  locations',
              style: AppStyles.homeAppBarTextStyle.copyWith(
                  fontSize: 12.sp,
                  color: AppStyles.black,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Done',
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
          Padding(
            padding: EdgeInsets.only(
                left: 5.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
            child: Row(
              children: [
                Text(
                  'Simei MRT Station (EW3)',
                  style:
                      AppStyles.profileStyle.copyWith(color: AppStyles.black),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            color: AppStyles.black.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
