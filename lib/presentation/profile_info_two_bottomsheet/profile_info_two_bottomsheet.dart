import 'bloc/profile_info_two_bloc.dart';
import 'models/profile_info_two_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:dondondony38_s_application1/core/utils/validation_functions.dart';
import 'package:dondondony38_s_application1/widgets/custom_elevated_button.dart';
import 'package:dondondony38_s_application1/widgets/custom_outlined_button.dart';
import 'package:dondondony38_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileInfoTwoBottomsheet extends StatelessWidget {
  const ProfileInfoTwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileInfoTwoBloc>(
      create: (context) => ProfileInfoTwoBloc(ProfileInfoTwoState(
        profileInfoTwoModelObj: ProfileInfoTwoModel(),
      ))
        ..add(ProfileInfoTwoInitialEvent()),
      child: ProfileInfoTwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 7.v,
            width: 114.h,
            decoration: BoxDecoration(
              color: appTheme.gray5005e,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_reset_password".tr,
            style: CustomTextStyles.titleSmallPoppinsBlack90001_1,
          ),
          SizedBox(height: 36.v),
          _buildPassword(context),
          SizedBox(height: 24.v),
          _buildNewPassword(context),
          SizedBox(height: 23.v),
          _buildConfirmNewPassword(context),
          Spacer(),
          SizedBox(height: 87.v),
          _buildCancel(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 15.h,
      ),
      child: BlocBuilder<ProfileInfoTwoBloc, ProfileInfoTwoState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl_old_password".tr,
            hintStyle: CustomTextStyles.bodyMediumAlmaraiGray700,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 18.v, 9.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocationGray500,
                height: 21.v,
                width: 16.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 58.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<ProfileInfoTwoBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 11.h, 18.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEyeGray500,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 58.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 21.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 15.h,
      ),
      child: BlocBuilder<ProfileInfoTwoBloc, ProfileInfoTwoState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.newPasswordController,
            hintText: "lbl_new_password".tr,
            hintStyle: CustomTextStyles.bodyMediumAlmaraiGray700,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 18.v, 10.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocationGray500,
                height: 21.v,
                width: 16.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 58.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<ProfileInfoTwoBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 11.h, 18.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEyeGray500,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 58.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(vertical: 21.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 15.h,
      ),
      child: BlocBuilder<ProfileInfoTwoBloc, ProfileInfoTwoState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmNewPasswordController,
            hintText: "msg_confirm_new_password".tr,
            hintStyle: CustomTextStyles.bodyMediumAlmaraiGray700,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 18.v, 9.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLocationGray500,
                height: 21.v,
                width: 16.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 58.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<ProfileInfoTwoBloc>().add(
                    ChangePasswordVisibilityEvent2(
                        value: !state.isShowPassword2));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 11.h, 18.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEyeGray500,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 58.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword2,
            contentPadding: EdgeInsets.symmetric(vertical: 21.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(right: 15.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 45.v,
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 15.h),
        buttonStyle: CustomButtonStyles.fillOnError,
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCancelButton(context),
          _buildSaveButton(context),
        ],
      ),
    );
  }
}
