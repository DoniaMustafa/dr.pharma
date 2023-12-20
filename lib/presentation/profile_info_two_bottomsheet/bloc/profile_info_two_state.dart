// ignore_for_file: must_be_immutable

part of 'profile_info_two_bloc.dart';

/// Represents the state of ProfileInfoTwo in the application.
class ProfileInfoTwoState extends Equatable {
  ProfileInfoTwoState({
    this.passwordController,
    this.newPasswordController,
    this.confirmNewPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isShowPassword2 = true,
    this.profileInfoTwoModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newPasswordController;

  TextEditingController? confirmNewPasswordController;

  ProfileInfoTwoModel? profileInfoTwoModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool isShowPassword2;

  @override
  List<Object?> get props => [
        passwordController,
        newPasswordController,
        confirmNewPasswordController,
        isShowPassword,
        isShowPassword1,
        isShowPassword2,
        profileInfoTwoModelObj,
      ];
  ProfileInfoTwoState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newPasswordController,
    TextEditingController? confirmNewPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isShowPassword2,
    ProfileInfoTwoModel? profileInfoTwoModelObj,
  }) {
    return ProfileInfoTwoState(
      passwordController: passwordController ?? this.passwordController,
      newPasswordController:
          newPasswordController ?? this.newPasswordController,
      confirmNewPasswordController:
          confirmNewPasswordController ?? this.confirmNewPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isShowPassword2: isShowPassword2 ?? this.isShowPassword2,
      profileInfoTwoModelObj:
          profileInfoTwoModelObj ?? this.profileInfoTwoModelObj,
    );
  }
}
