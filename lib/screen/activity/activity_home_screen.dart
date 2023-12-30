import 'package:sportify/screen/coach/coach_tabing.dart';
import 'package:sportify/widget/input_text_fild.dart';
import 'package:sportify/widget/venue_call_widget.dart';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_comptition_list.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_social_list.dart';
import 'package:sportify/screen/activity/activity_tabing/activity_traning_list.dart';
import 'package:sportify/screen/activity/activity_tabing/pepole_list.dart';
import 'package:sportify/screen/activity/all_game_show.dart';
import 'package:sportify/utils/app_styles.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import 'activity_tabing/group_tabing.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class ActivityHomeScreen extends StatefulWidget {
  final int initialTabIndex;
  const ActivityHomeScreen({Key? key, required this.initialTabIndex})
      : super(key: key);

  @override
  State<ActivityHomeScreen> createState() => _ActivityHomeScreenState();
}

class _ActivityHomeScreenState extends State<ActivityHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: widget.initialTabIndex,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Activities'),
    const Tab(text: 'Coach'),
    const Tab(text: 'Venues'),
    const Tab(text: 'Team'),
    const Tab(text: 'Peoples'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.authScaffoldColor,
      body: Padding(
        padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
        child: Column(
          children: [
            SizedBox(
              height: 10.sp,
            ),
            SizedBox(
              height: 50,
              child: TabBar(
                isScrollable: true,
                controller: _tabController,
                labelStyle: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                labelColor: AppStyles.primary,
                unselectedLabelColor: Colors.grey,
                indicatorColor: AppStyles.primary,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: myTabs.map((Tab tab) {
                  return Tab(
                    text: tab.text,
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 53.sp,
                              width: 50.sp,
                              decoration: BoxDecoration(
                                color: AppStyles.white,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment
                                    .center, // Aligns items vertically at the center
                                children: [
                                  Image.asset(
                                    ImageAssetPath.tableTenis,
                                    height: 30.sp,
                                    width: 30.sp,
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Table Tennis',
                                    style: AppStyles.smallTextStyle.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedIndexButton = 0;
                                  });
                                },
                                child: Text(
                                  'Social',
                                  style: AppStyles.smallTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndexButton == 0
                                          ? AppStyles.black
                                          : AppStyles.grey),
                                )),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedIndexButton = 1;
                                  });
                                },
                                child: Text(
                                  'Competition',
                                  style: AppStyles.smallTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndexButton == 1
                                          ? AppStyles.black
                                          : AppStyles.grey),
                                )),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedIndexButton = 2;
                                  });
                                },
                                child: Text(
                                  'Training',
                                  style: AppStyles.smallTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndexButton == 2
                                          ? AppStyles.black
                                          : AppStyles.grey),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 32.sp,
                                child: const InputTextField(
                                  hintText: 'Search Activities',
                                  prefixIconData: Icons.search,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.sp,
                            ),
                            SvgPicture.asset(
                              ImageAssetPath.icCirclePlush,
                              height: 25.sp,
                              width: 25.sp,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            SvgPicture.asset(
                              ImageAssetPath.icfiltter,
                              height: 22.sp,
                              width: 22.sp,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        if (selectedIndexButton == 0)
                          const ActivitySocialList(),
                        if (selectedIndexButton == 1)
                          const ActivityCompititionList(),
                        if (selectedIndexButton == 2)
                          const ActivityTrainingList()
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isFootBalSelected = selected;
                                });
                              },
                              isSelected: _isFootBalSelected,
                              gameName: 'Football',
                              gameImage: ImageAssetPath.fotball,
                            ),
                            AllGameShow(
                              gameName: 'Badminton',
                              gameImage: ImageAssetPath.badmintion,
                              onClicked: (selected) {
                                setState(() {
                                  _isBadmintionSelected = selected;
                                });
                              },
                              isSelected: _isBadmintionSelected,
                            ),
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isTableTenisSelected = selected;
                                });
                              },
                              isSelected: _isTableTenisSelected,
                              gameName: 'Table Tennis',
                              gameImage: ImageAssetPath.tableTenis,
                            ),
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isFootBalSelected2 = selected;
                                });
                              },
                              isSelected: _isFootBalSelected2,
                              gameName: 'Football',
                              gameImage: ImageAssetPath.fotball,
                            ),
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isBadmintionSelected2 = selected;
                                });
                              },
                              isSelected: _isBadmintionSelected2,
                              gameName: 'Badminton',
                              gameImage: ImageAssetPath.badmintion,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        const InputTextField(
                          hintText: 'Search a Coach',
                          prefixIconData: Icons.search,
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        const CoachTab(),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isFootBalSelected = selected;
                                });
                              },
                              isSelected: _isFootBalSelected,
                              gameName: 'Football',
                              gameImage: ImageAssetPath.fotball,
                            ),
                            AllGameShow(
                              gameName: 'Badminton',
                              gameImage: ImageAssetPath.badmintion,
                              onClicked: (selected) {
                                setState(() {
                                  _isBadmintionSelected = selected;
                                });
                              },
                              isSelected: _isBadmintionSelected,
                            ),
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isTableTenisSelected = selected;
                                });
                              },
                              isSelected: _isTableTenisSelected,
                              gameName: 'Table Tennis',
                              gameImage: ImageAssetPath.tableTenis,
                            ),
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isFootBalSelected2 = selected;
                                });
                              },
                              isSelected: _isFootBalSelected2,
                              gameName: 'Football',
                              gameImage: ImageAssetPath.fotball,
                            ),
                            AllGameShow(
                              onClicked: (selected) {
                                setState(() {
                                  _isBadmintionSelected2 = selected;
                                });
                              },
                              isSelected: _isBadmintionSelected2,
                              gameName: 'Badminton',
                              gameImage: ImageAssetPath.badmintion,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        const InputTextField(
                          hintText: 'Search a Venue',
                          prefixIconData: Icons.search,
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        const VenueCallListWidget(),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AllGameShow(
                            onClicked: (selected) {
                              setState(() {
                                _isFootBalSelected = selected;
                              });
                            },
                            isSelected: _isFootBalSelected,
                            gameName: 'Football',
                            gameImage: ImageAssetPath.fotball,
                          ),
                          AllGameShow(
                            gameName: 'Badminton',
                            gameImage: ImageAssetPath.badmintion,
                            onClicked: (selected) {
                              setState(() {
                                _isBadmintionSelected = selected;
                              });
                            },
                            isSelected: _isBadmintionSelected,
                          ),
                          AllGameShow(
                            onClicked: (selected) {
                              setState(() {
                                _isTableTenisSelected = selected;
                              });
                            },
                            isSelected: _isTableTenisSelected,
                            gameName: 'Table Tennis',
                            gameImage: ImageAssetPath.tableTenis,
                          ),
                          AllGameShow(
                            onClicked: (selected) {
                              setState(() {
                                _isFootBalSelected2 = selected;
                              });
                            },
                            isSelected: _isFootBalSelected2,
                            gameName: 'Football',
                            gameImage: ImageAssetPath.fotball,
                          ),
                          AllGameShow(
                            onClicked: (selected) {
                              setState(() {
                                _isBadmintionSelected2 = selected;
                              });
                            },
                            isSelected: _isBadmintionSelected2,
                            gameName: 'Badminton',
                            gameImage: ImageAssetPath.badmintion,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      const InputTextField(
                        hintText: 'Search a Team',
                        prefixIconData: Icons.search,
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      const GroupTab(),
                    ],
                  )),
                  const PeopleListTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int selectedIndexButton = 0;
  bool _isFootBalSelected = false;
  bool _isBadmintionSelected = false;
  bool _isTableTenisSelected = false;
  bool _isFootBalSelected2 = false;
  bool _isBadmintionSelected2 = false;
  bool isFavorite = false;
}
