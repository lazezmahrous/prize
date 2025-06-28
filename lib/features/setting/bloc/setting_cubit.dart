import 'dart:async';

import 'package:prize/core/error/failure.dart';
import 'package:prize/core/utils/enums/request_status.dart';
import 'package:prize/features/setting/data/models/setting_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/repo/setting_repo.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  final SettingRepo _settingRepo;

  SettingCubit(this._settingRepo) : super(const SettingState());

  FutureOr<void> getSettings() async {
    emit(state.copyWith(settingStatus: RequestStatus.loading));

    final result = await _settingRepo.getSettings();

    emit(
      result.fold(
        (l) => state.copyWith(settingStatus: RequestStatus.error, settingFailure: l),
        (r) => state.copyWith(settingStatus: RequestStatus.success, settings: r),
      ),
    );
  }
}
