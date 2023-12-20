import '../brand_infotwo_thirteen_screen/widgets/productcardlist4_item_widget.dart';import 'bloc/brand_infotwo_thirteen_bloc.dart';import 'models/brand_infotwo_thirteen_model.dart';import 'models/productcardlist4_item_model.dart';import 'package:dondondony38_s_application1/core/app_export.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:dondondony38_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:dondondony38_s_application1/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class BrandInfotwoThirteenScreen extends StatelessWidget {const BrandInfotwoThirteenScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoThirteenBloc>(create: (context) => BrandInfotwoThirteenBloc(BrandInfotwoThirteenState(brandInfotwoThirteenModelObj: BrandInfotwoThirteenModel()))..add(BrandInfotwoThirteenInitialEvent()), child: BrandInfotwoThirteenScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 7.v), child: Column(children: [SizedBox(height: 20.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 17.h, right: 13.h, bottom: 5.v), child: Column(children: [Text("msg_bill_no_23455_64327".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 1.v), Text("msg_ordered_20_11_2023".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 26.v), _buildOrderStateColumn(context), SizedBox(height: 42.v), _buildTotalRow(context), SizedBox(height: 21.v), _buildPaymentSummaryColumn(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 15.h), child: Text("lbl_products".tr, style: CustomTextStyles.titleSmallPoppinsPrimarySemiBold))), SizedBox(height: 15.v), _buildProductCardList(context)]))))])), bottomNavigationBar: _buildCancelButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 22.v, bottom: 22.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_order_details".tr)); } 
/// Section Widget
Widget _buildOrderStateColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 11.h), child: Text("lbl_order_state".tr, style: CustomTextStyles.titleSmallPoppinsPrimarySemiBold)), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 11.h), child: Row(children: [_buildTelevisionColumn(context, televisionImage: ImageConstant.imgArrowDown, confirmedText: "lbl_request_is_done".tr), Padding(padding: EdgeInsets.only(left: 7.h), child: _buildTelevisionColumn(context, televisionImage: ImageConstant.imgTelevisionOrangeA200, confirmedText: "lbl_confirmed".tr)), Padding(padding: EdgeInsets.only(left: 7.h), child: _buildTelevisionColumn(context, televisionImage: ImageConstant.imgTelevisionOnprimarycontainer, confirmedText: "lbl_on_the_way".tr)), Padding(padding: EdgeInsets.only(left: 7.h), child: _buildTelevisionColumn(context, televisionImage: ImageConstant.imgTelevisionOnprimarycontainer9x87, confirmedText: "lbl_delivered".tr))]))]); } 
/// Section Widget
Widget _buildTotalRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 17.h, right: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_total".tr, style: CustomTextStyles.titleMediumPrimarySemiBold), Text("lbl_30_50".tr, style: CustomTextStyles.titleMediumPrimarySemiBold)])); } 
/// Section Widget
Widget _buildPaymentSummaryColumn(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 15.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_payment_summary".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("msg_total_before_discount".tr, style: CustomTextStyles.titleSmallPoppinsBlack90001)), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_50_50".tr, style: CustomTextStyles.titleSmallPoppinsBlack90001))])), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 2.h, right: 11.h), child: Row(children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("msg_total_after_discount".tr, style: CustomTextStyles.titleSmallPoppinsBlack90001)), Container(width: 192.h, margin: EdgeInsets.only(left: 3.h, top: 2.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 3.v), child: Text("lbl_202".tr, style: CustomTextStyles.bodySmallPoppinsBlack90001)), Text("lbl_30_50".tr, style: CustomTextStyles.titleSmallPoppinsBlack90001)]))])), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(right: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_coupon_discount".tr, style: CustomTextStyles.titleSmallPoppinsBlack90001), Text("lbl_00_00".tr, style: CustomTextStyles.titleSmallPoppinsBlack90001)]))])); } 
/// Section Widget
Widget _buildProductCardList(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 18.h), child: BlocSelector<BrandInfotwoThirteenBloc, BrandInfotwoThirteenState, BrandInfotwoThirteenModel?>(selector: (state) => state.brandInfotwoThirteenModelObj, builder: (context, brandInfotwoThirteenModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: brandInfotwoThirteenModelObj?.productcardlist4ItemList.length ?? 0, itemBuilder: (context, index) {Productcardlist4ItemModel model = brandInfotwoThirteenModelObj?.productcardlist4ItemList[index] ?? Productcardlist4ItemModel(); return Productcardlist4ItemWidget(model);});}))); } 
/// Section Widget
Widget _buildCancelButton(BuildContext context) { return CustomOutlinedButton(width: 166.h, text: "lbl_cancel".tr, margin: EdgeInsets.only(left: 124.h, right: 123.h, bottom: 40.v), buttonStyle: CustomButtonStyles.outlinePrimaryTL17, onPressed: () {onTapCancelButton(context);}); } 
/// Common widget
Widget _buildTelevisionColumn(BuildContext context, {required String televisionImage, required String confirmedText, }) { return Column(children: [CustomImageView(imagePath: televisionImage, height: 9.v, width: 87.h), SizedBox(height: 6.v), Text(confirmedText, style: CustomTextStyles.labelSmallOrangeA200.copyWith(color: appTheme.orangeA200))]); } 
/// Navigates to the invoicethreeOneScreen when the action is triggered.
onTapImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.invoicethreeOneScreen, ); } 
/// Navigates to the homeFourContainerScreen when the action is triggered.
onTapCancelButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeFourContainerScreen, ); } 
 }
