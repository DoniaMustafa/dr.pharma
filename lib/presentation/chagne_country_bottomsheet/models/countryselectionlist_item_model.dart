import '../../../core/app_export.dart';/// This class is used in the [countryselectionlist_item_widget] screen.
class CountryselectionlistItemModel {CountryselectionlistItemModel({this.image, this.text, this.image1, this.id, }) { image = image  ?? ImageConstant.imgSaudiArabia1;text = text  ?? "Saudi Arabia";image1 = image1  ?? ImageConstant.imgCheckmarkRed700;id = id  ?? ""; }

String? image;

String? text;

String? image1;

String? id;

 }
