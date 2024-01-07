import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrameSecondarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 17.v),
          Text(
            "Humidity",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 9.v),
          Text(
            "74%",
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
