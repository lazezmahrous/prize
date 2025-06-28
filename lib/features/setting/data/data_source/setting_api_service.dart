import 'package:prize/core/network/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/setting_model.dart';

part 'setting_api_service.g.dart';

@RestApi()
abstract class SettingApiService {
  factory SettingApiService(Dio dio) = _SettingApiService;

  @GET(ApiConstants.getSettings)
  Future<List<SettingModel>> getSettings();
}
