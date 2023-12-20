import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.twentyText, this.egpText, this.oneThousandText, this.id, }) { twentyText = twentyText  ?? "20 ";egpText = egpText  ?? "EGP";oneThousandText = oneThousandText  ?? "1000";id = id  ?? ""; }

String? twentyText;

String? egpText;

String? oneThousandText;

String? id;

 }
