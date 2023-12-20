// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'seventythree_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_sixtyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxSixtyfiveModel extends Equatable {Iphone11ProMaxSixtyfiveModel({this.seventythreeItemList = const []}) {  }

List<SeventythreeItemModel> seventythreeItemList;

Iphone11ProMaxSixtyfiveModel copyWith({List<SeventythreeItemModel>? seventythreeItemList}) { return Iphone11ProMaxSixtyfiveModel(
seventythreeItemList : seventythreeItemList ?? this.seventythreeItemList,
); } 
@override List<Object?> get props => [seventythreeItemList];
 }
