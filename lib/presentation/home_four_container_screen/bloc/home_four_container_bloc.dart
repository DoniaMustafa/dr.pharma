import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dondondony38_s_application1/presentation/home_four_container_screen/models/home_four_container_model.dart';part 'home_four_container_event.dart';part 'home_four_container_state.dart';/// A bloc that manages the state of a HomeFourContainer according to the event that is dispatched to it.
class HomeFourContainerBloc extends Bloc<HomeFourContainerEvent, HomeFourContainerState> {HomeFourContainerBloc(HomeFourContainerState initialState) : super(initialState) { on<HomeFourContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeFourContainerInitialEvent event, Emitter<HomeFourContainerState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.homeFourPage, ); } 
 }
