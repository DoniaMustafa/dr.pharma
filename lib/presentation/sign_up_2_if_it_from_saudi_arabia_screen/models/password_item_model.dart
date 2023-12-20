import '../../../core/app_export.dart';/// This class is used in the [password_item_widget] screen.
class PasswordItemModel {PasswordItemModel({this.confirmPasswordImage, this.confirmPasswordText, this.showPasswordImage, this.id, }) { confirmPasswordImage = confirmPasswordImage  ?? ImageConstant.imgLocation;confirmPasswordText = confirmPasswordText  ?? "confirm password";showPasswordImage = showPasswordImage  ?? ImageConstant.imgEye;id = id  ?? ""; }

String? confirmPasswordImage;

String? confirmPasswordText;

String? showPasswordImage;

String? id;

 }
