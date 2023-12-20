// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardlist4_item_model.dart';/// This class defines the variables used in the [brand_infotwo_thirteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoThirteenModel extends Equatable {BrandInfotwoThirteenModel({this.productcardlist4ItemList = const []}) {  }

List<Productcardlist4ItemModel> productcardlist4ItemList;

BrandInfotwoThirteenModel copyWith({List<Productcardlist4ItemModel>? productcardlist4ItemList}) { return BrandInfotwoThirteenModel(
productcardlist4ItemList : productcardlist4ItemList ?? this.productcardlist4ItemList,
); } 
@override List<Object?> get props => [productcardlist4ItemList];
 }
