import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_icon_button.dart';
import 'package:hieu_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Screen15 extends StatelessWidget {
  Screen15({Key? key})
      : super(
          key: key,
        );

  TextEditingController visittheAepodStoreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(
                height: 390,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Opacity(
                      opacity: 0.05,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEllipse1Stroke,
                        height: 197,
                        width: 177,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 240.v,
                        width: 207.h,
                        margin: EdgeInsets.only(bottom: 61.v),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Opacity(
                              opacity: 0.025,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgEllipse1Stroke240x207,
                                height: 240,
                                width: 207,
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 8.h),
                                child: Text(
                                  "Hey, Isaac 🌿",
                                  style: theme.textTheme.headlineLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.025,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEllipse1Stroke237x320,
                        height: 237,
                        width: 320,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 30),
                      ),
                    ),
                    _buildRecentOrders(context),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 24,
                        bottom: 135,
                      ),
                      child: CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              _buildSettings(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 12.v),
            SizedBox(
              height: 42.v,
              width: 358.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 358.h,
                    controller: visittheAepodStoreController,
                    hintText: "Visit the Aepod Store",
                    hintStyle: theme.textTheme.titleLarge!,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.bottomCenter,
                    prefix: Container(
                      margin: EdgeInsets.only(
                        left: 6.h,
                        right: 12.h,
                        bottom: 14.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrame15,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 38.v,
                    ),
                    borderDecoration:
                        TextFormFieldStyleHelper.underLineOnPrimary,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              width: 314.h,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 35.h,
              ),
              child: Text(
                "Buy attachments and supplements for your Aepod. Orders typically arrive in 3 working days",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    CustomTextStyles.bodyMediumOnSecondaryContainer_1.copyWith(
                  height: 1.71,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
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
              currency: "Language",
              price: "English",
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
              currency: "Currency",
              price: "USD",
            ),
          ),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: _buildFortySeven(
              context,
              userImage: ImageConstant.imgFrameSecondarycontainer24x24,
              currency: "Temperature Unit",
              price: "Celsius",
            ),
          ),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame12,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Sync Settings",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFortySeven(
    BuildContext context, {
    required String userImage,
    required String currency,
    required String price,
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
            currency,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: Text(
            price,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.75),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 8.h),
        ),
      ],
    );
  }
}
