import '../screentwelve_page/widgets/screentwelve_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hieu_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ScreentwelvePage extends StatefulWidget {
  const ScreentwelvePage({Key? key})
      : super(
          key: key,
        );

  @override
  ScreentwelvePageState createState() => ScreentwelvePageState();
}

class ScreentwelvePageState extends State<ScreentwelvePage>
    with AutomaticKeepAliveClientMixin<ScreentwelvePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 32.v),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 177.h,
                    decoration: AppDecoration.outlineTeal.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 254.v,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  width: 8.h,
                                );
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ScreentwelveItemWidget();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: _buildFifteen(
                      context,
                      mint: "Mint",
                      price: "15",
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 12.h),
                    child: IntrinsicWidth(
                      child: _buildFifteen(
                        context,
                        mint: "Mint",
                        price: "15",
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

  /// Common widget
  Widget _buildFifteen(
    BuildContext context, {
    required String mint,
    required String price,
  }) {
    return Container(
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2177x177,
            height: 177.adaptSize,
            width: 177.adaptSize,
            radius: BorderRadius.vertical(
              top: Radius.circular(12.h),
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            mint,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            price,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
