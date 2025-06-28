import 'package:prize/core/utils/extensions/color_extension.dart';
import 'package:prize/core/utils/extensions/text_style_extension.dart';
import 'package:prize/core/utils/resources/app_size.dart';
import 'package:prize/core/widgets/main/snk_bar.dart';
import 'package:flutter/material.dart';

class SettingMenuItem extends StatelessWidget {
  const SettingMenuItem({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    this.subtitle,
    this.onTap,
    this.notImplemented = false,
  });

  final Color? color;
  final IconData icon;
  final String title;
  final String? subtitle;
  final void Function()? onTap;
  final bool notImplemented;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            if (notImplemented) {
              SnkBar.showToastNotImplemented();
            }
          },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.padding16,
          vertical: AppSize.padding12,
        ),
        child: Row(
          spacing: AppSize.padding12,
          children: [
            Icon(
              icon,
              color: color ?? context.colorPrimaryWhite,
              size: 30,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            if (subtitle != null) ...[
              7.spaceHeight,
              Text(
                subtitle!,
                style: context.styleSubtitle14,
              ),
            ],
            Icon(
              notImplemented ? Icons.timelapse : Icons.arrow_forward_ios,
              size: 20,
              color: context.colorPrimaryWhite,
            ),
          ],
        ),
      ),
    );
  }
}
