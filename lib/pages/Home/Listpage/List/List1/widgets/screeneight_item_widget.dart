import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HerblistsectionItemWidget extends StatelessWidget {
  const HerblistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 69.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Basil",
                        style: theme.textTheme.titleLarge,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameTeal70020x20,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Herb",
                  style: CustomTextStyles.bodyMediumOnPrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              right: 8.h,
              bottom: 16.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Harvest in 3 days",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "Planted 8 days ago ",
                  style: CustomTextStyles.bodyMediumOnPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
