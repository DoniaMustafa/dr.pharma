// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fiftyone_item_model.dart';/// This class defines the variables used in the [sign_up_two_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpTwoModel extends Equatable {SignUpTwoModel({this.fiftyoneItemList = const []}) {  }

List<FiftyoneItemModel> fiftyoneItemList;

SignUpTwoModel copyWith({List<FiftyoneItemModel>? fiftyoneItemList}) { return SignUpTwoModel(
fiftyoneItemList : fiftyoneItemList ?? this.fiftyoneItemList,
); } 
@override List<Object?> get props => [fiftyoneItemList];
 }
