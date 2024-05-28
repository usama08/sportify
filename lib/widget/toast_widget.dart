import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sportify/constants/app_color.dart';

class ToastWidget {
  static void show(String message, BuildContext context,
      {ToastGravity gravity = ToastGravity.BOTTOM,
      Color backgroundColor = AppColors.primaryColor}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
