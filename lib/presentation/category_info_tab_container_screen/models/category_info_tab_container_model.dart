// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [category_info_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoTabContainerModel extends Equatable {CategoryInfoTabContainerModel({this.userprofile1ItemList = const []}) {  }

List<Userprofile1ItemModel> userprofile1ItemList;

CategoryInfoTabContainerModel copyWith({List<Userprofile1ItemModel>? userprofile1ItemList}) { return CategoryInfoTabContainerModel(
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
); } 
@override List<Object?> get props => [userprofile1ItemList];
 }
