// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard1_item_model.dart';/// This class defines the variables used in the [category_info_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoTwoModel extends Equatable {CategoryInfoTwoModel({this.productcard1ItemList = const []}) {  }

List<Productcard1ItemModel> productcard1ItemList;

CategoryInfoTwoModel copyWith({List<Productcard1ItemModel>? productcard1ItemList}) { return CategoryInfoTwoModel(
productcard1ItemList : productcard1ItemList ?? this.productcard1ItemList,
); } 
@override List<Object?> get props => [productcard1ItemList];
 }
