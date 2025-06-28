// import 'package:prize/core/routing/app_router.dart';
// import 'package:prize/core/utils/extensions/color_extension.dart';
// import 'package:prize/core/utils/extensions/navigation_extension.dart';
// import 'package:prize/core/utils/generated/tr_locale_keys.g.dart';
// import 'package:prize/core/utils/resources/app_colors.dart';
// import 'package:prize/core/utils/resources/app_images.dart';
// import 'package:prize/core/utils/resources/app_size.dart';
// import 'package:prize/core/widgets/main/app_button.dart';
// import 'package:prize/features/splash/bloc/settings_cubit.dart';
// import 'package:prize/features/splash/view/widget/on_boarding_item_widget.dart';
// import 'package:prize/features/splash/view/widget/page_indicator.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   final _pageController = PageController();
//   int currentIndex = 0;
//   bool _isLastPage = false;

//   void _goToNext() {
//     _pageController.nextPage(
//       duration: const Duration(milliseconds: 350),
//       curve: Curves.easeInOutCubic,
//     );
//   }

//   void _skip() {
//     if (_isLastPage) return;
//     _pageController.animateToPage(
//       _pages.length - 1,
//       duration: const Duration(milliseconds: 350),
//       curve: Curves.easeInOutCubic,
//     );
//   }

//   void _onDone() {
//     context.read<SettingsCubit>().setFirstLaunch();
//     context.pushNamedFinish(AppRoutes.login);
//   }

//   final _pages = [
//     OnBoardingItemWidget(
//       svgAsset: AppImages.onBoarding1Svg,
//       title: LocaleKeys.on_boarding_title_1.tr(),
//       subtitle: LocaleKeys.on_boarding_subtitle_1.tr(),
//     ),
//     OnBoardingItemWidget(
//       svgAsset: AppImages.onBoarding2Svg,
//       title: LocaleKeys.on_boarding_title_2.tr(),
//       subtitle: LocaleKeys.on_boarding_subtitle_2.tr(),
//     ),
//     OnBoardingItemWidget(
//       svgAsset: AppImages.onBoarding3Svg,
//       title: LocaleKeys.on_boarding_title_3.tr(),
//       subtitle: LocaleKeys.on_boarding_subtitle_3.tr(),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: AppSize.paddingDefault20,
//           ),
//           child: Column(
//             children: [
//               Container(
//                 alignment: AlignmentDirectional.centerEnd,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: AppSize.paddingDefault20,
//                 ),
//                 child: InkWell(
//                   onTap: _skip,
//                   child: Text(
//                     _isLastPage ? "" : LocaleKeys.action_skip.tr(),
//                   ),
//                 ),
//               ),
//               // Content
//               Expanded(
//                 child: PageView(
//                   controller: _pageController,
//                   physics: const BouncingScrollPhysics(),
//                   onPageChanged: (index) {
//                     setState(() {
//                       _isLastPage = index == 2;
//                       currentIndex = index;
//                     });
//                   },
//                   children: _pages,
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: AppSize.paddingDefault20,
//                 ),
//                 child: AppPageIndicator(
//                   currentIndex: currentIndex,
//                   activeColor: _isLastPage ? AppColor.secondaryViolet : context.colorPrimary,
//                   count: _pages.length,
//                 ),
//               ),
//               // Next Button
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: AppSize.padding32,
//                 ),
//                 child: AppButton(
//                   title: _isLastPage ? LocaleKeys.action_get_started.tr() : LocaleKeys.action_next.tr(),
//                   color: _isLastPage ? AppColor.secondaryViolet : context.colorPrimary,
//                   onColor: _isLastPage ? AppColor.onSecondaryColor : null,
//                   onPressed: () async {
//                     if (!_isLastPage) {
//                       _goToNext();
//                     } else {
//                       _onDone();
//                     }
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
