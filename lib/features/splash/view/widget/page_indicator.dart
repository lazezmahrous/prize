import 'package:prize/core/utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppPageIndicator extends StatelessWidget {
  const AppPageIndicator({
    super.key,
    required this.currentIndex,
    required this.count, required this.activeColor,
  });

  final int currentIndex;
  final int count;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: count,
      duration: const Duration(milliseconds: 350),
      effect: ExpandingDotsEffect(
        activeDotColor: activeColor,
        dotColor: context.colorPrimaryLight,
        dotWidth: 10,
        dotHeight: 10,
        expansionFactor: 3,
        spacing: 6,
      ),
    );
  }
}
