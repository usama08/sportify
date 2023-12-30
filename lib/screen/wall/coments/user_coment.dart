import 'package:flutter/material.dart';
import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class UserComment extends StatefulWidget {
  const UserComment({Key? key}) : super(key: key);

  @override
  State<UserComment> createState() => _UserCommentState();
}

class _UserCommentState extends State<UserComment> {
  bool isLike = false;
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    final commentList = [
      {
        'name': 'Ross Taylor',
        'id': 'ID : 8545123',
        'comment':
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        'timestamp': '15 min ago',
      },
      {
        'name': 'Ross Taylor',
        'id': 'ID : 8545123',
        'comment':
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        'timestamp': '15 min ago',
      },
      {
        'name': 'Ross Taylor',
        'id': 'ID : 8545123',
        'comment':
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        'timestamp': '15 min ago',
      },
      {
        'name': 'Ross Taylor',
        'id': 'ID : 8545123',
        'comment':
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        'timestamp': '15 min ago',
      },
    ];

    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: showMore ? commentList.length : 1,
          itemBuilder: (context, index) {
            final comment = commentList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.sp,
                    ),
                    ClipOval(
                      child: Image.asset(
                        ImageAssetPath.homeNearbyActivityUser,
                        height: 35.sp,
                        width: 35.sp,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          comment['name']!,
                          style: AppStyles.smallTextStyle.copyWith(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          comment['id']!,
                          style: AppStyles.smallTextStyle.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: AppStyles.black.withOpacity(0.6)),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(
                    comment['comment']!,
                    style: AppStyles.smallTextStyle.copyWith(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                        color: AppStyles.black.withOpacity(0.50)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 10),
                  child: Row(
                    children: [
                      Text(
                        comment['timestamp']!,
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.50)),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isLike = !isLike;
                                if (isLike) {
                                  likeCount++;
                                } else {
                                  likeCount--;
                                }
                              });
                            },
                            child: Icon(
                              isLike ? Icons.thumb_up : Icons.thumb_up_outlined,
                              color:
                                  isLike ? AppStyles.primary : AppStyles.grey,
                              size: 18.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Text(
                            "$likeCount",
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black.withOpacity(0.50)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              showMore = !showMore;
            });
          },
          child: Text(showMore ? 'Show Less Replies' : 'Shoe 3 more Replies',
              style: AppStyles.sliderText
                  .copyWith(color: AppStyles.primary, fontSize: 10.sp)),
        ),
      ],
    );
  }

  int likeCount = 2;
}
