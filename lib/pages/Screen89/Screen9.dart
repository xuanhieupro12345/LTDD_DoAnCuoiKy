import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ScreennineBottomsheet extends StatelessWidget {
  const ScreennineBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 16.v),
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
          _buildRowNinety(context),
          SizedBox(height: 13.v),
          _buildRowNinetyOne(context),
          SizedBox(height: 3.v),
          Text(
            "Herb",
            style: CustomTextStyles.titleLargeOnPrimary,
          ),
          SizedBox(height: 16.v),
          Text(
            "Harvest in 3 days",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 8.v),
          Text(
            "Planted 8 days ago ",
            style: CustomTextStyles.titleMediumOnPrimary_1,
          ),
          SizedBox(height: 22.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameSecondarycontainer24x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 10.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "23°c",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameSecondarycontainer16x16,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: SizedBox(
                    height: 40.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame6,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 10.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "85%",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameSecondarycontainer16x16,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          Text(
            " See growing tips",
            style: CustomTextStyles.titleMediumTeal700,
          ),
          SizedBox(height: 45.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowNinety(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 96.v,
            width: 67.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 120.adaptSize,
            width: 120.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage196x67,
            height: 96.v,
            width: 67.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowNinetyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameOnprimary40x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "Lemon Balm",
              style: theme.textTheme.headlineLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame40x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(top: 3.v),
          ),
        ],
      ),
    );
  }
}
