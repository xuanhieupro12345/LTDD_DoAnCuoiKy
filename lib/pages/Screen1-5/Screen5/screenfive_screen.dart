import 'widgets/screenfivelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';

class ScreenfiveScreen extends StatelessWidget {
  const ScreenfiveScreen({Key? key})
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
              left: 20.h,
              top: 120.v,
              right: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Let’s set you up",
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                ),
                SizedBox(height: 17.v),
                Container(
                  width: 330.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    right: 39.h,
                  ),
                  child: Text(
                    "Sync your Aepods with the app for added functionality",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.44,
                    ),
                  ),
                ),
                SizedBox(height: 37.v),
                _buildScreenFiveList(context),
                SizedBox(height: 12.v),
                _buildSevenRow(context),
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
  Widget _buildScreenFiveList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 12.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return ScreenfivelistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildSevenRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Sync new Aepod",
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
          Opacity(
            opacity: 0.75,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame5,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(right: 4.h),
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
