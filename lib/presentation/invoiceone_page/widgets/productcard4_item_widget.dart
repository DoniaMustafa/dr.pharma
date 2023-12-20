import '../models/productcard4_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:dondondony38_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard4ItemWidget extends StatelessWidget {
  Productcard4ItemWidget(
    this.productcard4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard4ItemModel productcard4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray6003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDownload7RemovebgPreview,
            height: 80.adaptSize,
            width: 80.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Container(
            width: 225.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        productcard4ItemModelObj.productName!,
                        style: CustomTextStyles.labelLarge13,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        productcard4ItemModelObj.productDescription!,
                        style: CustomTextStyles.bodySmallBluegray400,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 122.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 36.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Text(
                                  productcard4ItemModelObj.ratingText!,
                                  style: CustomTextStyles.labelLargeBlack900,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            productcard4ItemModelObj.reviewCount!,
                            style: CustomTextStyles.bodySmallGray400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                        children: [
                          Text(
                            productcard4ItemModelObj.price1!,
                            style: CustomTextStyles.titleSmall15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              productcard4ItemModelObj.price2!,
                              style:
                                  CustomTextStyles.bodySmallBlack90011.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    children: [
                      CustomIconButton(
                        height: 24.v,
                        width: 29.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClock,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        productcard4ItemModelObj.quantity!,
                        style: CustomTextStyles.labelLargeAlmarai,
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 28.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.outlineRedA400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Text(
                            productcard4ItemModelObj.plusIcon!,
                            style: CustomTextStyles.titleMediumAlmaraiRedA400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
