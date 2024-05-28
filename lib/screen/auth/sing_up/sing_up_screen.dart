import 'package:flutter/material.dart';
import 'package:sportify/constants/app_color.dart';
import 'package:sportify/constants/custom_dropdown.dart';
import 'package:sportify/screen/auth/controller/auth_controller.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:sportify/screen/select_your_sports/sport_select_screen.dart';
import 'package:sportify/widget/heading.dart';
import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
import '../../../widget/app_button.dart';
import '../../../widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  var authcntroller = Get.put(AuthController());
  @override
  void initState() {
    super.initState();
    fetchAllStates(context);
    authcntroller.getLocation(context);
  }

  void fetchAllStates(BuildContext context) async {
    await authcntroller.fetchUniversityList();
    await authcntroller.getAllCategories(context);
  }

  @override
  Widget build(BuildContext context) {
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
                  right: 15.sp,
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
                    ],
                  ),
                ),
                Positioned(
                  top: 100.sp,
                  left: 100.sp,
                  child: Text('Welcome!',
                      style: AppStyles.sliderText.copyWith(
                        fontSize: 16.sp,
                      )),
                ),
              ],
            ),

            heading(context, 'Name', false),
            SizedBox(height: 5.sp),
            AppTextField(
              textEditingController: authcntroller.username,
              hintText: 'Enter your full name',
            ),
            SizedBox(
              height: 10.sp,
            ),
            heading(context, 'University/Sports Club', true),
            SizedBox(height: 5.sp),
            CustomDropdown(
              height: 40.sp,
              width: MediaQuery.of(context).size.width,
              onchangedF: (String? newValue) {
                setState(() {
                  authcntroller.universityname = newValue!;
                  authcntroller.geUniversityID();
                });
              },
              selectedValue: authcntroller.universityname,
              // "Select Policy Type.........."
              values: [
                'Select University/Sports Club',
                // ignore: invalid_use_of_protected_member
                ...authcntroller.universitylist.value
                    .map((university) => university.universityName)
                    .toList()
              ],
              labels: [
                'Select University/Sports Club',
                // ignore: invalid_use_of_protected_member
                ...authcntroller.universitylist.value
                    .map((university) => university.universityName)
                    .toList()
              ],
            ),
            // Center(
            //     child: AppTextField(
            //   textEditingController: authcntroller.institutename,
            //   hintText: 'Enter Institute name',
            // )),
            SizedBox(
              height: 10.sp,
            ),
            heading(context, 'ID', true),
            SizedBox(height: 5.sp),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.studentid,
              hintText: 'Enter your Student ID',
            )),
            SizedBox(
              height: 10.sp,
            ),
            heading(context, 'Email', false),
            SizedBox(height: 5.sp),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.email,
              hintText: 'Enter your email',
            )),
            SizedBox(
              height: 10.sp,
            ),
            heading(context, 'Phone', false),
            SizedBox(height: 5.sp),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.phoneNumber,
              hintText: 'Enter Phone No',
            )),
            SizedBox(
              height: 10.sp,
            ),
            heading(context, 'Password', false),
            SizedBox(height: 5.sp),
            Center(
                child: AppTextField(
              textEditingController: authcntroller.password,
              hintText: 'Enter password',
            )),
            SizedBox(
              height: 20.sp,
            ),
            Obx(() {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: authcntroller.isLoading.value != false
                    ? const Center(
                        child:
                            CircularProgressIndicator(color: AppColors.primary),
                      )
                    : AppButton(
                        background: AppStyles.primary,
                        text: 'NEXT',
                        onClicked: () {
                          Get.to(const SportSelectScreen());
                        }),
              );
            }),
            SizedBox(
              height: 15.sp,
            ),
            Center(
              child: Text(
                'OR  ',
                style: AppStyles.smallTextStyle
                    .copyWith(color: AppStyles.black, fontSize: 15.sp),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Sign in',
                  style: AppStyles.smallTextStyle
                      .copyWith(color: AppStyles.primary, fontSize: 13.sp),
                ),
              ),
            ),
            SizedBox(height: 10.sp),
          ],
        ),
      ),
    );
  }
}
