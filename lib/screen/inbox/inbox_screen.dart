import 'package:flutter/material.dart';
import 'package:sportify/screen/inbox/all_tab_inbox.dart';
import 'package:sportify/screen/inbox/inbox_activity_tab.dart';
import 'package:sportify/screen/inbox/inbox_grups_tab.dart';
import 'package:sportify/screen/inbox/inbox_people_tab.dart';
import 'package:sportify/screen/notification_screen.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class InboxScreen extends StatefulWidget {
  final int initialTabIndex;
  const InboxScreen({Key? key, required this.initialTabIndex})
      : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
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
    const Tab(text: 'All'),
    const Tab(text: 'Peoples'),
    const Tab(text: 'Groups'),
    const Tab(text: 'Activities'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.screenBackgroundColor,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.image_outlined,
          size: 22.sp,
          color: AppStyles.black,
        ),
        centerTitle: true,
        title: Text(
          'Inbox',
          style: AppStyles.appBarTitleTextStyle
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Get.to(() => const NotificationScreen());
              },
              child: Icon(
                Icons.notifications_outlined,
                size: 22.sp,
                color: AppStyles.black,
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppStyles.screenBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              padding: const EdgeInsets.all(0),
              isScrollable: true,
              controller: _tabController,
              labelStyle: const TextStyle(
                fontFamily: 'Rubik',
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              labelColor: AppStyles.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppStyles.primary,
              indicatorSize: TabBarIndicatorSize.label,
              //indicatorWeight: .0, // Adjust the indicator weight as desired
              tabs: myTabs.map((Tab tab) {
                return Tab(
                  text: tab.text,
                );
              }).toList(),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const AllTabInbox(),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Peoples',
                            style: AppStyles.appBarTitleTextStyle
                                .copyWith(fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const InboxPeopleTab(),
                      ],
                    ),
                  ),
                  const InboxGroupsTab(),
                  const InboxActivityTab()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
