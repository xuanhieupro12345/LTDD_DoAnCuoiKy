import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class Screen13 extends StatelessWidget {
  const Screen13({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
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
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 120.adaptSize,
              width: 120.adaptSize,
            ),
            SizedBox(height: 13.v),
            Text(
              "Lemon Balm",
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: 9.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Herb",
                  style: CustomTextStyles.titleLargeOnPrimary,
                ),
                Container(
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 11.v,
                    bottom: 10.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "20",
                    style: CustomTextStyles.titleLargeTeal700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 26.v),
            SizedBox(
              width: 350.h,
              child: ReadMoreText(
                "Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, branching, sparsely-haired stalk.",
                trimLines: 2,
                colorClickableText: appTheme.teal700,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Read more",
                moreStyle:
                    CustomTextStyles.bodyMediumOnSecondaryContainer_3.copyWith(
                  height: 1.43,
                ),
                lessStyle:
                    CustomTextStyles.bodyMediumOnSecondaryContainer_3.copyWith(
                  height: 1.43,
                ),
              ),
            ),
            SizedBox(height: 31.v),
            _buildAddToCartSection(context),
            SizedBox(height: 40.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 52.v,
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineTeal700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame14,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Add to Cart",
            margin: EdgeInsets.only(left: 12.h),
            buttonStyle: CustomButtonStyles.outlineTealTL4,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          ),
        ),
      ],
    );
  }
}
