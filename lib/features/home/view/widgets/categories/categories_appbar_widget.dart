import 'package:flutter/material.dart';
import 'package:prize/features/home/view/widgets/appbar/home_features_appbar.dart';

class CategoriesAppbarWidget extends StatelessWidget {
  const CategoriesAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeFeaturesAppbar(featureLable: 'Categories');
  }
}
