import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prize/core/constant/app_svgs.dart';
import 'package:prize/features/home/view/widgets/appbar/home_features_appbar.dart';

class UpComingEventsAppBar extends StatelessWidget {
  const UpComingEventsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeFeaturesAppbar(
      featureLable:"My Upcoming Events",
      lableIcon: SvgPicture.asset(AppSvgs.calendarWithDay),
    );
  }
}
