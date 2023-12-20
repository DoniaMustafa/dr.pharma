import '../category_info_page/widgets/productcard2_item_widget.dart';import 'bloc/category_info_bloc.dart';import 'models/category_info_model.dart';import 'models/productcard2_item_model.dart';import 'package:dondondony38_s_application1/core/app_export.dart';import 'package:flutter/material.dart';class CategoryInfoPage extends StatefulWidget {const CategoryInfoPage({Key? key}) : super(key: key);

@override CategoryInfoPageState createState() =>  CategoryInfoPageState();

static Widget builder(BuildContext context) { return BlocProvider<CategoryInfoBloc>(create: (context) => CategoryInfoBloc(CategoryInfoState(categoryInfoModelObj: CategoryInfoModel()))..add(CategoryInfoInitialEvent()), child: CategoryInfoPage()); } 
 }
class CategoryInfoPageState extends State<CategoryInfoPage> with  AutomaticKeepAliveClientMixin<CategoryInfoPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 20.v), SizedBox(height: 660.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [_buildMenuList(context), _buildProductCard(context)]))]))))); } 
/// Section Widget
Widget _buildMenuList(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(top: 443.v, bottom: 126.v), padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 23.v), decoration: AppDecoration.outlineGray5003f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder33), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgFrame8, height: 38.v, width: 46.h, margin: EdgeInsets.only(bottom: 4.v), onTap: () {onTapImgImage(context);}), CustomImageView(imagePath: ImageConstant.imgGrid, height: 40.v, width: 48.h, margin: EdgeInsets.only(left: 21.h, bottom: 4.v), onTap: () {onTapImgGrid(context);}), Container(width: 112.h, margin: EdgeInsets.only(left: 9.h, bottom: 4.v), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v), decoration: AppDecoration.fillSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.img9840629HotSalRed700, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h, top: 4.v, bottom: 4.v), child: Text("lbl_flash_sale".tr, style: CustomTextStyles.labelLargePoppinsRed700))])), CustomImageView(imagePath: ImageConstant.imgFrame9, height: 40.v, width: 48.h, margin: EdgeInsets.only(left: 9.h, bottom: 4.v)), CustomImageView(imagePath: ImageConstant.imgMegaphone, height: 31.v, width: 48.h, margin: EdgeInsets.only(left: 19.h, top: 4.v, bottom: 8.v), onTap: () {onTapImgMegaphone(context);})]))); } 
/// Section Widget
Widget _buildProductCard(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 22.h), child: BlocSelector<CategoryInfoBloc, CategoryInfoState, CategoryInfoModel?>(selector: (state) => state.categoryInfoModelObj, builder: (context, categoryInfoModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 319.v, crossAxisCount: 2, mainAxisSpacing: 21.h, crossAxisSpacing: 21.h), physics: NeverScrollableScrollPhysics(), itemCount: categoryInfoModelObj?.productcard2ItemList.length ?? 0, itemBuilder: (context, index) {Productcard2ItemModel model = categoryInfoModelObj?.productcard2ItemList[index] ?? Productcard2ItemModel(); return Productcard2ItemWidget(model);});}))); } 
/// Navigates to the homeFourContainerScreen when the action is triggered.
onTapImgImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeFourContainerScreen, ); } 
/// Navigates to the categoryTabContainerScreen when the action is triggered.
onTapImgGrid(BuildContext context) { NavigatorService.pushNamed(AppRoutes.categoryTabContainerScreen, ); } 
/// Navigates to the invoicethreeOneScreen when the action is triggered.
onTapImgMegaphone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.invoicethreeOneScreen, ); } 
 }
