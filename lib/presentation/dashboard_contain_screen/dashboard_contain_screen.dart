import 'controller/dashboard_contain_controller.dart';
import 'package:app/core/app_export.dart';
import 'package:app/presentation/account_five_page/account_five_page.dart';
import 'package:app/presentation/channel_six_page/channel_six_page.dart';
import 'package:app/presentation/dashboard_page/dashboard_page.dart';
import 'package:app/presentation/explore_eight_page/explore_eight_page.dart';
import 'package:app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DashboardContainScreen extends GetWidget<DashboardContainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashboardPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreEightPage;
      case BottomBarEnum.Channels:
        return AppRoutes.channelSixPage;
      case BottomBarEnum.User:
        return AppRoutes.accountFivePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.exploreEightPage:
        return ExploreEightPage();
      case AppRoutes.channelSixPage:
        return ChannelSixPage();
      case AppRoutes.accountFivePage:
        return AccountFivePage();
      default:
        return DefaultWidget();
    }
  }
}
