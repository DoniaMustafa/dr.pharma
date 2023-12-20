import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamictextgrid_item_model.dart';
import 'package:dondondony38_s_application1/presentation/category_brand_page/models/category_brand_model.dart';
part 'category_brand_event.dart';
part 'category_brand_state.dart';

/// A bloc that manages the state of a CategoryBrand according to the event that is dispatched to it.
class CategoryBrandBloc extends Bloc<CategoryBrandEvent, CategoryBrandState> {
  CategoryBrandBloc(CategoryBrandState initialState) : super(initialState) {
    on<CategoryBrandInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryBrandInitialEvent event,
    Emitter<CategoryBrandState> emit,
  ) async {
    emit(state.copyWith(
        categoryBrandModelObj: state.categoryBrandModelObj?.copyWith(
      dynamictextgridItemList: fillDynamictextgridItemList(),
    )));
  }

  List<DynamictextgridItemModel> fillDynamictextgridItemList() {
    return [
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18648, dynamicText: "sanofi"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18649, dynamicText: "merck"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18650, dynamicText: "gsk"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18648, dynamicText: "sanofi"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18649, dynamicText: "merck"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18650, dynamicText: "gsk"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18648, dynamicText: "sanofi"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18649, dynamicText: "merck"),
      DynamictextgridItemModel(
          dynamicImage: ImageConstant.imgRectangle18650, dynamicText: "gsk")
    ];
  }
}
