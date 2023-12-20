import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard3_item_model.dart';
import 'package:dondondony38_s_application1/presentation/brand_info_page/models/brand_info_model.dart';
part 'brand_info_event.dart';
part 'brand_info_state.dart';

/// A bloc that manages the state of a BrandInfo according to the event that is dispatched to it.
class BrandInfoBloc extends Bloc<BrandInfoEvent, BrandInfoState> {
  BrandInfoBloc(BrandInfoState initialState) : super(initialState) {
    on<BrandInfoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BrandInfoInitialEvent event,
    Emitter<BrandInfoState> emit,
  ) async {
    emit(state.copyWith(
        brandInfoModelObj: state.brandInfoModelObj?.copyWith(
      productcard3ItemList: fillProductcard3ItemList(),
    )));
  }

  List<Productcard3ItemModel> fillProductcard3ItemList() {
    return [
      Productcard3ItemModel(
          title: "panadol advace",
          company: "from : gsk company",
          rating: "4.5",
          reviews: "(1045 Reviews)",
          price1: "235,00",
          price2: "335,00"),
      Productcard3ItemModel(
          title: "panadol advace",
          company: "from : gsk company",
          price1: "235,00",
          price2: "335,00")
    ];
  }
}
