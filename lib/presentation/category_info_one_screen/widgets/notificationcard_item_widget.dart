import '../models/notificationcard_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationcardItemWidget extends StatelessWidget {
  NotificationcardItemWidget(
    this.notificationcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationcardItemModel notificationcardItemModelObj;

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
            imagePath: notificationcardItemModelObj?.televisionImage,
            height: 16.v,
            width: 33.h,
            margin: EdgeInsets.only(
              top: 21.v,
              bottom: 20.v,
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 184.h,
                child: Text(
                  notificationcardItemModelObj.subjectText!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPoppinsBlack9000112_1,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                notificationcardItemModelObj.timeText!,
                style: CustomTextStyles.bodySmallPoppinsGray6007f,
              ),
            ],
          ),
          Container(
            width: 36.h,
            margin: EdgeInsets.fromLTRB(19.h, 11.v, 8.h, 8.v),
            child: Text(
              notificationcardItemModelObj.pointText!,
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
