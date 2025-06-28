import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prize/core/constant/app_svgs.dart';
import 'package:prize/core/utils/resources/app_colors.dart';
import 'package:prize/features/home/view/bottom_navbar/logic/bottom_nav_bar_navigator/bottom_nav_bar_navigator_cubit.dart';
import '../screens/home_screen.dart';
import 'bottom_navbar_icon_widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> screens = const [
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarNavigatorCubit, BottomNavBarNavigatorState>(
      builder: (context, state) {
        final cubit = context.read<BottomNavBarNavigatorCubit>();

        return Scaffold(
          extendBody: true,
          floatingActionButton: SizedBox(
            width: 65.w,
            height: 65.h,
            child: FloatingActionButton(
              onPressed: () => cubit.goToIndex(2),
              shape: const CircleBorder(),
              backgroundColor: AppColors.primary,
              child: BottomNavbarIconWidget(
                cuttentIndex: cubit.currentIndex,
                iconPath: AppSvgs.home,
                iconColor: AppColors.primaryWhite,
                selectedIndex: 2,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            height: 70.h,
            shape: const CircularNotchedRectangle(),
            notchMargin: 6,
            color: AppColors.primaryWhite,
            padding: EdgeInsets.only(bottom: 5.h, right: 10.w, left: 10.w),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => cubit.goToIndex(0),
                  icon: BottomNavbarIconWidget(
                    cuttentIndex: cubit.currentIndex,
                    iconPath: AppSvgs.home,
                    selectedIndex: 0,
                  ),
                ),
                IconButton(
                  onPressed: () => cubit.goToIndex(1),
                  icon: BottomNavbarIconWidget(
                    cuttentIndex: cubit.currentIndex,
                    iconPath: AppSvgs.shop,
                    selectedIndex: 1,
                  ),
                ),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () => cubit.goToIndex(3),
                  icon: BottomNavbarIconWidget(
                    cuttentIndex: cubit.currentIndex,
                    iconPath: AppSvgs.cart,
                    selectedIndex: 3,
                  ),
                ),
                IconButton(
                  onPressed: () => cubit.goToIndex(4),
                  icon: BottomNavbarIconWidget(
                    cuttentIndex: cubit.currentIndex,
                    iconPath: AppSvgs.profile,
                    selectedIndex: 4,
                  ),
                ),
              ],
            ),
          ),
          body: screens[cubit.currentIndex],
        );
      },
    );
  }
}
