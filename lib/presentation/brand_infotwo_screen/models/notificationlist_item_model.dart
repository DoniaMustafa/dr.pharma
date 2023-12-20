import '../../../core/app_export.dart';/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {NotificationlistItemModel({this.imageClass, this.text1, this.text2, this.text3, this.id, }) { imageClass = imageClass  ?? ImageConstant.imgTelevision;text1 = text1  ?? "1000 riyals have been deposited in your wallet";text2 = text2  ?? "30 may 2023 - 6:55 PM";text3 = text3  ?? "+1000\nEGP";id = id  ?? ""; }

String? imageClass;

String? text1;

String? text2;

String? text3;

String? id;

 }
