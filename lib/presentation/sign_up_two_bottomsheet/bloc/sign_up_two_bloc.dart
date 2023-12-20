import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/fiftyone_item_model.dart';import 'package:dondondony38_s_application1/presentation/sign_up_two_bottomsheet/models/sign_up_two_model.dart';part 'sign_up_two_event.dart';part 'sign_up_two_state.dart';/// A bloc that manages the state of a SignUpTwo according to the event that is dispatched to it.
class SignUpTwoBloc extends Bloc<SignUpTwoEvent, SignUpTwoState> {SignUpTwoBloc(SignUpTwoState initialState) : super(initialState) { on<SignUpTwoInitialEvent>(_onInitialize); }

_onInitialize(SignUpTwoInitialEvent event, Emitter<SignUpTwoState> emit, ) async  { emit(state.copyWith(signUpTwoModelObj: state.signUpTwoModelObj?.copyWith(fiftyoneItemList: fillFiftyoneItemList()))); } 
List<FiftyoneItemModel> fillFiftyoneItemList() { return [FiftyoneItemModel(labImage: ImageConstant.img2890580AiArtificialPrimary49x49, labText: "lab"), FiftyoneItemModel(labImage: ImageConstant.imgFacebook, labText: "hospital"), FiftyoneItemModel(labText: "pharmacy"), FiftyoneItemModel(labText: "clinic")]; } 
 }
