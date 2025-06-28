import 'package:prize/core/utils/extensions/color_extension.dart';
import 'package:prize/core/utils/resources/app_size.dart';
import 'package:flutter/material.dart';

class SettingMenuGroupWidget extends StatelessWidget {
  const SettingMenuGroupWidget({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        8.spaceHeight,
        Container(
          decoration: BoxDecoration(
            color: context.colorPrimaryLight.withValues(alpha: 0.35),
            borderRadius: BorderRadius.circular(AppSize.radiusLarge14),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: AppSize.padding8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ],
    );
  }
}
