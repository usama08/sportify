import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// ignore: depend_on_referenced_packages

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  bool isEmojiVisible = false;
  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();

  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          isEmojiVisible = false;
        });
      }
    });
  }

  void toggleEmojiVisibility() {
    setState(() {
      isEmojiVisible = !isEmojiVisible;
    });
    focusNode.unfocus();
    focusNode.canRequestFocus = true;
  }

  @override
  void dispose() {
    focusNode.dispose();
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0.sp,
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                ImageAssetPath.homeNearbyActivityUser,
                height: 35.sp,
                width: 35.sp,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              width: 10.sp,
            ),
            Text(
              'Steven Smith',
              style: AppStyles.homeAppBarTextStyle.copyWith(
                  fontSize: 10.sp,
                  color: AppStyles.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
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
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 30.sp,
                    width: 80.sp,
                    decoration: BoxDecoration(
                        color: AppStyles.primary,
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Hii  ",
                          style: AppStyles.smallTextStyle.copyWith(
                            color: AppStyles.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                          ),
                          children: [
                            TextSpan(
                              text: "6:24 PM",
                              style: AppStyles.smallTextStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                color: AppStyles.white.withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    focusNode: focusNode,
                    controller: textEditingController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.camera_alt_outlined,
                        color: AppStyles.grey,
                        size: 18.sp,
                      ),
                      prefixIcon: isEmojiVisible == true
                          ? Icon(
                              Icons.keyboard,
                              size: 18.sp,
                              color: AppStyles.grey,
                            )
                          : IconButton(
                              onPressed: toggleEmojiVisibility,
                              icon: Icon(
                                Icons.emoji_emotions_outlined,
                                size: 18.sp,
                                color: AppStyles.grey,
                              )),
                      hintText: 'Type a message',
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.only(
                        left: 16.0,
                        bottom: 8.0,
                        top: 8.0,
                        right: 16.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.sp),
                        borderSide: const BorderSide(
                          color: AppStyles.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.sp),
                        borderSide: const BorderSide(
                          color: AppStyles.grey,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          color: AppStyles.grey,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                textEditingController.text.isNotEmpty
                    ? Icon(
                        Icons.send,
                        color: Colors.grey,
                        size: 15.sp,
                      )
                    : Icon(
                        Icons.thumb_up_off_alt_outlined,
                        color: Colors.grey,
                        size: 20.sp,
                      ),
              ],
            ),
            Offstage(
              offstage: !isEmojiVisible,
              child: SizedBox(
                height: 250,
                child: EmojiPicker(
                  onEmojiSelected: (category, emoji) {
                    setState(() {
                      textEditingController.text += emoji.emoji;
                    });
                  },
                  // Other EmojiPicker configurations...
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
