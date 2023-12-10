import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ScreeneightItemWidget extends StatelessWidget {
  const ScreeneightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 6.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        left: 4.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: Text(
                        "Harvest in 3 days",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Text(
                        "Herb",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "Planted 8 days ago ",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
