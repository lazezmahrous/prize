import 'package:flutter/material.dart';
import 'package:prize/features/home/view/widgets/appbar/home_features_appbar.dart';

class OtherEventsAppbar extends StatelessWidget {
  const OtherEventsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeFeaturesAppbar(featureLable: 'Other Events');
  }
}
