import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';

Future<bool> showExitPopup(context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Do you want to exit?"),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        exit(0);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppStyles.primary),
                      child: const Text(
                        "Yes",
                        style: TextStyle(color: AppStyles.white),
                      ),
                    )),
                    const SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: const Text(
                        "No",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                  ],
                )
              ],
            ),
          ),
        );
      });
}
