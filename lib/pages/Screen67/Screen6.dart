// import 'package:flutter/material.dart';
// import 'package:hieu_s_application4/core/app_export.dart';
// import 'package:hieu_s_application4/pages/Screens15/screenfifteen_page.dart';
// import 'package:hieu_s_application4/pages/Screen67/screensix_page/screensix_page.dart';
// import 'package:hieu_s_application4/widgets/custom_bottom_bar.dart';

// // ignore_for_file: must_be_immutable
// class ScreensixContainerScreen extends StatelessWidget {
//   ScreensixContainerScreen({Key? key}) : super(key: key);

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             body: Navigator(
//                 key: navigatorKey,
//                 initialRoute: AppRoutes.screensixPage,
//                 onGenerateRoute: (routeSetting) => PageRouteBuilder(
//                     pageBuilder: (ctx, ani, ani1) =>
//                         getCurrentPage(routeSetting.name!),
//                     transitionDuration: Duration(seconds: 0))),
//             bottomNavigationBar: _buildBottomBar(context)));
//   }

//   /// Section Widget
//   Widget _buildBottomBar(BuildContext context) {
//     return CustomBottomBar(onChanged: (BottomBarEnum type) {});
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.screensixPage:
//         return ScreensixPage();
//       case AppRoutes.screenfifteenPage:
//         return ScreenfifteenPage();
//       default:
//         return ScreensixPage();
//     }
//   }
// }
