// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard5_item_model.dart';/// This class defines the variables used in the [brand_infotwo_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoEightModel extends Equatable {BrandInfotwoEightModel({this.productcard5ItemList = const []}) {  }

List<Productcard5ItemModel> productcard5ItemList;

BrandInfotwoEightModel copyWith({List<Productcard5ItemModel>? productcard5ItemList}) { return BrandInfotwoEightModel(
productcard5ItemList : productcard5ItemList ?? this.productcard5ItemList,
); } 
@override List<Object?> get props => [productcard5ItemList];
 }
