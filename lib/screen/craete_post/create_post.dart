import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:share_plus/share_plus.dart';

class CratePost extends StatefulWidget {
  const CratePost({Key? key}) : super(key: key);

  @override
  State<CratePost> createState() => _CratePostState();
}

class _CratePostState extends State<CratePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.authScaffoldColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Create post',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              final box = context.findRenderObject() as RenderBox?;
              await Share.share('Steven smith',
                  sharePositionOrigin:
                      box!.localToGlobal(Offset.zero) & box.size);
            },
            child: Text(
              'Share',
              style: AppStyles.appBarTitleTextStyle
                  .copyWith(color: AppStyles.primary, fontSize: 12.sp),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          ImageAssetPath.userImage,
                          fit: BoxFit.fill,
                          width: 40.sp,
                          height: 40.sp,
                          filterQuality: FilterQuality.high,
                        ),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Steven smith',
                              style: AppStyles.whiteTextStyle.copyWith(
                                fontSize: 12.sp,
                                color: AppStyles.black.withOpacity(0.75),
                              ),
                            ),
                            Text(
                              'Only followers can see your post.',
                              style: AppStyles.whiteTextStyle.copyWith(
                                  color: AppStyles.black.withOpacity(0.50),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'What’s going on Steven smith ? ',
                      style: AppStyles.whiteTextStyle.copyWith(
                          color: AppStyles.black.withOpacity(0.50),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Image.asset(
                    ImageAssetPath.gallary1,
                    height: 150.sp,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: AppStyles.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  InkWell(
                    onTap: _selectImage,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageAssetPath.cameraBlue,
                          height: 18.sp,
                          width: 20.sp,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add Photo',
                          style: AppStyles.whiteTextStyle.copyWith(
                              color: AppStyles.primary, fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('Gallery'),
                  onTap: () async {
                    Navigator.pop(context);
                    // ignore: deprecated_member_use
                    final pickedImage = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (pickedImage != null) {
                      setState(() {});
                    }
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                GestureDetector(
                  child: const Text('Camera'),
                  onTap: () async {
                    Navigator.pop(context);
                    // ignore: deprecated_member_use
                    final pickedImage = await picker.pickImage(
                      source: ImageSource.camera,
                    );
                    if (pickedImage != null) {
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
