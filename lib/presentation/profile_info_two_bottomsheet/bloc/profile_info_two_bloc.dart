import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dondondony38_s_application1/presentation/profile_info_two_bottomsheet/models/profile_info_two_model.dart';
part 'profile_info_two_event.dart';
part 'profile_info_two_state.dart';

/// A bloc that manages the state of a ProfileInfoTwo according to the event that is dispatched to it.
class ProfileInfoTwoBloc
    extends Bloc<ProfileInfoTwoEvent, ProfileInfoTwoState> {
  ProfileInfoTwoBloc(ProfileInfoTwoState initialState) : super(initialState) {
    on<ProfileInfoTwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangePasswordVisibilityEvent2>(_changePasswordVisibility2);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<ProfileInfoTwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<ProfileInfoTwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _changePasswordVisibility2(
    ChangePasswordVisibilityEvent2 event,
    Emitter<ProfileInfoTwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword2: event.value,
    ));
  }

  _onInitialize(
    ProfileInfoTwoInitialEvent event,
    Emitter<ProfileInfoTwoState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      newPasswordController: TextEditingController(),
      confirmNewPasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
      isShowPassword2: true,
    ));
  }
}
