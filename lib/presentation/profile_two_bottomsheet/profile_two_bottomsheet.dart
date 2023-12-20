import 'bloc/profile_two_bloc.dart';
import 'models/profile_two_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:dondondony38_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoBottomsheet extends StatelessWidget {
  const ProfileTwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTwoBloc>(
      create: (context) => ProfileTwoBloc(ProfileTwoState(
        profileTwoModelObj: ProfileTwoModel(),
      ))
        ..add(ProfileTwoInitialEvent()),
      child: ProfileTwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 413.h,
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 7.v,
            width: 115.h,
            decoration: BoxDecoration(
              color: appTheme.gray5005e,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 77.h),
              child: Text(
                "lbl_select_language".tr,
                style: CustomTextStyles.titleSmallPoppinsBlack90001SemiBold_3,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          _buildLanguageForm(context),
          SizedBox(height: 53.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Column(
        children: [
          BlocSelector<ProfileTwoBloc, ProfileTwoState, TextEditingController?>(
            selector: (state) => state.languageController,
            builder: (context, languageController) {
              return CustomTextFormField(
                controller: languageController,
                hintText: "lbl_arabic".tr,
                hintStyle: CustomTextStyles.titleSmallPoppinsBlack90001Medium_4,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 11.v,
                ),
              );
            },
          ),
          SizedBox(height: 12.v),
          BlocSelector<ProfileTwoBloc, ProfileTwoState, TextEditingController?>(
            selector: (state) => state.languageController1,
            builder: (context, languageController1) {
              return CustomTextFormField(
                controller: languageController1,
                hintText: "lbl_english".tr,
                hintStyle: CustomTextStyles.titleSmallPoppinsBlack90001Medium_4,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 11.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
