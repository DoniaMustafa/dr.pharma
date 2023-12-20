import '../../../core/app_export.dart';/// This class is used in the [productcard3_item_widget] screen.
class Productcard3ItemModel {Productcard3ItemModel({this.title, this.company, this.rating, this.reviews, this.price1, this.price2, this.id, }) { title = title  ?? "panadol advace";company = company  ?? "from : gsk company";rating = rating  ?? "4.5";reviews = reviews  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";id = id  ?? ""; }

String? title;

String? company;

String? rating;

String? reviews;

String? price1;

String? price2;

String? id;

 }
