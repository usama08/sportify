import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Contact us',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 13.sp, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Contact Us',
              style: AppStyles.homeAppBarTextStyle
                  .copyWith(fontSize: 13.sp, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing",
              style: AppStyles.whiteOpacityTextStyle.copyWith(
                  fontSize: 11.sp, color: AppStyles.black.withOpacity(0.50)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Your Name',
              style: AppStyles.whiteTextStyle
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const AppTextField(hintText: 'Your Full Name'),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Mobile',
              style: AppStyles.whiteTextStyle
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const AppTextField(hintText: 'Your Mobile Number'),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Detail',
              style: AppStyles.whiteTextStyle
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              cursorColor: AppStyles.white,
              controller: _textEditingController,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              inputFormatters: [
                LengthLimitingTextInputFormatter(300),
              ],
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 15, right: 15),
                hintStyle: const TextStyle(
                    color: AppStyles.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                filled: true,
                fillColor: const Color(0xffF2F2F2),
                hintText: 'Please write your query here ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffF2F2F2),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffF2F2F2),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              textAlignVertical: TextAlignVertical.top,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 28.sp,
                width: 90.sp,
                decoration: BoxDecoration(
                    color: AppStyles.primary,
                    borderRadius: BorderRadius.circular(5.sp)),
                child: Center(
                    child: Text(
                  'Submit',
                  style: AppStyles.sliderText.copyWith(
                      color: Colors.white,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final TextEditingController _textEditingController = TextEditingController();
}
