import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prize/core/utils/extensions/text_style_extension.dart';
import 'package:prize/core/utils/generated/tr_locale_keys.g.dart';
import 'package:prize/core/utils/resources/app_colors.dart';
import 'package:prize/core/utils/resources/app_size.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.padding50,
          vertical: AppSize.padding32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.build,
              size: 90,
              color: AppColors.primary,
            ),
            AppSize.paddingLarge26.spaceHeight,
            Text(
              LocaleKeys.maintenance_under_maintenance_title.tr(),
              style: context.styleHeadline3Bold,
              textAlign: TextAlign.center,
            ),
            AppSize.padding8.spaceHeight,
            Text(
              LocaleKeys.maintenance_under_maintenance_description.tr(),
              style: context.styleTitleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
