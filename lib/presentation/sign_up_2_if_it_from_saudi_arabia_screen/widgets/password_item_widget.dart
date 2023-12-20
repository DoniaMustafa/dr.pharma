import '../models/password_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordItemWidget extends StatelessWidget {
  PasswordItemWidget(
    this.passwordItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PasswordItemModel passwordItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.outlineBlueGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: passwordItemModelObj?.confirmPasswordImage,
              height: 21.v,
              width: 16.h,
              margin: EdgeInsets.only(left: 9.h),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Text(
                passwordItemModelObj.confirmPasswordText!,
                style: CustomTextStyles.bodyMediumAlmaraiGray700,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: passwordItemModelObj?.showPasswordImage,
              height: 21.adaptSize,
              width: 21.adaptSize,
            ),
          ],
        ),
      ),
    );
  }
}
