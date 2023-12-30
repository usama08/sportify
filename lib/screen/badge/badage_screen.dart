import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';
import 'package:sportify/screen/badge/badgedialog.dart';
import '../../constants/asset_path.dart';
import '../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:share_plus/share_plus.dart';

class BadgeScreen extends StatefulWidget {
  const BadgeScreen({Key? key}) : super(key: key);

  @override
  State<BadgeScreen> createState() => _BadgeScreenState();
}

class _BadgeScreenState extends State<BadgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.white,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppStyles.white,
        automaticallyImplyLeading: true,
        title: Text(
          'Point',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () async {
                final box = context.findRenderObject() as RenderBox?;
                await Share.share('play bot point 35',
                    sharePositionOrigin:
                        box!.localToGlobal(Offset.zero) & box.size);
              },
              icon: Icon(
                Icons.share,
                size: 18.sp,
                color: AppStyles.black,
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            BarChartApplication(),
          ],
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final double height;
  final String label;
  final String subtitle;
  final String points;
  final String imageChart;

  const Bar(
      this.height, this.label, this.imageChart, this.subtitle, this.points,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 25.sp, // Reduced container height to 80
          width: 25.sp, // Reduced container width to 80
          child: Stack(
            children: [
              SvgPicture.asset(
                imageChart,
                height: 20.sp,
                width: 20.sp,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 0,
                right: 2.sp,
                left: 16.sp, // Changed left to right
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2.sp),
                  ),
                  child: Center(
                    child: Text(
                      points,
                      style: AppStyles.sliderText.copyWith(
                        color: AppStyles.white,
                        fontSize: 6.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 15.sp,
          height:
              height * 10.0, // Multiply height by a factor to scale the bars.
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppStyles.white,
                AppStyles.primary.withOpacity(0.5),
                AppStyles.primary,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        SizedBox(
          height: 3.sp,
        ),
        Text(label,
            style: AppStyles.appBarTitleTextStyle
                .copyWith(fontSize: 6.sp, fontWeight: FontWeight.bold)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subtitle,
              style: AppStyles.appBarTitleTextStyle.copyWith(
                  fontSize: 6.sp, color: AppStyles.black.withOpacity(0.50)),
            ),
            Icon(
              Icons.person_outline_outlined,
              color: AppStyles.grey,
              size: 8.sp,
            )
          ],
        ),
      ],
    );
  }
}

class BarChartApplication extends StatelessWidget {
  const BarChartApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Bar(5, "FRIENDLY", ImageAssetPath.icRankingGroup, 'by 2', '2'),
            Bar(7, "TACTICIAN", ImageAssetPath.icRankingGroup, 'by 3', '3'),
            Bar(9, "TEAM PLAYER", ImageAssetPath.icRankingGroup, 'by 2', '2'),
            Bar(11, "DROP", ImageAssetPath.icRankingGroup, 'by 1', '1'),
            Bar(13, "SMASH", ImageAssetPath.icRankingGroup, 'by 3', '3'),
          ],
        ),
        SizedBox(
          height: 20.sp,
        ),
        SizedBox(
          height: 30.sp,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width / 3,
                child: SizedBox(
                  height: 50.sp,
                  width: 170.sp,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          ImageAssetPath.homeNearbyActivityUser,
                          fit: BoxFit.fill,
                          width: 30.sp,
                          height: 30.sp,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 30,
                        child: ClipOval(
                          child: Image.asset(
                            ImageAssetPath.homeNearbyActivityK,
                            fit: BoxFit.fill,
                            width: 30.sp,
                            height: 30.sp,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 0,
                          left: 60,
                          child: ClipOval(
                            child: Image.asset(
                              ImageAssetPath.homeNearbyActivityE,
                              fit: BoxFit.fill,
                              width: 30.sp,
                              height: 30.sp,
                              filterQuality: FilterQuality.high,
                            ),
                          )),
                      Positioned(
                          top: 0,
                          left: 90,
                          child: ClipOval(
                            child: Image.asset(
                              ImageAssetPath.homeNearbyActivityS,
                              fit: BoxFit.fill,
                              width: 30.sp,
                              height: 30.sp,
                              filterQuality: FilterQuality.high,
                            ),
                          )),
                      Positioned(
                        top: 0,
                        left: 120,
                        child: ClipOval(
                          child: Image.asset(
                            ImageAssetPath.homeNearbyActivityR,
                            fit: BoxFit.fill,
                            width: 30.sp,
                            height: 30.sp,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize:
                  Size(MediaQuery.of(context).size.width * 0.4.sp, 35.sp),
              backgroundColor: AppStyles.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const CustomDialog());
            },
            child: Text(
              'Give feedback & Badges',
              style: AppStyles.sliderText.copyWith(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
