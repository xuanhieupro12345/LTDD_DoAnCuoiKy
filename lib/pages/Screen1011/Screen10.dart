import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/pages/Screen89/screeneight_page.dart';
import 'package:hieu_s_application4/pages/Screen1011/Screen11.dart';
import 'package:hieu_s_application4/pages/Screen1011/screenten_page/screenten_page.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_icon_button.dart';

class ScreentenTabContainerScreen extends StatefulWidget {
  const ScreentenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScreentenTabContainerScreenState createState() =>
      ScreentenTabContainerScreenState();
}

class ScreentenTabContainerScreenState
    extends State<ScreentenTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPlaylist(context),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "Charlie’s Garden",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "ID: 1344295024",
                        style:
                            CustomTextStyles.bodyMediumOnSecondaryContainer_2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildTabview(context),
                SizedBox(
                  height: 500.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ScreeneightPage(),
                      ScreentenPage(),
                      ScreenelevenPage(),
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
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
      height: 245.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle28245x414,
            height: 245.v,
            width: 414.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.h, 64.v, 24.h, 141.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    height: 40.v,
                    width: 121.h,
                    text: "Go back",
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameTeal700,
                        height: 24.v,
                        width: 13.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlineTeal,
                  ),
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameTeal70024x24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 374.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Proxima Nova Alt',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.teal700.withOpacity(0.5),
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Proxima Nova Alt',
          fontWeight: FontWeight.w700,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.teal700.withOpacity(0.12),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                8,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "PLANTS",
            ),
          ),
          Tab(
            child: Text(
              "LOG",
            ),
          ),
          Tab(
            child: Text(
              "SETTINGS",
            ),
          ),
        ],
      ),
    );
  }
}
