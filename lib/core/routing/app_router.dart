import 'dart:io' show Platform;

import 'package:prize/core/dependency_injection.dart';
import 'package:prize/features/auth/login/view/screens/login_screen.dart';
import 'package:prize/features/auth/signup/view/screens/signup_screen.dart';
import 'package:prize/features/complete_profile/view/screens/complete_profile_screen.dart';
import 'package:prize/features/home/view/bottom_navbar/bottom_navbar.dart';
import 'package:prize/features/home/view/bottom_navbar/logic/bottom_nav_bar_navigator/bottom_nav_bar_navigator_cubit.dart';
import 'package:prize/features/onboarding/view/screens/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prize/core/widgets/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:prize/features/tabs/view/cubit/tabs_cubit.dart';
import 'package:prize/features/tabs/view/screens/tabs_screen.dart';

part 'router_builder.dart';

sealed class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String forgetPassword = '/forgetPassword';
  static const String otp = '/otp';
  static const String completeProfile = '/completeProfile';
  static const String addItems = '/addItems';
  static const String home = '/home';
  static const String bottomNavBar = '/bottomNavBar';

  static const String tabs = '/tabs';
  static const String onBoarding = '/boarding_screen';

  static const String search = '/search';
  static const String selectPackage = '/select_package';
  static const String publishProperty = '/publish_property';

  /// Routes Getters
  // static Future<T?> pushToPaymentMethods<T>(
  //   PaymentArguments arguments, {
  //   bool replacement = false,
  // }) async {
  //   if (replacement) {
  //     return Navigator.pushReplacementNamed(
  //       getContext(),
  //       _paymentMethods,
  //       arguments: arguments,
  //     );
  //   }
  //   return pushNamed<T>(_paymentMethods, arguments: arguments);
  // }
}

class MyRouter {
  MyRouter._();

  // static PublishPropertyCubit? _publishPropertyCubit;

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.tabs:
        return _RouterBuilder.defaultPageRoute(
          child: MultiBlocProvider(
            providers: [
              BlocProvider<TabsCubit>(create: (context) => TabsCubit()),
            ],
            child: const TabsScreen(),
          ),
        );
      case AppRoutes.bottomNavBar:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => DI.di<BottomNavBarNavigatorCubit>(),
            child: const BottomNavBar(),
          ),
        );
      case AppRoutes.onBoarding:
        return _RouterBuilder.slideX(
          child: const OnboardingScreen(),
        );

      case AppRoutes.login:
        return _RouterBuilder.defaultPageRoute(
          child: const LoginScreen(),
        );

      case AppRoutes.signUp:
        return _RouterBuilder.defaultPageRoute(
          child: const SignupScreen(),
        );

      case AppRoutes.completeProfile:
        return _RouterBuilder.defaultPageRoute(
          child: const CompleteProfileScreen(),
        );

      // todo: Check this ya Abdul-Rahman
      // case AppRoutes.selectPackage:
      //   return _RouterBuilder.slideX(
      //     child: MultiBlocProvider(
      //       providers: [
      //         BlocProvider(create: (context) => DI.di<PackageCubit>()),
      //       ],
      //       child: const SelectPackageScreen(),
      //     ),
      //   );

      // case AppRoutes.publishProperty:
      //   _publishPropertyCubit = DI.di<PublishPropertyCubit>();
      //   return _RouterBuilder.slideX(
      //     child: BlocProvider(
      //       create: (context) => _publishPropertyCubit!,
      //       child: const PublishPropertyScreen(),
      //     ),
      //   );

      default:
        debugPrint('> Not found page: ${settings.name}');
        return _RouterBuilder.slideX(child: const NotFoundScreen());
    }
  }
}
