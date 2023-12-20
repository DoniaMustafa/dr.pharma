import '../models/fiftyone_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftyoneItemWidget extends StatelessWidget {
  FiftyoneItemWidget(
    this.fiftyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftyoneItemModel fiftyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 59.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: fiftyoneItemModelObj?.labImage,
            height: 49.adaptSize,
            width: 49.adaptSize,
          ),
          SizedBox(height: 14.v),
          Text(
            fiftyoneItemModelObj.labText!,
            style: CustomTextStyles.titleSmallAlmaraiBlack90001,
          ),
        ],
      ),
    );
  }
}
