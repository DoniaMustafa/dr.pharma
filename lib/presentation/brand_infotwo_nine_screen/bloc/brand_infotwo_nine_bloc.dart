import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/productcardlist3_item_model.dart';import 'package:dondondony38_s_application1/presentation/brand_infotwo_nine_screen/models/brand_infotwo_nine_model.dart';part 'brand_infotwo_nine_event.dart';part 'brand_infotwo_nine_state.dart';/// A bloc that manages the state of a BrandInfotwoNine according to the event that is dispatched to it.
class BrandInfotwoNineBloc extends Bloc<BrandInfotwoNineEvent, BrandInfotwoNineState> {BrandInfotwoNineBloc(BrandInfotwoNineState initialState) : super(initialState) { on<BrandInfotwoNineInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoNineInitialEvent event, Emitter<BrandInfotwoNineState> emit, ) async  { emit(state.copyWith(brandInfotwoNineModelObj: state.brandInfotwoNineModelObj?.copyWith(productcardlist3ItemList: fillProductcardlist3ItemList()))); } 
List<Productcardlist3ItemModel> fillProductcardlist3ItemList() { return [Productcardlist3ItemModel(productName: "panadol advace", productDescription: "from : gsk company", ratingValue: "4.5", reviewCount: "(1045 Reviews)", price1: "235,00", price2: "335,00"), Productcardlist3ItemModel(productName: "panadol advace", productDescription: "from : gsk company", ratingValue: "4.5", reviewCount: "(1045 Reviews)", price1: "235,00", price2: "335,00")]; } 
 }
