import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class FortyfourItemWidget extends StatelessWidget {
  const FortyfourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle28,
        height: 216.v,
        width: 366.h,
        radius: BorderRadius.circular(
          16.h,
        ),
        margin: EdgeInsets.only(
          left: 378.h,
          right: 24.h,
        ),
      ),
    );
  }
}
