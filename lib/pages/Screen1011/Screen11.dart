import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ScreenelevenPage extends StatefulWidget {
  const ScreenelevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScreenelevenPageState createState() => ScreenelevenPageState();
}

class ScreenelevenPageState extends State<ScreenelevenPage>
    with AutomaticKeepAliveClientMixin<ScreenelevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildArrowDown(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.outlineTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: _buildFortySeven(
                    context,
                    userImage: ImageConstant.imgArrowDown,
                    plantlightSettings: "Connectivity",
                    currentlyOn: "Connected via Wifi",
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: _buildFortySeven(
                    context,
                    userImage: ImageConstant.imgFrame11,
                    plantlightSettings: "Plantlight Settings",
                    currentlyOn: "Currently ON",
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: _buildFifty(
                    context,
                    userImage: ImageConstant.imgFrame7,
                    userMessage: "Cycle Settings",
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: _buildFifty(
                    context,
                    userImage: ImageConstant.imgFrame12,
                    userMessage: "Aepod Sync Settings",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 181.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup51,
            height: 20.v,
            width: 75.h,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFortySeven(
    BuildContext context, {
    required String userImage,
    required String plantlightSettings,
    required String currentlyOn,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 4.v,
          ),
          child: Text(
            plantlightSettings,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 2.v,
          ),
          child: Text(
            currentlyOn,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.75),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 7.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFifty(
    BuildContext context, {
    required String userImage,
    required String userMessage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 4.v,
          ),
          child: Text(
            userMessage,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
