import 'package:prize/core/utils/resources/app_colors.dart';
import 'package:prize/core/utils/resources/app_theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 5.w,
      top: 5.h,
      child: Container(
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.offerYellowColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Text(
            '15% OFF',
            style: Theme.of(context).textTheme.offerTextStyle(context),
          ),
        ),
      ),
    );
  }
}
