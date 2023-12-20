import 'bloc/profile_info_one_bloc.dart';import 'models/profile_info_one_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:dondondony38_s_application1/core/app_export.dart';import 'package:dondondony38_s_application1/core/utils/validation_functions.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:dondondony38_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:dondondony38_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:dondondony38_s_application1/widgets/custom_icon_button.dart';import 'package:dondondony38_s_application1/widgets/custom_phone_number.dart';import 'package:dondondony38_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:dondondony38_s_application1/presentation/sign_up_two_bottomsheet/sign_up_two_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class ProfileInfoOneScreen extends StatelessWidget {ProfileInfoOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<ProfileInfoOneBloc>(create: (context) => ProfileInfoOneBloc(ProfileInfoOneState(profileInfoOneModelObj: ProfileInfoOneModel()))..add(ProfileInfoOneInitialEvent()), child: ProfileInfoOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 21.v), child: Column(children: [SizedBox(height: 86.v, width: 82.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topCenter, child: Container(height: 82.adaptSize, width: 82.adaptSize, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v), decoration: AppDecoration.fillOnSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.circleBorder41), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 42.v, width: 33.h, alignment: Alignment.center))), Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(left: 3.h, top: 3.v, right: 3.h), padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 21.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder37), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl_bd".tr, style: CustomTextStyles.headlineSmallUrbanist)]))), Padding(padding: EdgeInsets.only(right: 3.h), child: CustomIconButton(height: 23.v, width: 24.h, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.fillWhiteATL11, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgPhCameraFill)))])), SizedBox(height: 70.v), Padding(padding: EdgeInsets.only(left: 7.h), child: BlocSelector<ProfileInfoOneBloc, ProfileInfoOneState, TextEditingController?>(selector: (state) => state.hassnaaAdelController, builder: (context, hassnaaAdelController) {return CustomTextFormField(controller: hassnaaAdelController, hintText: "lbl_hassnaa_adel".tr, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v), child: CustomImageView(imagePath: ImageConstant.imgUserGray500, height: 25.adaptSize, width: 25.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 58.v));})), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 7.h), child: BlocSelector<ProfileInfoOneBloc, ProfileInfoOneState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "msg_7assnaa3_gmail_com".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(17.h, 16.v, 17.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgBxlgmail, height: 21.v, width: 22.h)), prefixConstraints: BoxConstraints(maxHeight: 58.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});})), SizedBox(height: 38.v), Padding(padding: EdgeInsets.only(left: 7.h), child: BlocBuilder<ProfileInfoOneBloc, ProfileInfoOneState>(builder: (context, state) {return CustomPhoneNumber(country: state.selectedCountry ?? CountryPickerUtils.getCountryByPhoneCode('1'), controller: state.phoneNumberController, onTap: (Country value) {context.read<ProfileInfoOneBloc>().add(ChangeCountryEvent(value: value));});})), SizedBox(height: 39.v), _buildLocationRow(context), SizedBox(height: 88.v), _buildSaveChangeRow(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 22.v, bottom: 22.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_profile_info".tr)); } 
/// Section Widget
Widget _buildLocationRow(BuildContext context) { return Container(margin: EdgeInsets.only(left: 7.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v), decoration: AppDecoration.outlineBlueGrayF.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgLocationGray500, height: 21.v, width: 16.h, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 22.h, top: 3.v), child: Text("lbl_change_password".tr, style: theme.textTheme.bodyMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightGray500, height: 11.v, width: 5.h, margin: EdgeInsets.only(top: 6.v, bottom: 7.v))])); } 
/// Section Widget
Widget _buildSaveChangeRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 16.h, right: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 4.v), child: Text("lbl_save_change".tr, style: theme.textTheme.headlineMedium)), CustomIconButton(height: 55.adaptSize, width: 55.adaptSize, padding: EdgeInsets.all(18.h), onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimary))])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [SignUpTwoBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapBtnArrowLeft(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SignUpTwoBottomsheet.builder(context),isScrollControlled: true); } 
 }
