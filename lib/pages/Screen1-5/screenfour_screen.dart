import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_outlined_button.dart';
import 'package:hieu_s_application4/widgets/custom_text_form_field.dart';

class ScreenfourScreen extends StatelessWidget {
  ScreenfourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 61.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 55.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome back",
                      style: CustomTextStyles.headlineLargePrimary,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Container(
                    width: 355.h,
                    margin: EdgeInsets.only(right: 10.h),
                    child: Text(
                      "Let’s get back to growing your Aepod plants, shall we?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.44,
                      ),
                    ),
                  ),
                  SizedBox(height: 58.v),
                  _buildEmail(context),
                  SizedBox(height: 45.v),
                  _buildFour(context),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.75,
                      child: Text(
                        "Forgot your password?",
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Or Login using social media",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildNinetyTwo(context),
                  Spacer(),
                  _buildLogin(context),
                  SizedBox(height: 33.v),
                  Text(
                    "New here? Register",
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email Address",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.only(
          right: 12.h,
          bottom: 14.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgFramePrimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 38.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return SizedBox(
      height: 38.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.topRight,
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
                    "Password",
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
              imagePath: ImageConstant.imgFramePrimary24x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
            ),
          ),
          Opacity(
            opacity: 0.75,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame24x24,
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
  Widget _buildFacebook(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Facebook",
        margin: EdgeInsets.only(right: 8.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame1,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Google",
        margin: EdgeInsets.only(left: 8.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame2,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFacebook(context),
        _buildGoogle(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
    );
  }
}
