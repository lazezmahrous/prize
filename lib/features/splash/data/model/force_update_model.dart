import 'dart:io';

import 'package:equatable/equatable.dart';

class ForceUpdateModel extends Equatable {
  final int minVersion;
  final String storeLink;

  const ForceUpdateModel({
    required this.minVersion,
    required this.storeLink,
  });

  factory ForceUpdateModel.fromJson(Map<String, dynamic>? json) {
    final Map<String, dynamic>? data = json?['force_update']?[Platform.isAndroid ? 'android' : 'ios'];
    if (data == null) return ForceUpdateModel.empty();

    return ForceUpdateModel(
      minVersion: data['min_version'],
      storeLink: data['store_link'],
    );
  }

  const ForceUpdateModel.empty() : minVersion = 0, storeLink = '';

  @override
  List<Object> get props => [minVersion, storeLink];
}
