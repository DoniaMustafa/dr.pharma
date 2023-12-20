// ignore_for_file: must_be_immutable

part of 'home_four_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeFourContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeFourContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeFourContainer widget is first created.
class HomeFourContainerInitialEvent extends HomeFourContainerEvent {
  @override
  List<Object?> get props => [];
}
