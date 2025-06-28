import 'package:prize/core/utils/extensions/text_style_extension.dart';
import 'package:prize/core/utils/resources/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingItemWidget extends StatelessWidget {
  const OnBoardingItemWidget({
    super.key,
    required this.svgAsset,
    required this.title,
    required this.subtitle,
  });

  final String svgAsset;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSize.padding50),
          // image
          SvgPicture.asset(
            svgAsset,
            width: double.maxFinite,
            height: 285,
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(height: 40),
          // headline
          Text(
            title,
            style: context.styleHeadline3Bold,
            textAlign: TextAlign.center,
          ),
          AppSize.paddingDefault20.spaceHeight,
          // subtitle
          Text(
            subtitle,
            style: context.styleBodyLargeLight,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
