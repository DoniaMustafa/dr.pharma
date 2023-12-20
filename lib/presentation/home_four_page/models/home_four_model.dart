// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofileslider_item_model.dart';import 'merkcomponent_item_model.dart';import 'productcardgrid_item_model.dart';/// This class defines the variables used in the [home_four_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeFourModel extends Equatable {HomeFourModel({this.userprofilesliderItemList = const [], this.merkcomponentItemList = const [], this.productcardgridItemList = const [], }) {  }

List<UserprofilesliderItemModel> userprofilesliderItemList;

List<MerkcomponentItemModel> merkcomponentItemList;

List<ProductcardgridItemModel> productcardgridItemList;

HomeFourModel copyWith({List<UserprofilesliderItemModel>? userprofilesliderItemList, List<MerkcomponentItemModel>? merkcomponentItemList, List<ProductcardgridItemModel>? productcardgridItemList, }) { return HomeFourModel(
userprofilesliderItemList : userprofilesliderItemList ?? this.userprofilesliderItemList,
merkcomponentItemList : merkcomponentItemList ?? this.merkcomponentItemList,
productcardgridItemList : productcardgridItemList ?? this.productcardgridItemList,
); } 
@override List<Object?> get props => [userprofilesliderItemList,merkcomponentItemList,productcardgridItemList];
 }
