import 'bloc/sign_in_bloc.dart';import 'models/sign_in_model.dart';import 'package:dondondony38_s_application1/core/app_export.dart';import 'package:dondondony38_s_application1/core/utils/validation_functions.dart';import 'package:dondondony38_s_application1/widgets/custom_icon_button.dart';import 'package:dondondony38_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {SignInScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<SignInBloc>(create: (context) => SignInBloc(SignInState(signInModelObj: SignInModel()))..add(SignInInitialEvent()), child: SignInScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 34.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Container(width: 192.h, margin: EdgeInsets.only(left: 4.h), child: Text("lbl_welcome_back".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.displaySmall39.copyWith(height: 1.19)))), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 3.h), child: BlocSelector<SignInBloc, SignInState, TextEditingController?>(selector: (state) => state.userNameController, builder: (context, userNameController) {return CustomTextFormField(controller: userNameController, hintText: "msg_username_or_email".tr, hintStyle: CustomTextStyles.bodyMediumGray700, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(17.h, 16.v, 5.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgUserGray500, height: 25.adaptSize, width: 25.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 58.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});})), SizedBox(height: 32.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 3.h), child: BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.bodyMediumAlmaraiGray700, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(21.h, 18.v, 10.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 21.v, width: 16.h)), prefixConstraints: BoxConstraints(maxHeight: 58.v), suffix: InkWell(onTap: () {context.read<SignInBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 11.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 21.adaptSize, width: 21.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 58.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.symmetric(vertical: 21.v));})), SizedBox(height: 14.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 2.h), child: Text("msg_forgot_password".tr, style: CustomTextStyles.bodySmallPoppinsBluegray700))), SizedBox(height: 41.v), _buildSignInRow(context), SizedBox(height: 89.v), Text("lbl_or_login_with".tr, style: CustomTextStyles.bodySmallPoppinsRed700), SizedBox(height: 9.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.outlineBlueGrayF, child: CustomImageView(imagePath: ImageConstant.imgGoogle1)), Padding(padding: EdgeInsets.only(left: 42.h), child: CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.outlineBlueGrayF, child: CustomImageView(imagePath: ImageConstant.imgApple1)))]), SizedBox(height: 20.v), GestureDetector(onTap: () {onTapTxtYoudonthaveaccount(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_you_don_t_have_account2".tr, style: CustomTextStyles.bodyMediumJFFlatBluegray600), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.bodyMediumJFFlatRed700.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildSignInRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 10.v, bottom: 5.v), child: Text("lbl_sign_in".tr, style: theme.textTheme.headlineMedium)), CustomIconButton(height: 55.adaptSize, width: 55.adaptSize, padding: EdgeInsets.all(19.h), onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))])); } 
/// Navigates to the homeFourContainerScreen when the action is triggered.
onTapBtnArrowLeft(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeFourContainerScreen, ); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtYoudonthaveaccount(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
 }
