import '../models/productcard_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:dondondony38_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineGray6003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Container(
                  width: 38.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Text(
                    productcardItemModelObj.discountText!,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: productcardItemModelObj?.favoriteImage,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 88.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          CustomImageView(
            imagePath: productcardItemModelObj?.productImage,
            height: 97.v,
            width: 100.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 18.h),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              productcardItemModelObj.productName!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              productcardItemModelObj.companyName!,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: productcardItemModelObj?.ratingImage,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    productcardItemModelObj.ratingText!,
                    style: CustomTextStyles.labelMediumBlack900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    productcardItemModelObj.reviewText!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Text(
                  productcardItemModelObj.priceText1!,
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 4.v,
                  ),
                  child: Text(
                    productcardItemModelObj.priceText2!,
                    style: CustomTextStyles.bodySmallBlack900.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          CustomElevatedButton(
            width: 133.h,
            text: "lbl_add_to_cart".tr,
            rightIcon: Container(
              margin: EdgeInsets.only(left: 7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCart,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            buttonTextStyle: CustomTextStyles.labelLargeWhiteA700_1,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
