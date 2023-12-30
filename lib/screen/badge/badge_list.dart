import 'package:flutter/material.dart';
import 'package:sportify/screen/badge/badgedialog.dart';

import '../../constants/asset_path.dart';
import '../../utils/app_styles.dart';

class BadgeList extends StatefulWidget {
  final String btext, title, bytext;
  final VoidCallback? onClicked;
  const BadgeList(
      {Key? key,
      required this.btext,
      required this.title,
      required this.bytext,
      required this.onClicked})
      : super(key: key);

  @override
  State<BadgeList> createState() => _BadgeListState();
}

class _BadgeListState extends State<BadgeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        //scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const CustomDialog());
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 42,
                          width: 50,
                          child: Stack(
                            children: [
                              Image.asset(
                                ImageAssetPath.badges,
                                fit: BoxFit.fill,
                                width: 40,
                                height: 40,
                                filterQuality: FilterQuality.high,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 30,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      widget.btext,
                                      style: AppStyles.sliderText.copyWith(
                                        color: AppStyles.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 42,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: AppStyles.screenBackgroundColor,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 42,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                    colors: [Colors.white, AppStyles.primary],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: MediaQuery.of(context).size.width / 3,
                                child: SizedBox(
                                  height: 50,
                                  width: 170,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityUser,
                                              fit: BoxFit.fill,
                                              width: 40,
                                              height: 40,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 30,
                                        child: SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityK,
                                              fit: BoxFit.fill,
                                              width: 50,
                                              height: 50,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 60,
                                          child: SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: ClipOval(
                                              child: Image.asset(
                                                ImageAssetPath
                                                    .homeNearbyActivityE,
                                                fit: BoxFit.fill,
                                                width: 50,
                                                height: 50,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                          top: 0,
                                          left: 90,
                                          child: SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: ClipOval(
                                              child: Image.asset(
                                                ImageAssetPath
                                                    .homeNearbyActivityS,
                                                fit: BoxFit.fill,
                                                width: 50,
                                                height: 50,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: 0,
                                        left: 120,
                                        child: SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: ClipOval(
                                            child: Image.asset(
                                              ImageAssetPath
                                                  .homeNearbyActivityR,
                                              fit: BoxFit.fill,
                                              width: 50,
                                              height: 50,
                                              filterQuality: FilterQuality.high,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(widget.title,
                          style: AppStyles.appBarTitleTextStyle.copyWith(
                            fontSize: 13,
                          )),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.bytext,
                          style: AppStyles.appBarTitleTextStyle
                              .copyWith(color: AppStyles.grey),
                        ),
                        const Icon(
                          Icons.person_outline_outlined,
                          color: AppStyles.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
