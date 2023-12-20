// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard3_item_model.dart';/// This class defines the variables used in the [brand_info_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfoModel extends Equatable {BrandInfoModel({this.productcard3ItemList = const []}) {  }

List<Productcard3ItemModel> productcard3ItemList;

BrandInfoModel copyWith({List<Productcard3ItemModel>? productcard3ItemList}) { return BrandInfoModel(
productcard3ItemList : productcard3ItemList ?? this.productcard3ItemList,
); } 
@override List<Object?> get props => [productcard3ItemList];
 }
