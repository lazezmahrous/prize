import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:api_data_parser/api_data_parser.dart';

class MaintenanceModel extends Equatable {
  final bool enabled;
  final int minVersion;

  const MaintenanceModel({
    required this.enabled,
    required this.minVersion,
  });

  factory MaintenanceModel.fromJson(Map<String, dynamic>? json) {
    final Map<String, dynamic>? data = json?[Platform.isAndroid ? 'android' : 'ios'];
    if (data == null) return MaintenanceModel(enabled: false, minVersion: 0);

    return MaintenanceModel(
      enabled: ApiDataParser.getBool(data["enabled"]) ?? false,
      minVersion: ApiDataParser.getInt(data["min_version"]) ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        enabled,
        minVersion,
      ];
}
