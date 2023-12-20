// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:dondondony38_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [brand_infotwo_sixteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoSixteenModel extends Equatable {BrandInfotwoSixteenModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

BrandInfotwoSixteenModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return BrandInfotwoSixteenModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
