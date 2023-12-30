import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:share_plus/share_plus.dart';

class HomeSliderDetailScreen extends StatefulWidget {
  const HomeSliderDetailScreen({Key? key}) : super(key: key);

  @override
  State<HomeSliderDetailScreen> createState() => _HomeSliderDetailScreenState();
}

class _HomeSliderDetailScreenState extends State<HomeSliderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppStyles.white,
          automaticallyImplyLeading: true,
          title: Text(
            'Unlock your sport Premium',
            style: AppStyles.appBarTitleTextStyle
                .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () async {
                  final box = context.findRenderObject() as RenderBox?;
                  await Share.share(
                      'Lorem Ipsum is simply dummy text of the....',
                      sharePositionOrigin:
                          box!.localToGlobal(Offset.zero) & box.size);
                },
                child: Icon(
                  Icons.share,
                  size: 18.sp,
                  color: AppStyles.black,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 5.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum is simply dummy text of the....',
                  style: AppStyles.sliderText.copyWith(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: AppStyles.sliderText.copyWith(
                      fontSize: 18,
                      color: AppStyles.grey,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  ImageAssetPath.sliderDetailImage,
                  fit: BoxFit.fill,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Description',
                  style: AppStyles.sliderText.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: AppStyles.sliderText.copyWith(
                      fontSize: 18,
                      color: AppStyles.grey,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: AppStyles.sliderText.copyWith(
                      fontSize: 18,
                      color: AppStyles.grey,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
