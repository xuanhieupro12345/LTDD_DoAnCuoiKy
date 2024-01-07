import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class Screen7 extends StatelessWidget {
  Screen7({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 8.v,
            width: 48.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary.withOpacity(0.25),
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          SizedBox(height: 40.v),
          Text(
            "Light Status",
            style: CustomTextStyles.titleLargeOnSecondaryContainer,
          ),
          SizedBox(height: 30.v),
          Divider(),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    "Lights",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                CustomSwitch(
                  value: isSelectedSwitch,
                  onChange: (value) {
                    isSelectedSwitch = value;
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Divider(),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Automatic Settings",
                  style: theme.textTheme.titleLarge,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "Off at Sunset",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 7.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Divider(),
          SizedBox(height: 33.v),
          Text(
            "Go to Settings",
            style: CustomTextStyles.titleMediumTeal700,
          ),
          SizedBox(height: 45.v),
        ],
      ),
    );
  }
}
