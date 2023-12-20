// ignore_for_file: must_be_immutable

part of 'profile_two_bloc.dart';

/// Represents the state of ProfileTwo in the application.
class ProfileTwoState extends Equatable {
  ProfileTwoState({
    this.languageController,
    this.languageController1,
    this.profileTwoModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? languageController1;

  ProfileTwoModel? profileTwoModelObj;

  @override
  List<Object?> get props => [
        languageController,
        languageController1,
        profileTwoModelObj,
      ];
  ProfileTwoState copyWith({
    TextEditingController? languageController,
    TextEditingController? languageController1,
    ProfileTwoModel? profileTwoModelObj,
  }) {
    return ProfileTwoState(
      languageController: languageController ?? this.languageController,
      languageController1: languageController1 ?? this.languageController1,
      profileTwoModelObj: profileTwoModelObj ?? this.profileTwoModelObj,
    );
  }
}
