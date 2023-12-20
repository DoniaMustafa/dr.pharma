import '../models/userprofile1_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.onTapTxtSeeAll,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  VoidCallback? onTapTxtSeeAll;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.v,
      width: 338.h,
      margin: EdgeInsets.only(right: 7.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: userprofile1ItemModelObj?.gradient,
            height: 200.v,
            width: 338.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 19.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        onTapTxtSeeAll!.call();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Text(
                          userprofile1ItemModelObj.seeAll!,
                          style: CustomTextStyles
                              .titleSmallPoppinsBlack90001Medium_3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  SizedBox(
                    height: 41.v,
                    width: 151.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: userprofile1ItemModelObj?.rectangleImage,
                          height: 41.v,
                          width: 151.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              right: 9.h,
                            ),
                            child: Text(
                              userprofile1ItemModelObj.flashSaleText!,
                              style: CustomTextStyles.titleMediumWhiteA70016_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
