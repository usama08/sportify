import 'package:sportify/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/activity/add_activity_text_widget.dart';
import 'package:sportify/screen/activity_button.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/app_button.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class AddActivityScreen extends StatefulWidget {
  const AddActivityScreen({Key? key}) : super(key: key);

  @override
  State<AddActivityScreen> createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.screenBackgroundColor,
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppStyles.white,
        automaticallyImplyLeading: true,
        title: Text(
          'ADD ACTIVITIES',
          style: AppStyles.homeAppBarTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            //Get.to(MainPage());
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: const Color(0xffECFEFF),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 15, bottom: 23),
                  child: Column(
                    children: [
                      const ActivityAddImageAndText(
                        text: 'Activity Title',
                        prefixIconData: Icons.menu,
                      ),
                      const ActivityAddImageAndText(
                        //    image: ImageAssetPath.venueJoinclock,
                        text: 'Date & Time',
                        prefixIconData: Icons.watch_later_outlined,
                      ),
                      const ActivityAddImageAndText(
                        // image: ImageAssetPath.venueJoinlocation,
                        text: 'Venue',
                        prefixIconData: Icons.location_on_outlined,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageAssetPath.venueJoinUser,
                                height: 15.sp,
                                width: 15.sp,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Image.asset(
                                ImageAssetPath.venueJoinUser,
                                height: 15.sp,
                                width: 15.sp,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Min people',
                                style: AppStyles.activityJoinTabingText
                                    .copyWith(
                                        fontSize: 12.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.6)),
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Text(
                                'Guys RM',
                                style: AppStyles.activityJoinTabingText
                                    .copyWith(
                                        fontSize: 12.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.6)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 25.sp,
                                width: 32.sp,
                                child: TextFormField(
                                  cursorColor: AppStyles.black,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '',
                                      contentPadding: const EdgeInsets.only(
                                          left: 10, bottom: 11)),
                                ),
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              SizedBox(
                                height: 25.sp,
                                width: 32.sp,
                                child: TextFormField(
                                  cursorColor: AppStyles.black,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '',
                                      contentPadding: const EdgeInsets.only(
                                          left: 10, bottom: 11)),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageAssetPath.venueJoinUser,
                                height: 15.sp,
                                width: 15.sp,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Image.asset(
                                ImageAssetPath.venueJoinUserF,
                                height: 15.sp,
                                width: 15.sp,
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Max people',
                                style: AppStyles.activityJoinTabingText
                                    .copyWith(
                                        fontSize: 12.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.6)),
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Text(
                                'Ladies RM',
                                style: AppStyles.activityJoinTabingText
                                    .copyWith(
                                        fontSize: 12.sp,
                                        color:
                                            AppStyles.black.withOpacity(0.6)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 25.sp,
                                width: 32.sp,
                                child: TextFormField(
                                  cursorColor: AppStyles.black,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '',
                                      contentPadding: const EdgeInsets.only(
                                          left: 10, bottom: 11)),
                                ),
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              SizedBox(
                                height: 25.sp,
                                width: 32.sp,
                                child: TextFormField(
                                  cursorColor: AppStyles.black,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color: AppStyles.grey,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: '',
                                      contentPadding: const EdgeInsets.only(
                                          left: 10, bottom: 11)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Court booked',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                          const Spacer(),
                          Switch.adaptive(
                            activeColor: AppStyles.primary,
                            value: _switchValue,
                            onChanged: (newValue) {
                              setState(() {
                                _switchValue = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pay before join',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                          const Spacer(),
                          Switch.adaptive(
                            activeColor: AppStyles.primary,
                            value: _switchValue1,
                            onChanged: (newValue) {
                              setState(() {
                                _switchValue1 = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Restrict by skill level',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                          const Spacer(),
                          Switch.adaptive(
                            activeColor: AppStyles.primary,
                            value: _switchValue2,
                            onChanged: (newValue) {
                              setState(() {
                                _switchValue2 = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActivityButton(
                              text: 'Beginner',
                              isSelected: _isBeginnerSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isBeginnerSelected = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Intermediate',
                              isSelected: _isIntermediateSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isIntermediateSelected = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Advanced',
                              isSelected: _isAdvancedSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isAdvancedSelected = selected;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActivityButton(
                              text: 'Beginner +',
                              isSelected: _isIntermediateSelectedAdvance,
                              onClicked: (selected) {
                                setState(() {
                                  _isIntermediateSelectedAdvance = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Intermediate +',
                              isSelected: _isBeginnerSelectedAdvance,
                              onClicked: (selected) {
                                setState(() {
                                  _isBeginnerSelectedAdvance = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Advanced +',
                              isSelected: _isAdvancedSelectedAdvance,
                              onClicked: (selected) {
                                setState(() {
                                  _isAdvancedSelectedAdvance = selected;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImageAssetPath.venueJoindualUser,
                            height: 13.sp,
                            width: 13.sp,
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 10.sp),
                          Text(
                            'Game Type',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActivityButton(
                              text: 'Single',
                              isSelected: _isSingleGameSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isSingleGameSelected = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Double',
                              isSelected: _isDoubleGameSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isDoubleGameSelected = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Social',
                              isSelected: _isSocialGameSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isSocialGameSelected = selected;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Row(
                        children: [
                          Image.asset(
                            ImageAssetPath.activityCircle,
                            height: 13.sp,
                            width: 13.sp,
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Activity Type',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActivityButton(
                              text: 'Social',
                              isSelected: _isActivityTypeSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isActivityTypeSelected = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Training',
                              isSelected: _isTrainingTypeSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isTrainingTypeSelected = selected;
                                });
                              },
                            ),
                            ActivityButton(
                              text: 'Competition',
                              isSelected: _isCompetitionTypeSelected,
                              onClicked: (selected) {
                                setState(() {
                                  _isCompetitionTypeSelected = selected;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.sp),
              Image.asset(
                ImageAssetPath.staticMap,
                height: 120.sp,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
              SizedBox(height: 8.sp),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 10, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Optional Details',
                        style: AppStyles.activityJoinTabingText.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: AppStyles.black.withOpacity(0.75)),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      TextField(
                        cursorColor: AppStyles.grey,
                        controller: _textEditingController,
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(
                              100), // Set your desired maximum character limit
                        ],
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          hintStyle: TextStyle(
                              color: AppStyles.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp),
                          filled: true,
                          fillColor: AppStyles.grey.withOpacity(0.20),
                          hintText: 'Description',
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Approve by host',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                          const Spacer(),
                          Switch.adaptive(
                            activeColor: AppStyles.primary,
                            value: _switchValue3,
                            onChanged: (newValue) {
                              setState(() {
                                _switchValue3 = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Only you can invite other players',
                            style: AppStyles.activityJoinTabingText.copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color: AppStyles.black.withOpacity(0.6)),
                          ),
                          const Spacer(),
                          Switch.adaptive(
                            activeColor: AppStyles.primary,
                            value: _switchValue4,
                            onChanged: (newValue) {
                              setState(() {
                                _switchValue4 = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: AppButton(
                            onClicked: () {
                              Get.offAll(() => const MainPage());
                            },
                            background: AppStyles.primary,
                            text: 'CREATE ACTIVITY NOW'),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  final TextEditingController _textEditingController = TextEditingController();
  bool _isIntermediateSelected = false;
  bool _isBeginnerSelected = true;
  bool _isAdvancedSelected = false;
  bool _isIntermediateSelectedAdvance = true;
  bool _isBeginnerSelectedAdvance = false;
  bool _isAdvancedSelectedAdvance = false;
  bool _switchValue = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;
  bool isSwitched = false;
  bool _isSingleGameSelected = true;
  bool _isDoubleGameSelected = false;
  bool _isSocialGameSelected = false;
  bool _isActivityTypeSelected = true;
  bool _isTrainingTypeSelected = false;
  bool _isCompetitionTypeSelected = false;
}
