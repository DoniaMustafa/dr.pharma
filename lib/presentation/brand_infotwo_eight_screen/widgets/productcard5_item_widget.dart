import '../models/productcard5_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard5ItemWidget extends StatelessWidget {
  Productcard5ItemWidget(
    this.productcard5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard5ItemModel productcard5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray6003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      width: 174.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38.h,
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              productcard5ItemModelObj.discount!,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 23.v),
          CustomImageView(
            imagePath: ImageConstant.imgDownload7RemovebgPreview,
            height: 97.v,
            width: 100.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 17.h),
          ),
          SizedBox(height: 8.v),
          Text(
            productcard5ItemModelObj.title!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          Text(
            productcard5ItemModelObj.description!,
            style: CustomTextStyles.bodySmallPoppinsBlack90001_1,
          ),
          SizedBox(height: 4.v),
          Text(
            productcard5ItemModelObj.quantity!,
            style: CustomTextStyles.labelMediumPoppinsBlack90001,
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  productcard5ItemModelObj.price!,
                  style: CustomTextStyles.titleSmallBlack90001,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  productcard5ItemModelObj.status!,
                  style: CustomTextStyles.labelLargePoppinsRed700Medium_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
