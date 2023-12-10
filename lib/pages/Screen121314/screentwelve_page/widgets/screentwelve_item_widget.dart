import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ScreentwelveItemWidget extends StatelessWidget {
  const ScreentwelveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18.v),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      width: 180.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage1177x177,
            height: 177.adaptSize,
            width: 177.adaptSize,
            radius: BorderRadius.vertical(
              top: Radius.circular(12.h),
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            "Basil",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 2.v),
          Text(
            "20",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
