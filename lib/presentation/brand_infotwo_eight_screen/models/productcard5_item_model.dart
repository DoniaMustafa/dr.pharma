import '../../../core/app_export.dart';/// This class is used in the [productcard5_item_widget] screen.
class Productcard5ItemModel {Productcard5ItemModel({this.discount, this.title, this.description, this.quantity, this.price, this.status, this.id, }) { discount = discount  ?? "-15%";title = title  ?? "panadol advace";description = description  ?? "medicines";quantity = quantity  ?? "quantity : 76";price = price  ?? "235,00";status = status  ?? "unaccepte";id = id  ?? ""; }

String? discount;

String? title;

String? description;

String? quantity;

String? price;

String? status;

String? id;

 }
