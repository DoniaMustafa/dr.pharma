import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard_item_model.dart';
import 'package:dondondony38_s_application1/presentation/flash_sale_screen/models/flash_sale_model.dart';
part 'flash_sale_event.dart';
part 'flash_sale_state.dart';

/// A bloc that manages the state of a FlashSale according to the event that is dispatched to it.
class FlashSaleBloc extends Bloc<FlashSaleEvent, FlashSaleState> {
  FlashSaleBloc(FlashSaleState initialState) : super(initialState) {
    on<FlashSaleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FlashSaleInitialEvent event,
    Emitter<FlashSaleState> emit,
  ) async {
    emit(state.copyWith(
        flashSaleModelObj: state.flashSaleModelObj?.copyWith(
      productcardItemList: fillProductcardItemList(),
    )));
  }

  List<ProductcardItemModel> fillProductcardItemList() {
    return [
      ProductcardItemModel(
          discountText: "-15%",
          favoriteImage: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingImage: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00"),
      ProductcardItemModel(
          discountText: "-15%",
          favoriteImage: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingImage: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00"),
      ProductcardItemModel(
          discountText: "-15%",
          favoriteImage: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingImage: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00"),
      ProductcardItemModel(
          discountText: "-15%",
          favoriteImage: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingImage: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00")
    ];
  }
}
