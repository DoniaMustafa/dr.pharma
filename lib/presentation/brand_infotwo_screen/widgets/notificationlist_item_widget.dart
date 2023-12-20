import '../models/notificationlist_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(
    this.notificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: notificationlistItemModelObj?.imageClass,
            height: 16.v,
            width: 33.h,
            margin: EdgeInsets.only(
              top: 21.v,
              bottom: 20.v,
            ),
          ),
          Spacer(
            flex: 39,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 147.h,
                child: Text(
                  notificationlistItemModelObj.text1!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPoppinsBlack9000112_1,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                notificationlistItemModelObj.text2!,
                style: CustomTextStyles.bodySmallPoppinsGray6007f,
              ),
            ],
          ),
          Spacer(
            flex: 60,
          ),
          Container(
            width: 36.h,
            margin: EdgeInsets.only(
              top: 11.v,
              right: 8.h,
              bottom: 8.v,
            ),
            child: Text(
              notificationlistItemModelObj.text3!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargePoppinsGreen400Medium,
            ),
          ),
        ],
      ),
    );
  }
}
