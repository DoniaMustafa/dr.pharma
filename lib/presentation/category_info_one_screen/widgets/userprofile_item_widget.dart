import '../models/userprofile_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapTxtEgpText,
    this.onTapTxtOneThousandText,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  VoidCallback? onTapTxtEgpText;

  VoidCallback? onTapTxtOneThousandText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.v,
      width: 61.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              userprofileItemModelObj.twentyText!,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtEgpText!.call();
                    },
                    child: Text(
                      userprofileItemModelObj.egpText!,
                      style: CustomTextStyles.bodySmallPoppins,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtOneThousandText!.call();
                  },
                  child: Text(
                    userprofileItemModelObj.oneThousandText!,
                    style: CustomTextStyles.labelLargePoppinsRed700,
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
