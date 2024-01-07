import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class List3 extends StatefulWidget {
  const List3({Key? key})
      : super(
          key: key,
        );

  @override
  List3State createState() => List3State();
}

class List3State extends State<List3>
    with AutomaticKeepAliveClientMixin<List3> {
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
              SizedBox(height: 24),
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
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 20,
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
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: _buildFortySeven(
                    context,
                    userImage: ImageConstant.imgFrame11,
                    plantlightSettings: "Plantlight Settings",
                    currentlyOn: "Currently ON",
                  ),
                ),
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: _buildFifty(
                    context,
                    userImage: ImageConstant.imgFrame7,
                    userMessage: "Cycle Settings",
                  ),
                ),
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 16),
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
          SizedBox(height: 90),
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
          height: 24,
          width: 24,
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
          height: 24,
          width: 24,
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
          height: 24,
          width: 24,
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
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}
