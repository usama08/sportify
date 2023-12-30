import 'package:sportify/screen/auth/login_screen/loign_screen.dart';
import 'package:flutter/material.dart';
import 'package:sportify/screen/about_us/about_us.dart';
import 'package:sportify/screen/contact_us/contact_us.dart';
import 'package:sportify/screen/notification/notification.dart';
import 'package:sportify/screen/profile/profile_edit.dart';
import 'package:sportify/screen/profile/profile_setting/profile_setting_widget.dart';
import 'package:sportify/screen/tearm_and_condition/tearm_and_condition.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  final String firstName = 'John';
  final String lastName = 'Doe';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_outlined)),
        centerTitle: false,
        title: Text(
          'Setting',
          style: AppStyles.appBarTitleTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            ProfileSettingWidget(
              text: 'Profiles',
              onClicked: () {
                Get.to(() => const EditProfile(
                      fname: 'Mike',
                      language: 'English',
                      email: 'abc@gmail.com',
                      phoneNo: '993993993',
                      Country: 'Australia',
                    ));
              },
            ),
            ProfileSettingWidget(
              text: 'About Us',
              onClicked: () {
                Get.to(() => const AboutUs());
              },
            ),
            ProfileSettingWidget(
              text: 'Terms & Conditions',
              onClicked: () {
                Get.to(() => const TermsAndCondition());
              },
            ),
            ProfileSettingWidget(
              text: 'Contact Us',
              onClicked: () {
                Get.to(() => const ContactUs());
              },
            ),
            ProfileSettingWidget(
              text: 'Notification',
              onClicked: () {
                Get.to(() => const NotificationSetting());
              },
            ),
            ProfileSettingWidget(
              text: 'Logout',
              onClicked: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: SizedBox(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Do you want to logout?",
                                style: AppStyles.smallTextStyle,
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                    onPressed: () {
                                      Get.offAll(const LoginScreen());
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: AppStyles.primary),
                                    child: const Text(
                                      "Yes",
                                      style: TextStyle(color: AppStyles.white),
                                    ),
                                  )),
                                  const SizedBox(width: 15),
                                  Expanded(
                                      child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    child: const Text(
                                      "No",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
