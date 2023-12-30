import 'package:flutter/material.dart';
import 'package:sportify/utils/app_styles.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';
import '../../constants/asset_path.dart';

class RackingList extends StatefulWidget {
  const RackingList({Key? key}) : super(key: key);

  @override
  State<RackingList> createState() => _RackingListState();
}

class _RackingListState extends State<RackingList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 30.0,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SvgPicture.asset(
                  ImageAssetPath.icRankingGroup,
                  height: 40.sp,
                  width: 40.sp,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                'Super Smash',
                style: AppStyles.sliderText.copyWith(
                  fontSize: 10.sp,
                  color: AppStyles.black.withOpacity(0.75),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        );
      },
    );
  }
}
