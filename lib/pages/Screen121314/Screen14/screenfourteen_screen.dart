import '../Screen14/widgets/screenfourteensection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';

class ScreenfourteenScreen extends StatelessWidget {
  const ScreenfourteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 64.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLemonBalmSection(context),
                        SizedBox(height: 28.v),
                        _buildAddToCartSection(context),
                        SizedBox(height: 32.v),
                        Text(
                          "Description",
                          style: CustomTextStyles.titleMediumOnPrimary_1,
                        ),
                        SizedBox(height: 19.v),
                        Container(
                          width: 362.h,
                          margin: EdgeInsets.only(right: 27.h),
                          child: Text(
                            "Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, branching, sparsely-haired stalk. The opposed leaves, whose stalked stems vary in length, are broadly oval to heart-shaped and have an irregular crenate (rounded teeth) or serrate (small, sharp teeth) edge.",
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .bodyMediumOnSecondaryContainer_1
                                .copyWith(
                              height: 1.71,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Text(
                          "Growing information",
                          style: CustomTextStyles.titleMediumOnPrimary_1,
                        ),
                        SizedBox(height: 14.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgFrameSecondarycontainer24x24,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Container(
                              height: 18.v,
                              width: 185.h,
                              margin: EdgeInsets.only(
                                left: 12.h,
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Room temparature is fine",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Room temparature is fine",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame6,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "Regular watering works best",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.v),
                        _buildTypicallyReadySection(context),
                        SizedBox(height: 31.v),
                        Text(
                          "Other Herbs",
                          style: CustomTextStyles.titleMediumOnPrimary_1,
                        ),
                        SizedBox(height: 24.v),
                        _buildScreenFourteenSection(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLemonBalmSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle57,
                  height: 16.v,
                  width: 64.h,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 53.v),
                Text(
                  "Lemon Balm",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 5.v),
                Row(
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
                SizedBox(height: 15.v),
                Text(
                  "121 people are growing this 🌿",
                  style: CustomTextStyles.bodyMediumOnSecondaryContainer_3,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 120.adaptSize,
            width: 120.adaptSize,
            margin: EdgeInsets.only(top: 58.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Row(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTypicallyReadySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 54.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame7,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
            ),
            child: Text(
              "Typically ready for harvest after 4 weeks",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScreenFourteenSection(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ScreenfourteensectionItemWidget();
        },
      ),
    );
  }
}
