import 'package:prize/core/network/api_constants.dart';
import 'package:prize/features/splash/data/model/body/contact_us_body.dart';
import 'package:prize/features/splash/data/model/body/feedback_body.dart';
import 'package:prize/features/splash/data/model/settings_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'settings_api_service.g.dart';

@RestApi()
abstract class SettingsApiService {
  factory SettingsApiService(Dio dio) => _SettingsApiService(dio);

  @GET(ApiConstants.settings)
  Future<SettingsModel> getSettings();

  @POST(ApiConstants.contactUs)
  Future<void> contactUs(@Body() ContactUsBody body);

  @POST(ApiConstants.feedback)
  Future<void> feedback(@Body() FeedbackBody body);
}
