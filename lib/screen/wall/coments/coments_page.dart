import 'package:flutter/material.dart';
import 'package:sportify/screen/wall/coments/coments_list.dart';
import '../../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class WallCommentPage extends StatefulWidget {
  const WallCommentPage({Key? key}) : super(key: key);

  @override
  State<WallCommentPage> createState() => _WallCommentPageState();
}

class _WallCommentPageState extends State<WallCommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        title: Text(
          'Comments',
          style: AppStyles.homeAppBarTextStyle.copyWith(
            fontSize: 15.sp,
            color: AppStyles.black.withOpacity(0.75),
            fontWeight: FontWeight.normal,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 18.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [CommentsList()],
          ),
        ),
      ),
    );
  }
}
