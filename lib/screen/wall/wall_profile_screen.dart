import 'package:flutter/material.dart';
import 'package:sportify/screen/wall/wall_comment.dart';
import 'package:sportify/utils/app_styles.dart';
import '../main_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class WallHomeScreen extends StatefulWidget {
  const WallHomeScreen({Key? key}) : super(key: key);

  @override
  State<WallHomeScreen> createState() => _WallHomeScreenState();
}

class _WallHomeScreenState extends State<WallHomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE9E9E9),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => const MainPage());
                        },
                        child: const Icon(
                          Icons.arrow_back_outlined,
                          color: AppStyles.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'News',
                        style: AppStyles.bigTextStyle
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _searchController,
                          style: AppStyles.sliderText
                              .copyWith(color: AppStyles.grey),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.green,
                            ),
                            filled: true,
                            fillColor: const Color(0xffD9D9D9),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Search here',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  color: Color(0xffD9D9D9), width: 0.0),
                            ),
                            labelStyle: AppStyles.sliderText.copyWith(
                              fontSize: 17,
                              color: AppStyles.black,
                              fontWeight: FontWeight.w500,
                            ),
                            hintStyle: AppStyles.sliderText
                                .copyWith(color: AppStyles.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const NewsContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
