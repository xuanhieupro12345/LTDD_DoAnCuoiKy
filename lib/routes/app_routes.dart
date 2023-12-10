import 'package:flutter/material.dart';
import '../pages/Screen1-5/Screen1.dart';
import '../pages/Screen1-5/screentwo_screen.dart';
import '../pages/Screen1-5/screenthree_screen.dart';
import '../pages/Screen1-5/screenfour_screen.dart';
import '../pages/Screen1-5/Screen5/screenfive_screen.dart';
import '../pages/Screen67/Screen6.dart';
import '../pages/Screen1011/Screen10.dart';
import '../pages/Screen121314/Screen12.dart';
import '../pages/Screen121314/Screen14/screenfourteen_screen.dart';
import '../pages/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String Screen1 = '/screenone_screen';

  static const String screentwoScreen = '/screentwo_screen';

  static const String screenthreeScreen = '/screenthree_screen';

  static const String screenfourScreen = '/screenfour_screen';

  static const String screenfiveScreen = '/screenfive_screen';

  static const String screensixPage = '/screensix_page';

  static const String screensixContainerScreen = '/screensix_container_screen';

  static const String screeneightPage = '/screeneight_page';

  static const String screentenPage = '/screenten_page';

  static const String screentenTabContainerScreen =
      '/screenten_tab_container_screen';

  static const String screenelevenPage = '/screeneleven_page';

  static const String screentwelvePage = '/screentwelve_page';

  static const String screentwelveTabContainerScreen =
      '/screentwelve_tab_container_screen';

  static const String screenfourteenScreen = '/screenfourteen_screen';

  static const String screenfifteenPage = '/screenfifteen_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    Screen1: (context) => Begin(),
    screentwoScreen: (context) => ScreentwoScreen(),
    screenthreeScreen: (context) => ScreenthreeScreen(),
    screenfourScreen: (context) => ScreenfourScreen(),
    screenfiveScreen: (context) => ScreenfiveScreen(),
    screensixContainerScreen: (context) => ScreensixContainerScreen(),
    screentenTabContainerScreen: (context) => ScreentenTabContainerScreen(),
    screentwelveTabContainerScreen: (context) =>
        ScreentwelveTabContainerScreen(),
    screenfourteenScreen: (context) => ScreenfourteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
