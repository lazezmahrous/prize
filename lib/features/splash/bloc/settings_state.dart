part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  final bool isFirstLaunch;
  final RequestStatus status;
  final SettingsModel? settings;
  final Failure? settingsFailure;
  // Contact Us
  final RequestStatus contactUsStatus;
  final Failure? contactUsFailure;

  const SettingsState({
    this.isFirstLaunch = false,
    this.status = RequestStatus.init,
    this.settings,
    this.settingsFailure,
    this.contactUsStatus = RequestStatus.init,
    this.contactUsFailure,
  });

  SettingsState copyWith({
    bool? isFirstLaunch,
    RequestStatus? status,
    SettingsModel? settings,
    Failure? settingsFailure,
    RequestStatus? contactUsStatus,
    Failure? contactUsFailure,
  }) {
    return SettingsState(
      isFirstLaunch: isFirstLaunch ?? this.isFirstLaunch,
      status: status ?? this.status,
      settings: settings ?? this.settings,
      settingsFailure: settingsFailure ?? this.settingsFailure,
      contactUsStatus: contactUsStatus ?? this.contactUsStatus,
      contactUsFailure: contactUsFailure ?? this.contactUsFailure,
    );
  }

  @override
  List<Object?> get props => [
    isFirstLaunch,
    status,
    settings,
    settingsFailure,
    contactUsStatus,
    contactUsFailure,
  ];
}
