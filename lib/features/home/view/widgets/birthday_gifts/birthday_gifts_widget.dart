import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prize/features/home/view/widgets/appbar/home_features_appbar.dart';
import 'package:prize/features/home/view/widgets/mothers_day_gifts/all_mothers_day_gifts_widget.dart';

class BirthdayGiftsWidget extends StatelessWidget {
  const BirthdayGiftsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeFeaturesAppbar(featureLable: 'Birthday gifts'),
        SizedBox(
          width: double.infinity,
          height: 350.h,
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
            child: AllMothersDayGiftsWidget(),
          ),
        ),
      ],
    );
  }
}
