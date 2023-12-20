// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'password_item_model.dart';/// This class defines the variables used in the [sign_up_2_if_it_from_saudi_arabia_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUp2IfItFromSaudiArabiaModel extends Equatable {SignUp2IfItFromSaudiArabiaModel({this.passwordItemList = const []}) {  }

List<PasswordItemModel> passwordItemList;

SignUp2IfItFromSaudiArabiaModel copyWith({List<PasswordItemModel>? passwordItemList}) { return SignUp2IfItFromSaudiArabiaModel(
passwordItemList : passwordItemList ?? this.passwordItemList,
); } 
@override List<Object?> get props => [passwordItemList];
 }
