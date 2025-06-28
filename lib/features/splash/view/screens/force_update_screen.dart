import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prize/core/utils/extensions/text_style_extension.dart';
import 'package:prize/core/utils/generated/tr_locale_keys.g.dart';
import 'package:prize/core/utils/resources/app_colors.dart';
import 'package:prize/core/utils/resources/app_size.dart';
import 'package:prize/core/widgets/main/app_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ForceUpdateScreen extends StatelessWidget {
  const ForceUpdateScreen({
    super.key,
    required this.link,
  });

  final String link;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.maintenance_force_update_title.tr(),
        ),
      ),
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
              Icons.download_rounded,
              size: 90,
              color: AppColors.primary,
            ),
            AppSize.paddingLarge26.spaceHeight,
            Text(
              LocaleKeys.maintenance_force_update_title.tr(),
              style: context.styleHeadline3Bold,
              textAlign: TextAlign.center,
            ),
            AppSize.padding8.spaceHeight,
            Text(
              LocaleKeys.maintenance_force_update_description.tr(),
              style: context.styleTitleMedium,
              textAlign: TextAlign.center,
            ),
            AppSize.padding50.spaceHeight,
            AppButton(
              title: LocaleKeys.maintenance_update_now.tr(),
              icon: Icon(Icons.download, color: Colors.white),
              onPressed: () async => await launchUrlString(link),
            ),
          ],
        ),
      ),
    );
  }
}
