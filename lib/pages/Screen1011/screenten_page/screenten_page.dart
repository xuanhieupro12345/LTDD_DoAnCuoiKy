import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ScreentenPage extends StatefulWidget {
  const ScreentenPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScreentenPageState createState() => ScreentenPageState();
}

class ScreentenPageState extends State<ScreentenPage>
    with AutomaticKeepAliveClientMixin<ScreentenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      _buildSortByRow(context),
                      SizedBox(height: 16.v),
                      SizedBox(
                        height: 453.v,
                        width: 374.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            _buildRecentOrdersColumn(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 395.v,
                                right: 8.h,
                              ),
                              child: _buildThirtyFive(
                                context,
                                oreganoReadyFor: "Oregano ready for harvest",
                                duration: "2 days ago",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSortByRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 4.v,
            ),
            child: Text(
              "Sort by:",
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 4.v,
            ),
            child: Text(
              "Urgency: High to Low",
              style: CustomTextStyles.titleMediumTeal700_2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup32,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrdersColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 165.v,
              width: 358.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16.h,
                      bottom: 10.v,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRightTeal700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 52.v,
                      width: 358.h,
                      decoration: BoxDecoration(
                        color: appTheme.teal700,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(4.h),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14.v),
                      decoration: AppDecoration.outlineOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.h),
                            child: _buildFiftyThree(
                              context,
                              userImage: ImageConstant.imgFramePrimary20x20,
                              newcyclestarted: "Water Refill Due",
                              distance: "5hr ago",
                            ),
                          ),
                          SizedBox(height: 32.v),
                          Container(
                            width: 300.h,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              right: 41.h,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "This Aepod’s ",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                  TextSpan(
                                    text: "water level",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                  TextSpan(
                                    text: " is ",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                  TextSpan(
                                    text: "low (10%), ",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                  TextSpan(
                                    text: "you should ",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                  TextSpan(
                                    text: "refill",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                  TextSpan(
                                    text: " it.",
                                    style: CustomTextStyles
                                        .bodyMediumOnSecondaryContainer,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Divider(),
                          SizedBox(height: 15.v),
                          Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "Refill Now",
                              style: CustomTextStyles.titleMediumTeal700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5.v),
                  _buildFiftyThree(
                    context,
                    userImage: ImageConstant.imgFrameOnprimary20x20,
                    newcyclestarted: "New cycle started",
                    distance: "5m",
                  ),
                  SizedBox(height: 19.v),
                  Container(
                    width: 286.h,
                    margin: EdgeInsets.only(right: 40.h),
                    child: Text(
                      "You just started a new cycle, time to grow new plants 😊 ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumOnSecondaryContainer_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.v),
            _buildThirtyFive(
              context,
              oreganoReadyFor: "Oregano ready for harvest",
              duration: "2 days ago",
            ),
            SizedBox(height: 35.v),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFiftyThree(
    BuildContext context, {
    required String userImage,
    required String newcyclestarted,
    required String distance,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 2.v,
          ),
          child: Text(
            newcyclestarted,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            distance,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer_3.copyWith(
              color: theme.colorScheme.onSecondaryContainer.withOpacity(0.75),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThirtyFive(
    BuildContext context, {
    required String oreganoReadyFor,
    required String duration,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame20x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              oreganoReadyFor,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
          Spacer(),
          Text(
            duration,
            textAlign: TextAlign.right,
            style: CustomTextStyles.bodyMediumOnSecondaryContainer_3.copyWith(
              color: theme.colorScheme.onSecondaryContainer.withOpacity(0.75),
            ),
          ),
        ],
      ),
    );
  }
}
