import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.discountText, this.favoriteIcon, this.productImage, this.productName, this.productDescription, this.ratingIcon, this.ratingText, this.reviewCountText, this.priceText1, this.priceText2, this.id, }) { discountText = discountText  ?? "-15%";favoriteIcon = favoriteIcon  ?? ImageConstant.imgFavorite;productImage = productImage  ?? ImageConstant.imgDownload7RemovebgPreview;productName = productName  ?? "panadol advace exs....";productDescription = productDescription  ?? "from : gsk company";ratingIcon = ratingIcon  ?? ImageConstant.imgSignal;ratingText = ratingText  ?? "4.5";reviewCountText = reviewCountText  ?? "(1045 Reviews)";priceText1 = priceText1  ?? "235,00";priceText2 = priceText2  ?? "335,00";id = id  ?? ""; }

String? discountText;

String? favoriteIcon;

String? productImage;

String? productName;

String? productDescription;

String? ratingIcon;

String? ratingText;

String? reviewCountText;

String? priceText1;

String? priceText2;

String? id;

 }
