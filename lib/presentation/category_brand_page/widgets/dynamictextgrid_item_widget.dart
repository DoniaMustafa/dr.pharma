import '../models/dynamictextgrid_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamictextgridItemWidget extends StatelessWidget {
  DynamictextgridItemWidget(
    this.dynamictextgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamictextgridItemModel dynamictextgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: dynamictextgridItemModelObj?.dynamicImage,
          height: 85.adaptSize,
          width: 85.adaptSize,
          radius: BorderRadius.circular(
            11.h,
          ),
        ),
        Text(
          dynamictextgridItemModelObj.dynamicText!,
          style: CustomTextStyles.titleSmallGray90001,
        ),
      ],
    );
  }
}
