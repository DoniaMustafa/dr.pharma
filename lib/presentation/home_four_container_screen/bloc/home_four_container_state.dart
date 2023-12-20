// ignore_for_file: must_be_immutable

part of 'home_four_container_bloc.dart';

/// Represents the state of HomeFourContainer in the application.
class HomeFourContainerState extends Equatable {
  HomeFourContainerState({this.homeFourContainerModelObj});

  HomeFourContainerModel? homeFourContainerModelObj;

  @override
  List<Object?> get props => [
        homeFourContainerModelObj,
      ];
  HomeFourContainerState copyWith(
      {HomeFourContainerModel? homeFourContainerModelObj}) {
    return HomeFourContainerState(
      homeFourContainerModelObj:
          homeFourContainerModelObj ?? this.homeFourContainerModelObj,
    );
  }
}
