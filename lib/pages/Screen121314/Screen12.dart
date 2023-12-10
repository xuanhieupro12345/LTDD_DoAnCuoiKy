import '../Screen121314/widgets/productlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/pages/Screen121314/screentwelve_page/screentwelve_page.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_icon_button.dart';

class ScreentwelveTabContainerScreen extends StatefulWidget {
  const ScreentwelveTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScreentwelveTabContainerScreenState createState() =>
      ScreentwelveTabContainerScreenState();
}

class ScreentwelveTabContainerScreenState
    extends State<ScreentwelveTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 64.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildGoBackButton(context),
                      SizedBox(height: 37.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Shop 🛒",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Popular items",
                          style:
                              CustomTextStyles.titleLargeOnSecondaryContainer,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      _buildProductList(context),
                      SizedBox(height: 48.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Our nursery",
                          style:
                              CustomTextStyles.titleLargeOnSecondaryContainer,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      _buildTabview(context),
                      _buildTabBarView(context),
                    ],
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
  Widget _buildGoBackButton(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
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
            CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.outlineTeal,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame13,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20.h),
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
          return ProductlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 42.v,
      width: 390.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Proxima Nova Alt',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: theme.colorScheme.secondaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Proxima Nova Alt',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(
            21.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "All",
            ),
          ),
          Tab(
            child: Text(
              "Ornamentals",
            ),
          ),
          Tab(
            child: Text(
              "Supplements",
            ),
          ),
          Tab(
            child: Text(
              "Herbs",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 265.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ScreentwelvePage(),
          ScreentwelvePage(),
          ScreentwelvePage(),
          ScreentwelvePage(),
        ],
      ),
    );
  }
}
