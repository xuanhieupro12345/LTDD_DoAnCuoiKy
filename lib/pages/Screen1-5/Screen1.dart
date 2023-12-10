import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_outlined_button.dart';

class Begin extends StatelessWidget {
  const Begin({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.teal700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 56.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup51Primary,
                height: 32.v,
                width: 120.h,
              ),
              Spacer(
                flex: 79,
              ),
              Text(
                "Welcome to Aepod",
                style: CustomTextStyles.headlineLargePrimary,
              ),
              SizedBox(height: 18.v),
              Container(
                width: 347.h,
                margin: EdgeInsets.only(right: 18.h),
                child: Text(
                  "Grow plants easily from your home with our award-winning pods",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.44,
                  ),
                ),
              ),
              Spacer(
                flex: 20,
              ),
              CustomElevatedButton(
                text: "Register",
              ),
              SizedBox(height: 24.v),
              CustomOutlinedButton(
                height: 52.v,
                text: "Login",
                buttonStyle: CustomButtonStyles.outlinePrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
