import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';

class ScreenthreeScreen extends StatelessWidget {
  const ScreenthreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.greenA700,
                appTheme.teal700,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 24.h,
              top: 117.v,
              right: 24.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300.h,
                  margin: EdgeInsets.only(right: 65.h),
                  child: Text(
                    "Let’s personalize your experience",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                ),
                SizedBox(height: 15.v),
                Container(
                  width: 351.h,
                  margin: EdgeInsets.only(right: 14.h),
                  child: Text(
                    "What can we call you? Could be your name, a nickname or something funny ☺.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.44,
                    ),
                  ),
                ),
                SizedBox(height: 58.v),
                _buildPersonalizationSection(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinueButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonalizationSection(BuildContext context) {
    return SizedBox(
      height: 38.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 36.h),
                  child: Text(
                    "Name",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 13.v),
                Opacity(
                  opacity: 0.5,
                  child: Divider(
                    color: theme.colorScheme.primary.withOpacity(0.53),
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.75,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame3,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topLeft,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 56.v,
      ),
    );
  }
}
