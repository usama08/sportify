import 'package:flutter/material.dart';
import 'package:sportify/screen/wall/coments/user_coment.dart';
import '../../../constants/asset_path.dart';
import '../../../utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

class CommentsList extends StatefulWidget {
  const CommentsList({Key? key}) : super(key: key);

  @override
  State<CommentsList> createState() => _CommentsListState();
}

class _CommentsListState extends State<CommentsList> {
  bool isLike = false;
  int likeCount = 7;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            fit: BoxFit.fill,
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
                              'Ross Taylor',
                              style: AppStyles.smallTextStyle.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'ID : 7845123',
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
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                        style: AppStyles.smallTextStyle.copyWith(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                            color: AppStyles.black.withOpacity(0.50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            "11 min ago",
                            style: AppStyles.smallTextStyle.copyWith(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: AppStyles.black.withOpacity(0.50)),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Text(
                            "Reply",
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
                                  isLike
                                      ? Icons.thumb_up
                                      : Icons.thumb_up_outlined,
                                  color: isLike
                                      ? AppStyles.primary
                                      : AppStyles.grey,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 70, top: 5),
                      child: UserComment(),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
