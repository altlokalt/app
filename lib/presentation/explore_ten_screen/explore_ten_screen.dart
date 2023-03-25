import '../explore_ten_screen/widgets/trending1_item_widget.dart';
import '../explore_ten_screen/widgets/trending2_item_widget.dart';
import '../explore_ten_screen/widgets/trending_item_widget.dart';
import 'controller/explore_ten_controller.dart';
import 'models/trending1_item_model.dart';
import 'models/trending2_item_model.dart';
import 'models/trending_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExploreTenScreen extends GetWidget<ExploreTenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            40,
          ),
          title: AppbarTitle(
            text: "lbl_explore".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                18,
              ),
              width: getSize(
                18,
              ),
              svgPath: ImageConstant.imgTrophy,
              margin: getMargin(
                left: 18,
                top: 2,
                right: 3,
              ),
            ),
            AppbarImage(
              height: getSize(
                18,
              ),
              width: getSize(
                18,
              ),
              svgPath: ImageConstant.imgLock,
              margin: getMargin(
                left: 24,
                top: 2,
                right: 21,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 46,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_trending_movies".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.25,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        230,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 16,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller
                              .exploreTenModelObj.value.trendingItemList.length,
                          itemBuilder: (context, index) {
                            TrendingItemModel model = controller
                                .exploreTenModelObj
                                .value
                                .trendingItemList[index];
                            return TrendingItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 33,
                    ),
                    child: Text(
                      "lbl_trending_movies".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.25,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        230,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 16,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller.exploreTenModelObj.value
                              .trending1ItemList.length,
                          itemBuilder: (context, index) {
                            Trending1ItemModel model = controller
                                .exploreTenModelObj
                                .value
                                .trending1ItemList[index];
                            return Trending1ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 33,
                    ),
                    child: Text(
                      "lbl_trending_movies".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.25,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        230,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 16,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller.exploreTenModelObj.value
                              .trending2ItemList.length,
                          itemBuilder: (context, index) {
                            Trending2ItemModel model = controller
                                .exploreTenModelObj
                                .value
                                .trending2ItemList[index];
                            return Trending2ItemWidget(
                              model,
                            );
                          },
                        ),
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
}
