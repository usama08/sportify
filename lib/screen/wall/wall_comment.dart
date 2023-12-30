import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/wall/coments/coments_page.dart';
import 'package:sportify/screen/wall/wall_image.dart';
// ignore: depend_on_referenced_packages
import 'package:share_plus/share_plus.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class NewsContainer extends StatefulWidget {
  const NewsContainer({Key? key}) : super(key: key);

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  bool isFavorite = false;
  bool isLike = false;
  int likeCount = 523;

  final TextEditingController _comentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.sp, right: 8.sp, top: 10.sp, bottom: 10.sp),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          ImageAssetPath.homeNearbyActivityUser,
                          height: 60.sp,
                          width: 60.sp,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      SizedBox(width: 8.sp),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              'Steven Smith',
                              style: AppStyles.smallTextStyle.copyWith(
                                  color: AppStyles.black, fontSize: 13.sp),
                            ),
                            Text(
                              'ID : 4578961',
                              style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 12.sp,
                                color: AppStyles.black.withOpacity(0.60),
                              ),
                            ),
                            Text(
                              '3 min ago, Sydney, Australia',
                              style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.black.withOpacity(0.51),
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.black,
                          size: 18.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          Icons.more_vert,
                          size: 18.sp,
                          color: AppStyles.black,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing',
                    style: AppStyles.smallTextStyle.copyWith(
                        fontSize: 12.sp,
                        color: AppStyles.black.withOpacity(0.50)),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing',
                    style: AppStyles.smallTextStyle.copyWith(
                        fontSize: 12.sp,
                        color: AppStyles.black.withOpacity(0.50)),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  const WallImageList(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 25.sp,
                        width: 167.sp,
                        child: TextFormField(
                          cursorHeight: 22,
                          cursorColor: const Color(0xff989898),
                          controller: _comentController,
                          style: AppStyles.sliderText
                              .copyWith(color: AppStyles.grey),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffE6E6E6),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Comments',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            labelStyle: AppStyles.sliderText.copyWith(
                              fontSize: 17,
                              color: const Color(0xff989898),
                              fontWeight: FontWeight.w500,
                            ),
                            hintStyle: AppStyles.sliderText
                                .copyWith(color: AppStyles.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.sp,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isLike = !isLike;
                            if (isLike) {
                              likeCount++;
                            } else {
                              likeCount--;
                            }
                          });
                        },
                        child: Icon(
                          isLike ? Icons.thumb_up : Icons.thumb_up_outlined,
                          color: isLike ? AppStyles.primary : AppStyles.grey,
                          size: 18.sp,
                        ),
                      ),
                      SizedBox(
                        width: 4.sp,
                      ),
                      Text(
                        '$likeCount',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 12.sp, color: const Color(0xff989898)),
                      ), // Display the like count
                      SizedBox(
                        width: 4.sp,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const WallCommentPage());
                        },
                        child: const FaIcon(
                          // ignore: deprecated_member_use
                          FontAwesomeIcons.commenting,
                          color: AppStyles.grey,
                        ),
                      ),
                      SizedBox(
                        width: 4.sp,
                      ),
                      Text(
                        '8',
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 12.sp, color: const Color(0xff989898)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 8, top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          ImageAssetPath.profileUserImage,
                          height: 70,
                          width: 70,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Steven Smith',
                            style:
                                AppStyles.smallTextStyle.copyWith(fontSize: 16),
                          ),
                          Text(
                            'ID : 4578961',
                            style: AppStyles.smallTextStyle
                                .copyWith(fontSize: 15, color: AppStyles.grey),
                          ),
                          Text(
                            '3 min ago, Sydney, Australia',
                            style: AppStyles.smallTextStyle
                                .copyWith(fontSize: 13, color: AppStyles.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.black,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.more_vert)
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing',
                    style: AppStyles.smallTextStyle
                        .copyWith(fontSize: 15, color: AppStyles.grey),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing',
                    style: AppStyles.smallTextStyle
                        .copyWith(fontSize: 15, color: AppStyles.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    ImageAssetPath.profileVideo,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 25.sp,
                        width: 165.sp,
                        child: TextFormField(
                          cursorHeight: 22,
                          cursorColor: const Color(0xff989898),
                          controller: _comentController,
                          style: AppStyles.sliderText
                              .copyWith(color: AppStyles.grey),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffE6E6E6),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Comments',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            labelStyle: AppStyles.sliderText.copyWith(
                              fontSize: 17,
                              color: const Color(0xff989898),
                              fontWeight: FontWeight.w500,
                            ),
                            hintStyle: AppStyles.sliderText
                                .copyWith(color: AppStyles.grey),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isLike = !isLike;
                            if (isLike) {
                              likeCount++;
                            } else {
                              likeCount--;
                            }
                          });
                        },
                        child: Icon(
                          isLike ? Icons.thumb_up : Icons.thumb_up_outlined,
                          color: isLike ? AppStyles.primary : AppStyles.grey,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$likeCount',
                        style: AppStyles.smallTextStyle
                            .copyWith(fontSize: 16, color: AppStyles.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const WallCommentPage());
                        },
                        child: const FaIcon(
                          // ignore: deprecated_member_use
                          FontAwesomeIcons.commenting,
                          color: AppStyles.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '8',
                        style: AppStyles.smallTextStyle
                            .copyWith(fontSize: 16, color: AppStyles.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
