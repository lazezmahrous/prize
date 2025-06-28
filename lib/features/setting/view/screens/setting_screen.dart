// import 'package:prize/core/utils/extensions/color_extension.dart';
// import 'package:prize/core/utils/extensions/text_style_extension.dart';
// import 'package:prize/core/utils/generated/tr_locale_keys.g.dart';
// import 'package:prize/core/widgets/customs/html_viewer_widget.dart';
// import 'package:prize/core/widgets/main/app_button.dart';
// import 'package:prize/core/widgets/main/snk_bar.dart';
// import 'package:prize/core/widgets/selectable_widgets/selectable_icon_option.dart';
// // import 'package:prize/features/profile/view/widgets/edit_profile_screen.dart';
// import 'package:prize/features/setting/view/widgets/setting_menu_group_widget.dart';
// import 'package:prize/features/setting/view/widgets/setting_menu_item.dart';
// import 'package:prize/features/splash/bloc/settings_cubit.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:prize/core/routing/app_router.dart';
// import 'package:prize/core/widgets/bottom_sheet/show_custom_bottom_sheet.dart';
// import 'package:prize/features/theme/view/widgets/change_theme_bottom_sheet_widget.dart';
// import 'package:prize/core/utils/resources/app_colors.dart';
// import 'package:prize/core/utils/resources/app_size.dart';
// import 'package:prize/core/utils/common/logout.dart';
// import 'package:prize/core/utils/extensions/navigation_extension.dart';
// import 'package:prize/features/language/view/screens/change_language_screen.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           LocaleKeys.common_navigation_settings.tr(),
//         ),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(
//           vertical: AppSize.padding16,
//           horizontal: AppSize.paddingLarge26,
//         ),
//         children: [
//           AppButton(
//             title: LocaleKeys.package_choose_the_package_suits_you.tr(),
//             icon: Icon(Icons.star, color: context.colorPrimaryWhite),
//             color: context.colorPrimaryWhite,
//             outlined: true,
//             onPressed: () {
//               context.pushNamed(AppRoutes.selectPackage);
//             },
//           ),
//           AppSize.paddingDefault20.spaceHeight,
//           SettingMenuGroupWidget(
//             title: LocaleKeys.settings_profile_settings.tr(),
//             children: [
//               // SettingMenuItem(
//               //   title: LocaleKeys.settings_edit_profile.tr(),
//               //   icon: Icons.person_outline,
//               //   onTap: () {
//               //     context.pushToSlideX(const EditProfileScreen());
//               //   },
//               // ),
//               SettingMenuItem(
//                 title: LocaleKeys.settings_change_password.tr(),
//                 icon: Icons.lock_outline,
//                 notImplemented: true,
//                 onTap: () {
//                   // todo: Change password
//                   SnkBar.showToastNotImplemented();
//                 },
//               ),
//               SettingMenuItem(
//                 title: LocaleKeys.auth_label_delete_account.tr(),
//                 icon: Icons.delete_outline,
//                 notImplemented: true,
//                 onTap: () {
//                   // todo: Delete account
//                   SnkBar.showToast("Required for iOS!, not ready yet!");
//                 },
//               ),
//               SettingMenuItem(
//                 title: LocaleKeys.settings_invite_friends.tr(),
//                 icon: Icons.person_add_alt_1_outlined,
//                 notImplemented: true,
//                 onTap: () {
//                   // todo: invite friends
//                   SnkBar.showToastNotImplemented();
//                 },
//               ),
//               SettingMenuItem(
//                 title: LocaleKeys.settings_company_memberships.tr(),
//                 icon: Icons.military_tech,
//                 notImplemented: true,
//                 onTap: () {
//                   // todo: company memberships
//                   SnkBar.showToastNotImplemented();
//                 },
//               ),
//               SettingMenuItem(
//                 title: LocaleKeys.payment_payments.tr(),
//                 icon: Icons.payments_outlined,
//                 notImplemented: true,
//                 onTap: () {
//                   // todo: Payments
//                   SnkBar.showToastNotImplemented();
//                 },
//               ),
//             ],
//           ),
//           AppSize.paddingDefault20.spaceHeight,
//           SettingMenuGroupWidget(
//             title: LocaleKeys.settings_help_center.tr(),
//             children: [
//               SettingMenuItem(
//                 icon: Icons.translate,
//                 title: LocaleKeys.settings_change_language.tr(),
//                 onTap: () {
//                   context.pushToSlideX(const ChangeLanguageScreen());
//                 },
//               ),
//               // SettingMenuItem(
//               //   icon: Icons.brightness_4_outlined,
//               //   title: LocaleKeys.theme_app_theme.tr(),
//               //   onTap: () {
//               //     showCustomBottomSheet(
//               //       builder: (context) => const ChangeThemeBottomSheetWidget(),
//               //     );
//               //   },
//               // ),
//               SettingMenuItem(
//                 icon: Icons.info_outline,
//                 title: LocaleKeys.settings_about_us.tr(),
//                 notImplemented: true,
//               ),
//               SettingMenuItem(
//                 icon: Icons.feed_outlined,
//                 title: LocaleKeys.settings_blog.tr(),
//                 notImplemented: true,
//               ),
//               SettingMenuItem(
//                 icon: Icons.live_help_outlined,
//                 title: LocaleKeys.settings_faq.tr(),
//                 notImplemented: true,
//               ),
//               SettingMenuItem(
//                 icon: Icons.policy_outlined,
//                 title: LocaleKeys.common_privacy_policy.tr(),
//                 onTap: () {
//                   context.pushToSlideX(
//                     HtmlViewerWidget(
//                       title: LocaleKeys.common_privacy_policy.tr(),
//                       html: getSettings().privacyPolicy,
//                     ),
//                   );
//                 },
//               ),
//               SettingMenuItem(
//                 icon: Icons.gavel_outlined,
//                 title: LocaleKeys.common_terms_and_conditions.tr(),
//                 onTap: () {
//                   context.pushToSlideX(
//                     HtmlViewerWidget(
//                       title: LocaleKeys.common_terms_and_conditions.tr(),
//                       html: getSettings().termsAndConditions,
//                     ),
//                   );
//                 },
//               ),
//               SettingMenuItem(
//                 icon: Icons.question_answer_outlined,
//                 title: LocaleKeys.common_contact_us.tr(),
//                 onTap: () {
//                   context.pushToSlideX(
//                     HtmlViewerWidget(
//                       title: LocaleKeys.common_contact_us.tr(),
//                       html: getSettings().contactUs,
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//           AppSize.padding8.spaceHeight,
//           // SelectableIconOption(
//           //   title: LocaleKeys.auth_label_logout.tr(),
//           //   icon: Icons.logout,
//           //   color: AppColors.redColor,
//           //   onTap: logout,
//           // ),
//           AppSize.padding12.spaceHeight,
//           AppButton(
//             title: LocaleKeys.settings_customer_support.tr(),
//             icon: Icon(
//               Icons.support_agent,
//               color: context.colorWhiteOrNull,
//             ),
//             onPressed: () {
//               SnkBar.showToastNotImplemented();
//             },
//           ),
//           AppSize.padding12.spaceHeight,
//           Align(
//             child: Text(
//               LocaleKeys.common_message_all_rights_reserved.tr(),
//               style: context.styleBodyMedium,
//             ),
//           ),
//           AppSize.padding12.spaceHeight,
//         ],
//       ),
//     );
//   }
// }
