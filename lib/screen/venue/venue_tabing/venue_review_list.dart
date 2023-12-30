import 'package:sportify/constants/asset_path.dart';
import 'package:sportify/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ReviewListOtherUser extends StatefulWidget {
  const ReviewListOtherUser({Key? key}) : super(key: key);

  @override
  State<ReviewListOtherUser> createState() => _ReviewListOtherUserState();
}

class _ReviewListOtherUserState extends State<ReviewListOtherUser> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Reviews',
                    style: AppStyles.homeAppBarTextStyle
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Image.asset(
                    ImageAssetPath.venueError,
                    height: 23,
                    width: 23,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      ImageAssetPath.homeNearbyActivityUser,
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Seth Rollins',
                    style: AppStyles.homeAppBarTextStyle.copyWith(
                        fontSize: 18,
                        color: AppStyles.black.withOpacity(0.7),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  const Icon(
                    Icons.star_border_purple500_outlined,
                    color: Colors.orange,
                    size: 25,
                  ),
                  const Icon(
                    Icons.star_border_purple500_outlined,
                    color: Colors.orange,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '9 hours ago',
                    style: AppStyles.homeAppBarTextStyle.copyWith(
                        fontSize: 18,
                        color: AppStyles.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Nice and friendly place for Badminton !!',
                style: AppStyles.homeAppBarTextStyle.copyWith(
                    fontSize: 18,
                    color: AppStyles.grey,
                    fontWeight: FontWeight.w500),
              )
            ],
          );
        });
  }
}
