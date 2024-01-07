import 'widgets/screeneight_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';
import 'package:hieu_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class List1 extends StatefulWidget {
  const List1({Key? key})
      : super(
          key: key,
        );

  @override
  List1State createState() => List1State();
}

class List1State extends State<List1>
    with AutomaticKeepAliveClientMixin<List1> {
  TextEditingController growingnowController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      _buildUserProfileSection(context),
                      SizedBox(height: 16.v),
                      Container(
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
                            CustomTextFormField(
                              controller: growingnowController,
                              hintText: "Growing now",
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFrameOnprimary,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: 40.v,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            _buildHerbListSection(context),
                            SizedBox(height: 65.v),
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
  Widget _buildUserProfileSection(BuildContext context) {
    return Container(
      width: 374.h,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame3,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 4.v,
                ),
                child: Text(
                  "Using 6 out 9 pods",
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame4,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Basil will be ready for harvest in 3 days",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHerbListSection(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.v),
          child: SizedBox(
            width: 358.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: theme.colorScheme.onPrimary.withOpacity(0.1),
            ),
          ),
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return HerblistsectionItemWidget();
      },
    );
  }
}
