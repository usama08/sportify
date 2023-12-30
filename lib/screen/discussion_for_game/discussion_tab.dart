import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/activity_join_tabing_discussion.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// ignore: depend_on_referenced_packages

class DisscusionTab extends StatefulWidget {
  const DisscusionTab({super.key});

  @override
  DisscusionTabState createState() => DisscusionTabState();
}

class DisscusionTabState extends State<DisscusionTab> {
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
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ActivityJoinTabingTextDiscussion(
                      text: 'Kyle’s Causal Badminton session',
                      time: '12 min ago',
                    ),
                    ActivityJoinTabingTextDiscussion(
                      text:
                          'Details  Discussion(players can Discuss within the game)',
                      time: '45 min ago',
                    ),
                    ActivityJoinTabingTextDiscussion(
                      text: 'Kyle’s Updated description ',
                      time: '12 hrs ago',
                    ),
                    ActivityJoinTabingTextDiscussion(
                      text: 'Joined badminton game is on kyleMade JW a co-host',
                      time: '20 hrs ago',
                    ),
                    ActivityJoinTabingTextDiscussion(
                      text: 'Kyle updated description ',
                      time: '32 hrs ago',
                    ),
                  ],
                ),
              ),
            ),
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
                        Icons
                            .send, // Replace with desired icon, e.g., Icons.ac_unit
                        color: Colors.grey,
                        size: 15.sp,
                      )
                    : Icon(
                        Icons
                            .thumb_up_off_alt_outlined, // Replace with desired icon, e.g., Icons.ac_unit
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
                      textEditingController.text +=
                          emoji.emoji; // Concatenate emoji to the text
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
