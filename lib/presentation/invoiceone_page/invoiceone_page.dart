import '../invoiceone_page/widgets/productcard4_item_widget.dart';import 'bloc/invoiceone_bloc.dart';import 'models/invoiceone_model.dart';import 'models/productcard4_item_model.dart';import 'package:dondondony38_s_application1/core/app_export.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_leading_circleimage.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_subtitle_five.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_subtitle_four.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:dondondony38_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:dondondony38_s_application1/widgets/custom_elevated_button.dart';import 'package:dondondony38_s_application1/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class InvoiceonePage extends StatelessWidget {const InvoiceonePage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<InvoiceoneBloc>(create: (context) => InvoiceoneBloc(InvoiceoneState(invoiceoneModelObj: InvoiceoneModel()))..add(InvoiceoneInitialEvent()), child: InvoiceonePage()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 33.v), child: Column(children: [_buildProductCard(context), SizedBox(height: 98.v), Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.outlineGray50087.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 7.v, width: 114.h, decoration: BoxDecoration(color: appTheme.gray5005e, borderRadius: BorderRadius.circular(3.h))), SizedBox(height: 6.v), _buildTotal(context), SizedBox(height: 25.v), _buildAddItem(context), SizedBox(height: 25.v)]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 75.h, leading: AppbarLeadingCircleimage(imagePath: ImageConstant.imgRectangle18623, margin: EdgeInsets.only(left: 24.h, top: 2.v, bottom: 2.v), onTap: () {onTapCircleImage(context);}), title: Padding(padding: EdgeInsets.only(left: 7.h), child: Column(children: [AppbarSubtitleFive(text: "lbl_a_z_pharmacy".tr), AppbarSubtitleFour(text: "lbl_egypt2".tr, margin: EdgeInsets.only(right: 65.h))])), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.img8134640GiftBi, margin: EdgeInsets.fromLTRB(23.h, 2.v, 23.h, 5.v))]); } 
/// Section Widget
Widget _buildProductCard(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<InvoiceoneBloc, InvoiceoneState, InvoiceoneModel?>(selector: (state) => state.invoiceoneModelObj, builder: (context, invoiceoneModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: invoiceoneModelObj?.productcard4ItemList.length ?? 0, itemBuilder: (context, index) {Productcard4ItemModel model = invoiceoneModelObj?.productcard4ItemList[index] ?? Productcard4ItemModel(); return Productcard4ItemWidget(model);});})); } 
/// Section Widget
Widget _buildTotal(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_total".tr, style: CustomTextStyles.titleMediumPrimarySemiBold), Text("lbl_30_50".tr, style: CustomTextStyles.titleMediumPrimarySemiBold)])); } 
/// Section Widget
Widget _buildAddItem(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "lbl_add_item".tr, margin: EdgeInsets.only(right: 15.h))), Expanded(child: CustomElevatedButton(height: 45.v, text: "lbl_checkout".tr, margin: EdgeInsets.only(left: 15.h), buttonStyle: CustomButtonStyles.fillOnError))])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapCircleImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
 }
