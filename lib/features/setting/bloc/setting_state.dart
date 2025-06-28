part of 'setting_cubit.dart';

class SettingState extends Equatable {
  // Setting
  final RequestStatus settingStatus;
  final List<SettingModel> settings;
  final Failure? settingFailure;

  const SettingState({
    this.settingStatus = RequestStatus.init,
    this.settings = const [],
    this.settingFailure,
  });

  SettingState copyWith({
    RequestStatus? settingStatus,
    List<SettingModel>? settings,
    Failure? settingFailure,
  }) {
    return SettingState(
      settingStatus: settingStatus ?? this.settingStatus,
      settings: settings ?? this.settings,
      settingFailure: settingFailure ?? this.settingFailure,
    );
  }

  @override
  List<Object?> get props => [settingStatus, settings, settingFailure];
}
