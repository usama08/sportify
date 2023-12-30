import 'package:sportify/widget/input_text_fild.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/activity_button.dart';
import 'package:sportify/screen/filtter_sccreen/game_select.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:sportify/widget/crate_activity_btn.dart';

// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class FiltterScreen extends StatefulWidget {
  const FiltterScreen({Key? key}) : super(key: key);

  @override
  State<FiltterScreen> createState() => _FiltterScreenState();
}

class _FiltterScreenState extends State<FiltterScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CreateActivityButton(
            onClicked: () {
              _openBottomSheet(context);
            },
            gameName: 'Distance',
            gameImage: ImageAssetPath.icDropDdownDown,
          ),
          SizedBox(
            width: 10.sp,
          ),
          SizedBox(
            height: 50.sp,
            width: 90.sp,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
              child: InkWell(
                onTap: () {
                  _openBottomSheet2(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Aligns items vertically at the center
                    children: [
                      // Adds a space between the game image and name
                      Padding(
                        padding: EdgeInsets.only(left: 10.sp),
                        child: Text(
                          'Badminton',
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        ImageAssetPath.icDropDdownDown1,
                        height: 10.sp,
                        width: 10.sp,
                        fit: BoxFit.fill,
                      ),
                      /*Image.asset(
                    gameImage,
                    filterQuality: FilterQuality.high,
                  ),*/
                      SizedBox(width: 10.sp),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 70,
            width: 100,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
              child: InkWell(
                onTap: () {
                  _openBottomSheet3(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Aligns items vertically at the center
                    children: [
                      // Adds a space between the game image and name
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Filter',
                          style: AppStyles.sliderText.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0), // Adds left padding to the game image
                        child: SvgPicture.asset(
                          ImageAssetPath.icFiltterSvg,
                          height: 10.sp,
                          width: 10.sp,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 10.sp),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isIntermediateSelectedAdvance = true;
  bool _isBeginnerSelectedAdvance = true;
  bool _isAdvancedSelectedAdvance = true;
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 170.sp,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Sort by',
                  style:
                      AppStyles.appBarTitleTextStyle.copyWith(fontSize: 13.sp),
                ),
              ),
              const SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndexButton = 0;
                    Navigator.of(context).pop();
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                  child: Row(
                    children: [
                      Text(
                        'Recommended',
                        style: AppStyles.smallTextStyle,
                      ),
                      const Spacer(),
                      selectedIndexButton == 0
                          ? Icon(
                              Icons.check,
                              color: AppStyles.primary,
                              size: 15.sp,
                            )
                          : const Text('')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndexButton = 1;
                    Navigator.of(context).pop();
                    //Navigator.of(context).pop();
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                  child: Row(
                    children: [
                      Text(
                        'Distance',
                        style: AppStyles.smallTextStyle,
                      ),
                      const Spacer(),
                      selectedIndexButton == 1
                          ? Icon(
                              Icons.check,
                              color: AppStyles.primary,
                              size: 15.sp,
                            )
                          : const Text('')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndexButton = 2;
                    Navigator.of(context).pop();
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                  child: Row(
                    children: [
                      Text(
                        'Highest rating',
                        style: AppStyles.smallTextStyle,
                      ),
                      const Spacer(),
                      selectedIndexButton == 2
                          ? Icon(
                              Icons.check,
                              color: AppStyles.primary,
                              size: 15.sp,
                            )
                          : const Text('')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndexButton = 3;
                    Navigator.of(context).pop();
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                  child: Row(
                    children: [
                      Text(
                        'A to Z',
                        style: AppStyles.smallTextStyle,
                      ),
                      const Spacer(),
                      selectedIndexButton == 3
                          ? Icon(
                              Icons.check,
                              color: AppStyles.primary,
                              size: 15.sp,
                            )
                          : const Text('')
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _openBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select sport',
                            style: AppStyles.appBarTitleTextStyle.copyWith(
                                fontSize: 13.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '0 sports selected',
                            style: AppStyles.appBarTitleTextStyle.copyWith(
                                fontSize: 10.sp,
                                color: Colors.black.withOpacity(0.76)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Done',
                            style: AppStyles.smallTextStyle.copyWith(
                                color: AppStyles.primary,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(height: 5.0.sp),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndexButton = 0;
                      Navigator.of(context).pop();
                    });
                  },
                  child: SizedBox(
                    height: 40.sp,
                    child: const InputTextField(
                      hintText: 'Search',
                      prefixIconData: Icons.search,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'Your sport',
                  style: AppStyles.appBarTitleTextStyle
                      .copyWith(fontSize: 13.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                SelectGame(
                  onClicked: (selected) {
                    setState(() {
                      _isBadmintionSelected2 = selected;
                    });
                  },
                  isSelected: _isBadmintionSelected2,
                  gameName: 'Badminton',
                  gameImage: ImageAssetPath.badmintion,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'Popular sport',
                  style: AppStyles.appBarTitleTextStyle
                      .copyWith(fontSize: 13.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.sp,
                ),
                SelectGame(
                  onClicked: (selected) {
                    setState(() {
                      _isBadmintionSelected = selected;
                    });
                  },
                  isSelected: _isBadmintionSelected,
                  gameName: 'Badminton',
                  gameImage: ImageAssetPath.badmintion,
                ),
                SizedBox(
                  height: 8.sp,
                ),
                SelectGame(
                  onClicked: (selected) {
                    setState(() {
                      _isFootBalSelected = selected;
                    });
                  },
                  isSelected: _isFootBalSelected,
                  gameName: 'Football',
                  gameImage: ImageAssetPath.fotball,
                ),
                SizedBox(
                  height: 8.sp,
                ),
                SelectGame(
                  onClicked: (selected) {
                    setState(() {
                      _isTableTenisSelected = selected;
                    });
                  },
                  isSelected: _isTableTenisSelected,
                  gameName: 'Table Tennis',
                  gameImage: ImageAssetPath.tableTenis,
                ),
                SizedBox(
                  height: 8.sp,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _openBottomSheet3(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 130.sp,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Filter people',
                  style:
                      AppStyles.appBarTitleTextStyle.copyWith(fontSize: 13.sp),
                ),
              ),
              SizedBox(height: 30.0.sp),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ActivityButton(
                      text: 'Morning',
                      isSelected: _isIntermediateSelectedAdvance,
                      onClicked: (selected) {
                        setState(() {
                          _isIntermediateSelectedAdvance = selected;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    ActivityButton(
                      text: 'Afternoon',
                      isSelected: _isBeginnerSelectedAdvance,
                      onClicked: (selected) {
                        setState(() {
                          _isBeginnerSelectedAdvance = selected;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    ActivityButton(
                      text: 'Evening',
                      isSelected: _isAdvancedSelectedAdvance,
                      onClicked: (selected) {
                        setState(() {
                          _isAdvancedSelectedAdvance = selected;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  int selectedIndexButton = 0;
  bool _isFootBalSelected = false;
  bool _isBadmintionSelected = false;
  bool _isTableTenisSelected = false;
  bool _isBadmintionSelected2 = false;
}
