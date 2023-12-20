// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';import 'notificationcard_item_model.dart';/// This class defines the variables used in the [category_info_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoOneModel extends Equatable {CategoryInfoOneModel({this.userprofileItemList = const [], this.notificationcardItemList = const [], }) {  }

List<UserprofileItemModel> userprofileItemList;

List<NotificationcardItemModel> notificationcardItemList;

CategoryInfoOneModel copyWith({List<UserprofileItemModel>? userprofileItemList, List<NotificationcardItemModel>? notificationcardItemList, }) { return CategoryInfoOneModel(
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
notificationcardItemList : notificationcardItemList ?? this.notificationcardItemList,
); } 
@override List<Object?> get props => [userprofileItemList,notificationcardItemList];
 }
