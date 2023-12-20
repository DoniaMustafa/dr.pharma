import '../../../core/app_export.dart';/// This class is used in the [notificationcard_item_widget] screen.
class NotificationcardItemModel {NotificationcardItemModel({this.televisionImage, this.subjectText, this.timeText, this.pointText, this.id, }) { televisionImage = televisionImage  ?? ImageConstant.imgTelevision;subjectText = subjectText  ?? "1000 gift points were obtained on your latest bill";timeText = timeText  ?? "30 may 2023 - 6:55 PM";pointText = pointText  ?? "+1000\npoint";id = id  ?? ""; }

String? televisionImage;

String? subjectText;

String? timeText;

String? pointText;

String? id;

 }
