import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 177.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage4,
            height: 177.adaptSize,
            width: 177.adaptSize,
            radius: BorderRadius.vertical(
              top: Radius.circular(12.h),
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "Oregano",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 2.v),
          Text(
            "25",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
