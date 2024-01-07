import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/pages/Register/Register.dart';
import 'package:hieu_s_application4/pages/Register/Login.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_outlined_button.dart';

class Start extends StatelessWidget {
  const Start({Key? key})
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
          // width: double.maxFinite,
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
                height: 32,
                width: 120,
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
                  // overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.44,
                  ),
                ),
              ),
              Spacer(
                flex: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Register(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
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
              SizedBox(height: 24.v),
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
                    padding: EdgeInsets.only(
                      left: 1,
                    ),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Màu của đường viền
                        width: 2.0, // Độ rộng của đường viền
                      ),
                      borderRadius: BorderRadius.circular(
                          8.0), // Bo tròn góc của đường viền
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
