import '../screensix_page/widgets/fortyfour_item_widget.dart';
import '../screensix_page/widgets/grid_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:hieu_s_application4/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:hieu_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:hieu_s_application4/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 27.v),
          child: Column(
            children: [
              _buildSlider(context),
              SizedBox(height: 20.v),
              SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: appTheme.teal700,
                    dotColor: appTheme.teal700.withOpacity(0.15),
                    dotHeight: 6.v,
                    dotWidth: 16.h,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              _buildGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Hello, Isaac 🌿",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFrameTeal70040x40,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return SizedBox(
      height: 245.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 216.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return FortyfourItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 55.h,
                top: 160.v,
                right: 55.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.outlineTeal.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Charlie’s Garden",
                          style:
                              CustomTextStyles.titleLargeOnSecondaryContainer,
                        ),
                        SizedBox(height: 8.v),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "ID: 1344295024",
                            style: CustomTextStyles
                                .bodyMediumOnSecondaryContainer_2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 11.v,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
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
  Widget _buildGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 115.v,
          crossAxisCount: 3,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return GridItemWidget();
        },
      ),
    );
  }
}
