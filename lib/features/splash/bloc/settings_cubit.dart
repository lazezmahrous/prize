// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:prize/core/error/failure.dart';
// import 'package:prize/core/utils/enums/request_status.dart';
// import 'package:prize/core/utils/helper/navigation/navigation_manager.dart';
// import 'package:prize/features/splash/data/model/body/contact_us_body.dart';
// import 'package:prize/features/splash/data/model/body/feedback_body.dart';
// import 'package:prize/features/splash/data/model/settings_model.dart';
// import 'package:prize/features/splash/data/repo/settings_repo.dart';
// import 'package:equatable/equatable.dart';

// part 'settings_state.dart';

// SettingsModel getSettings() => NavigatorManager.getContext().read<SettingsCubit>().state.settings!;

// class SettingsCubit extends Cubit<SettingsState> {
//   SettingsCubit(this._settingsRepository) : super(const SettingsState());

//   final SettingsRepo _settingsRepository;

//   Future<void> getSettings() async {
//     emit(state.copyWith(status: RequestStatus.loading));

//     final result = await _settingsRepository.getSettings();
//     result.fold(
//       (l) => emit(state.copyWith(settingsFailure: l, status: RequestStatus.error)),
//       (r) => emit(state.copyWith(settings: r, status: RequestStatus.success)),
//     );
//   }

//   Future<void> feedback(FeedbackBody body) async {
//     emit(state.copyWith(contactUsStatus: RequestStatus.loading));

//     final result = await _settingsRepository.feedback(body);
//     emit(
//       result.fold(
//         (l) => state.copyWith(contactUsStatus: RequestStatus.error, contactUsFailure: l),
//         (r) => state.copyWith(contactUsStatus: RequestStatus.success),
//       ),
//     );
//   }

//   Future<void> contactUs(ContactUsBody body) async {
//     emit(state.copyWith(contactUsStatus: RequestStatus.loading));

//     final result = await _settingsRepository.contactUs(body);
//     emit(
//       result.fold(
//         (l) => state.copyWith(contactUsStatus: RequestStatus.error, contactUsFailure: l),
//         (r) => state.copyWith(contactUsStatus: RequestStatus.success),
//       ),
//     );
//   }

//   Future<void> setFirstLaunch([bool value = false]) async {
//     await _settingsRepository.setFirstLaunch(value);
//     emit(state.copyWith(isFirstLaunch: value));
//   }

//   bool isFirstLaunch() {
//     final value = _settingsRepository.isFirstLaunch();
//     emit(state.copyWith(isFirstLaunch: value));

//     return value;
//   }
// }
