import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';
import '../../widget/app_button.dart';

class VenueProduct extends StatefulWidget {
  const VenueProduct({Key? key}) : super(key: key);

  @override
  State<VenueProduct> createState() => _VenueProductState();
}

class _VenueProductState extends State<VenueProduct>
    with SingleTickerProviderStateMixin {
  late TabController _tabController2;

  @override
  void initState() {
    super.initState();
    _tabController2 = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelStyle: const TextStyle(
              fontFamily: 'Rubik',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            labelColor: AppStyles.black,
            unselectedLabelColor: AppStyles.grey,
            indicatorColor: const Color(0xffA8FFFA),
            indicatorSize: TabBarIndicatorSize.label,
            //indicatorWeight: 3.0, // Adjust the indicator weight as desired
            controller: _tabController2,
            tabs: const [
              Tab(text: 'Football'),
              Tab(text: 'Badminton'),
              Tab(text: 'Table Tennis'),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController2,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppButton(
                            onClicked: () {},
                            background: AppStyles.primary,
                            text: 'Join')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppButton(
                            onClicked: () {},
                            background: AppStyles.primary,
                            text: 'Join2')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppButton(
                            onClicked: () {},
                            background: AppStyles.primary,
                            text: 'Join3')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
