import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/screen/News/news_home_screen.dart';
import 'package:sportify/screen/activity/add_activity.dart';
import 'package:sportify/screen/add_store/add_store.dart';
import 'package:sportify/screen/feed/feed_screen.dart';
import 'package:sportify/screen/group/add_group.dart';
import 'package:sportify/screen/main_screen/home_page/home_page.dart';
import 'package:sportify/screen/profile/profile_page.dart';
import 'package:sportify/screen/venue/add_new_venue.dart';
import 'package:sportify/utils/app_styles.dart';
import '../widget/exit_dialog.dart';
import 'dart:math';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const FeedScreen(),
    const HomePage(),
    const NewsHomeScreen(),
    const MyProfileScreen(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showBottomSheets() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.7),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                right: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              ...List.generate(
                4,
                (index) {
                  double angle = 2 * pi * index / 4;
                  double radius = 100;
                  double x = radius * cos(angle);
                  double y = radius * sin(angle);

                  return Positioned(
                    top: MediaQuery.of(context).size.height * 0.7 + y,
                    left: MediaQuery.of(context).size.width * 0.4 + x,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        if (index == 0) {
                          // Open the AddGroup screen
                          Get.to(() => const AddGroup());
                        } else if (index == 1) {
                          // Open the AddActivityScreen
                          Get.to(() => const AddActivityScreen());
                        } else if (index == 2) {
                          // Open the AddVenue screen
                          Get.to(() => const AddVenue());
                        } else if (index == 3) {
                          // Open the AddStore screen
                          Get.to(() => const AddStore());
                        }
                      },
                      child: Column(
                        children: [
                          if (index == 0)
                            Image.asset(
                              ImageAssetPath.homeGroups,
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            )
                          else if (index == 1)
                            Image.asset(
                              ImageAssetPath.crateActivitywithoutPlayIcon,
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            )
                          else if (index == 2)
                            Image.asset(
                              ImageAssetPath.homeVenue,
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            )
                          else if (index == 3)
                            Image.asset(
                              ImageAssetPath.homeStore,
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                            ),
                          const SizedBox(
                            height: 5,
                          ),
                          if (index == 0)
                            const Text(
                              'Create Team',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          else if (index == 1)
                            const Text(
                              'Create Activities',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          else if (index == 2)
                            const Text(
                              'Create Venue',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          else if (index == 3)
                            const Text(
                              'Create Store',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: WillPopScope(
        onWillPop: () async {
          if (_selectedIndex != 0) {
            _onItemTapped(0);
            return false;
          } else {
            return showExitPopup(context);
          }
        },
        child: RefreshIndicator(
          onRefresh: () {
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          child: IndexedStack(
            index: _selectedIndex,
            children: _widgetOptions,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0
                  ? ImageAssetPath.homeBlack
                  : ImageAssetPath.homeyBlue,
              width: 25,
              height: 25,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1
                  ? ImageAssetPath.activityBlue1
                  : ImageAssetPath.activityBlack,
              width: 25,
              height: 25,
            ),
            label: 'LIBRARY',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: _showBottomSheets,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: AppStyles.primary,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            label: 'MENU',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 3
                  ? ImageAssetPath.groupBlue
                  : ImageAssetPath.groupBlack,
              width: 25,
              height: 25,
            ),
            label: 'MENU',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 4
                  ? ImageAssetPath.profileBlue
                  : ImageAssetPath.profileBlack,
              width: 25,
              height: 25,
            ),
            label: 'MENU',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppStyles.primary,
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }
}
