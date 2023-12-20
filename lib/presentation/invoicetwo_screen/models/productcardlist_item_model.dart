import '../../../core/app_export.dart';/// This class is used in the [productcardlist_item_widget] screen.
class ProductcardlistItemModel {ProductcardlistItemModel({this.productName, this.productCompany, this.productRating, this.productReviews, this.productPrice1, this.productPrice2, this.productClockText, this.productCount, this.productAddButton, this.id, }) { productName = productName  ?? "panadol advace";productCompany = productCompany  ?? "from : gsk company";productRating = productRating  ?? "4.5";productReviews = productReviews  ?? "(1045 Reviews)";productPrice1 = productPrice1  ?? "235,00";productPrice2 = productPrice2  ?? "335,00";productClockText = productClockText  ?? "-";productCount = productCount  ?? "3";productAddButton = productAddButton  ?? "+";id = id  ?? ""; }

String? productName;

String? productCompany;

String? productRating;

String? productReviews;

String? productPrice1;

String? productPrice2;

String? productClockText;

String? productCount;

String? productAddButton;

String? id;

 }
