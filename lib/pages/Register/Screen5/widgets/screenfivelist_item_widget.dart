import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ScreenfivelistItemWidget extends StatelessWidget {
  const ScreenfivelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              children: [
                Text(
                  "Upstairs Pod",
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Spacer(),
                Opacity(
                  opacity: 0.75,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      "Synced",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.75,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame4,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Opacity(
            opacity: 0.75,
            child: Text(
              "ID: 1344295024",
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
