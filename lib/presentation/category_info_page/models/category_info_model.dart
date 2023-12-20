// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard2_item_model.dart';/// This class defines the variables used in the [category_info_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoModel extends Equatable {CategoryInfoModel({this.productcard2ItemList = const []}) {  }

List<Productcard2ItemModel> productcard2ItemList;

CategoryInfoModel copyWith({List<Productcard2ItemModel>? productcard2ItemList}) { return CategoryInfoModel(
productcard2ItemList : productcard2ItemList ?? this.productcard2ItemList,
); } 
@override List<Object?> get props => [productcard2ItemList];
 }
