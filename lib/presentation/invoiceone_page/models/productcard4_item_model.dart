import '../../../core/app_export.dart';/// This class is used in the [productcard4_item_widget] screen.
class Productcard4ItemModel {Productcard4ItemModel({this.productName, this.productDescription, this.ratingText, this.reviewCount, this.price1, this.price2, this.quantity, this.plusIcon, this.id, }) { productName = productName  ?? "panadol advace";productDescription = productDescription  ?? "from : gsk company";ratingText = ratingText  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";quantity = quantity  ?? "3";plusIcon = plusIcon  ?? "+";id = id  ?? ""; }

String? productName;

String? productDescription;

String? ratingText;

String? reviewCount;

String? price1;

String? price2;

String? quantity;

String? plusIcon;

String? id;

 }
