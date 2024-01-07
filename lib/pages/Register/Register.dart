import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/pages/Register/InputName.dart';
import 'package:hieu_s_application4/pages/Register/Login.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_outlined_button.dart';
import 'package:hieu_s_application4/widgets/custom_text_form_field.dart';

class Register extends StatelessWidget {
  Register({Key? key})
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
                horizontal: 24.h,
                vertical: 61.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 58.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Register on Aepod",
                      style: CustomTextStyles.headlineLargePrimary,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 340.h,
                      margin: EdgeInsets.only(right: 25.h),
                      child: Text(
                        "Create an Aepod account, We can’t wait to have you.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          height: 1.44,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 58.v),
                  _buildEmail(context),
                  SizedBox(height: 45.v),
                  _buildFour(context),
                  SizedBox(height: 52.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Or Register using social media",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildFacebook1(context),
                  Spacer(),
                  // _buildRegister(context),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              InputName(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 135, top: 12),
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 33.v),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Login(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Already have an account? Login",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ),
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
      prefix: Container(
        margin: EdgeInsets.only(
          right: 12,
          bottom: 14,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgFramePrimary,
          height: 24,
          width: 24,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 38,
      ),
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return CustomTextFormField(
      hintText: "Password",
      obscureText: true,
      prefix: Container(
        margin: EdgeInsets.only(
          right: 12,
          bottom: 14,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrame24x24,
          height: 24,
          width: 24,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 38,
      ),
      textStyle: TextStyle(
        color: Colors.white, // Set the text color to white
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
            height: 24,
            width: 24,
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
        margin: EdgeInsets.only(left: 8),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame2,
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFacebook(context),
        _buildGoogle(context),
      ],
    );
  }
}
