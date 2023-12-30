import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/venue/venue_detail_screen.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:share_plus/share_plus.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class PlayBoat extends StatefulWidget {
  const PlayBoat({Key? key}) : super(key: key);

  @override
  State<PlayBoat> createState() => _PlayBoatState();
}

class _PlayBoatState extends State<PlayBoat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageAssetPath.userImage,
                      fit: BoxFit.fill,
                      width: 40.sp,
                      height: 40.sp,
                      filterQuality: FilterQuality.high,
                    ),
                    SizedBox(width: 8.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Playbot',
                          style: AppStyles.whiteTextStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: AppStyles.black.withOpacity(0.75)),
                        ),
                        Text(
                          'about a month ago',
                          style: AppStyles.whiteTextStyle.copyWith(
                              fontSize: 11.sp,
                              color: AppStyles.black.withOpacity(0.50)),
                        ),
                        SizedBox(height: 5.sp),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(height: 10.sp),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        height: 25.sp,
                                        width: 100.sp,
                                        decoration: BoxDecoration(
                                            color: AppStyles.primary,
                                            borderRadius:
                                                BorderRadius.circular(4.sp)),
                                        child: Center(
                                          child: Text(
                                            'Copy',
                                            style: AppStyles.sliderText
                                                .copyWith(
                                                    color: Colors.white,
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        final box = context.findRenderObject()
                                            as RenderBox?;
                                        await Share.share('play bot',
                                            sharePositionOrigin: box!
                                                    .localToGlobal(
                                                        Offset.zero) &
                                                box.size);

                                        // ignore: use_build_context_synchronously
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        height: 25.sp,
                                        width: 100.sp,
                                        decoration: BoxDecoration(
                                            color: AppStyles.primary,
                                            borderRadius:
                                                BorderRadius.circular(4.sp)),
                                        child: Center(
                                          child: Text(
                                            'Share',
                                            style: AppStyles.sliderText
                                                .copyWith(
                                                    color: Colors.white,
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        height: 25.sp,
                                        width: 100.sp,
                                        decoration: BoxDecoration(
                                            color: AppStyles.primary,
                                            borderRadius:
                                                BorderRadius.circular(4.sp)),
                                        child: Center(
                                          child: Text(
                                            'Delete',
                                            style: AppStyles.sliderText
                                                .copyWith(
                                                    color: Colors.white,
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: AppStyles.black,
                        size: 18.sp,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'New update for user',
                  style: AppStyles.whiteTextStyle.copyWith(
                      fontSize: 11.sp,
                      color: AppStyles.black.withOpacity(0.50),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                  style: AppStyles.whiteTextStyle.copyWith(
                      fontSize: 10.sp,
                      color: AppStyles.black.withOpacity(0.50)),
                ),
                SizedBox(height: 5.sp),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                  style: AppStyles.whiteTextStyle.copyWith(
                      fontSize: 10.sp,
                      color: AppStyles.black.withOpacity(0.50)),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                ImageAssetPath.venueDetailImage2,
                                fit: BoxFit.fill,
                                width: 70.sp,
                                height: 70.sp,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                            SizedBox(width: 8.sp),
                            const SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Thomson Community Center',
                                    style: AppStyles.bigTextStyle.copyWith(
                                        fontSize: 11.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.75)),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '3.6',
                                        style: AppStyles.bigTextStyle.copyWith(
                                            fontSize: 11.sp,
                                            color: AppStyles.black
                                                .withOpacity(0.75)),
                                      ),
                                      SizedBox(width: 8.sp),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17.sp,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17.sp,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17.sp,
                                      ),
                                      Icon(
                                        Icons.star_border_purple500_outlined,
                                        color: Colors.orange,
                                        size: 17.sp,
                                      ),
                                      Icon(
                                        Icons.star_border_purple500_outlined,
                                        color: Colors.orange,
                                        size: 17.sp,
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isFavorite =
                                                !isFavorite; // Toggle the favorite state on each tap
                                          });
                                        },
                                        child: Icon(
                                          isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: isFavorite
                                              ? Colors.red
                                              : Colors.black,
                                          size: 17.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.sp),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 18.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.75),
                                      ),
                                      SizedBox(
                                        width: 5.sp,
                                      ),
                                      Expanded(
                                          child: Text(
                                        'Upper Thompson Road, Singapore',
                                        style: AppStyles.bigTextStyle.copyWith(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal),
                                      ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        AppButton(
                            onClicked: () {
                              Get.to(() => const VenueDetailsScreen());
                            },
                            background: AppStyles.primary,
                            text: 'BOOK INSTANTLY'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  bool isFavorite = false;
}
