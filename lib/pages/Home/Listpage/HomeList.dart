import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/pages/Home/Listpage/List/List3.dart';
import 'package:hieu_s_application4/pages/Home/Listpage/List/List2.dart';
import 'package:hieu_s_application4/pages/Home/Listpage/List/List1/List1.dart';
import 'package:hieu_s_application4/pages/Home/screensix_page/Home.dart';
import 'package:hieu_s_application4/widgets/custom_elevated_button.dart';
import 'package:hieu_s_application4/widgets/custom_icon_button.dart';

class HomeList extends StatefulWidget {
  const HomeList({Key? key})
      : super(
          key: key,
        );

  @override
  HomeListState createState() => HomeListState();
}

class HomeListState extends State<HomeList> with TickerProviderStateMixin {
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
                      List1(),
                      List2(),
                      List3(),
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
              padding: EdgeInsets.fromLTRB(22, 60, 24, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Home(), // Thay thế "SeeMoreSinger" bằng tên trang bạn muốn chuyển hướng đến
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 135, top: 12),
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Go back",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // CustomElevatedButton(
                  //   height: 40,
                  //   width: 130,
                  //   text: "Go back",
                  //   leftIcon: Container(
                  //     margin: EdgeInsets.only(right: 8),
                  //     child: CustomImageView(
                  //       imagePath: ImageConstant.imgFrameTeal700,
                  //       height: 24,
                  //       width: 13,
                  //     ),
                  //   ),
                  //   buttonStyle: CustomButtonStyles.outlineTeal,
                  // ),
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
