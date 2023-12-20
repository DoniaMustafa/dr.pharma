import '../models/productcardlist4_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcardlist4ItemWidget extends StatelessWidget {
  Productcardlist4ItemWidget(
    this.productcardlist4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardlist4ItemModel productcardlist4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
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
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productcardlist4ItemModelObj.productName!,
                      style: CustomTextStyles.labelLarge13,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productcardlist4ItemModelObj.companyName!,
                      style: CustomTextStyles.bodySmallBluegray400,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 122.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Text(
                          productcardlist4ItemModelObj.rating!,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                        Text(
                          productcardlist4ItemModelObj.reviewCount!,
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
                          productcardlist4ItemModelObj.price1!,
                          style: CustomTextStyles.titleSmall15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            productcardlist4ItemModelObj.price2!,
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
            ),
            Spacer(),
            Container(
              width: 43.h,
              margin: EdgeInsets.only(
                top: 26.v,
                right: 17.h,
                bottom: 23.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_quantity".tr,
                      style: CustomTextStyles.labelMediumPoppinsBlack90001Medium
                          .copyWith(
                        height: 1.85,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_5".tr,
                      style: CustomTextStyles.labelMediumPoppinsRed700,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
