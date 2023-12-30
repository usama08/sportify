import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0.sp,
        elevation: 0,
        backgroundColor: const Color(0xffF6F6F6),
        title: Text(
          'Search',
          style: AppStyles.homeAppBarTextStyle.copyWith(
              fontSize: 12.sp,
              color: AppStyles.black,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 18.sp,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const Column(
        children: [AppTextField(hintText: 'Search...')],
      ),
    );
  }
}
