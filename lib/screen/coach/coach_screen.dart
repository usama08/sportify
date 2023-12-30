import 'package:flutter/material.dart';
import 'package:sportify/screen/coach/coach_tabing.dart';
import 'package:sportify/utils/app_styles.dart';

class CoachScreen extends StatefulWidget {
  const CoachScreen({Key? key}) : super(key: key);

  @override
  State<CoachScreen> createState() => _CoachScreenState();
}

class _CoachScreenState extends State<CoachScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Coach',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            //Get.to(MainPage());
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: CoachTab(),
      ),
    ));
  }
}
