import 'package:flutter/material.dart';
import 'package:sportify/screen/followers_screen/followers_list.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class FollowersScreen extends StatefulWidget {
  const FollowersScreen({Key? key}) : super(key: key);

  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Followers',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 13.sp, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            //Get.to(MainPage());
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1.5,
              color: Color(0xffD9D9D9),
            ),
            FollowersList(),
            FollowersList(),
            FollowersList(),
          ],
        ),
      ),
    );
  }
}
