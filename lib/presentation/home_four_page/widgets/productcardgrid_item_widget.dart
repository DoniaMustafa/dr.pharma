import '../models/productcardgrid_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:dondondony38_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardgridItemWidget extends StatelessWidget {
  ProductcardgridItemWidget(
    this.productcardgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardgridItemModel productcardgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.outlineGray6003f01.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 38.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillRed.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Text(
                              productcardgridItemModelObj.widget!,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFavorite,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 88.h),
                          ),
                        ],
                      ),
                      SizedBox(height: 22.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgDownload7RemovebgPreview,
                        height: 97.v,
                        width: 100.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 18.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    productcardgridItemModelObj.productName!,
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    productcardgridItemModelObj.productDescription!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          productcardgridItemModelObj.ratingValue!,
                          style: CustomTextStyles.labelMediumBlack900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          productcardgridItemModelObj.reviewCount!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    children: [
                      Text(
                        productcardgridItemModelObj.price1!,
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 4.v,
                        ),
                        child: Text(
                          productcardgridItemModelObj.price2!,
                          style: CustomTextStyles.bodySmallBlack900.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
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
            ),
          ],
        ),
      ),
    );
  }
}
