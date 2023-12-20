// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'dynamictextgrid_item_model.dart';/// This class defines the variables used in the [category_brand_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryBrandModel extends Equatable {CategoryBrandModel({this.dynamictextgridItemList = const []}) {  }

List<DynamictextgridItemModel> dynamictextgridItemList;

CategoryBrandModel copyWith({List<DynamictextgridItemModel>? dynamictextgridItemList}) { return CategoryBrandModel(
dynamictextgridItemList : dynamictextgridItemList ?? this.dynamictextgridItemList,
); } 
@override List<Object?> get props => [dynamictextgridItemList];
 }
