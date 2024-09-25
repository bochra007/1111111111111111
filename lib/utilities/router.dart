import 'package:app_test/pages/CongratsWizardEndPage.dart';
import 'package:app_test/pages/CongratsWizardEndPage2.dart';
import 'package:app_test/pages/addChild.dart';
import 'package:app_test/pages/addDevice.dart';
import 'package:app_test/pages/addProfile_page.dart';
import 'package:app_test/pages/auth_page.dart';
import 'package:app_test/pages/bottom_navbar.dart';
import 'package:app_test/pages/confirmProfile_page.dart';
import 'package:app_test/pages/dashboard_page.dart';
import 'package:app_test/pages/sign-in_1.dart';
import 'package:app_test/pages/spacechose_page.dart';
import 'package:app_test/pages/welcome_page.dart';
import 'package:app_test/utilities/routes.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    // name de routeur
    case AppRoutes.landingPageRout:
      return CupertinoPageRoute(builder: (_) => const Sign_in1());

    case AppRoutes.welcomePageRout:
      return CupertinoPageRoute(builder: (_) => const WelcomePage());
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(builder: (_) => const AuthPage());
    case AppRoutes.spaceChoseRout:
      return CupertinoPageRoute(builder: (_) => const SpaceChosePage());
    case AppRoutes.dashboardPageRout:
      return CupertinoPageRoute(builder: (_) => const DashboardPage());

    case AppRoutes.addDevicePageRout:
      return CupertinoPageRoute(builder: (_) => const AddDevicePage());
    case AppRoutes.addProfilePageRout:
      return CupertinoPageRoute(builder: (_) => const AddProfilePage());
    case AppRoutes.confirmProfilePageRout:
      return CupertinoPageRoute(builder: (_) => const ConfirmProfilePage());
    case AppRoutes.addChildPageRout:
      return CupertinoPageRoute(builder: (_) => const AddChildPage());
    case AppRoutes.congratEndPageRout:
      return CupertinoPageRoute(builder: (_) => const CongratEndPage());
    case AppRoutes.congratEndPage2Rout:
      return CupertinoPageRoute(builder: (_) => const CongratEndPage2());
    case AppRoutes.bottomNavBarPageRout:
      return CupertinoPageRoute(builder: (_) => const BottomNavBar());
    case AppRoutes.landingPageRout:
    default:
      return CupertinoPageRoute(builder: (_) => const Sign_in1());
  }
}
