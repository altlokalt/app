import '../explore_eight_page/widgets/categories1_item_widget.dart';
import '../explore_eight_page/widgets/listtitle2_item_widget.dart';
import 'controller/explore_eight_controller.dart';
import 'models/categories1_item_model.dart';
import 'models/explore_eight_model.dart';
import 'models/listtitle2_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExploreEightPage extends StatelessWidget {
  ExploreEightController controller =
      Get.put(ExploreEightController(ExploreEightModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                title: AppbarTitle(
                    text: "lbl_explore".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(18),
                      width: getSize(18),
                      svgPath: ImageConstant.imgTrophy,
                      margin: getMargin(left: 18, top: 2, right: 3)),
                  AppbarImage(
                      height: getSize(18),
                      width: getSize(18),
                      svgPath: ImageConstant.imgLock,
                      margin: getMargin(left: 24, top: 2, right: 21))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 42, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_categories_you".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold14.copyWith(
                                      letterSpacing: getHorizontalSize(0.25))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(110),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 16),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(9));
                                          },
                                          itemCount: controller
                                              .exploreEightModelObj
                                              .value
                                              .categories1ItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            Categories1ItemModel model =
                                                controller
                                                    .exploreEightModelObj
                                                    .value
                                                    .categories1ItemList[index];
                                            return Categories1ItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 18, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_best_movie".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold24),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowright24x24,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 1, bottom: 3),
                                            onTap: () {
                                              onTapImgArrowright();
                                            })
                                      ])),
                              Container(
                                  height: getSize(328),
                                  width: getSize(328),
                                  margin: getMargin(top: 12),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgThumbnailimage328x3281,
                                            height: getSize(328),
                                            width: getSize(328),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, bottom: 19),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_label".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoBold20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.15))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStar,
                                                                    height:
                                                                        getSize(
                                                                            6),
                                                                    width:
                                                                        getSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        top: 4,
                                                                        bottom:
                                                                            1)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                2),
                                                                    child: Text(
                                                                        "lbl_4_5"
                                                                            .tr
                                                                            .toUpperCase(),
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular10WhiteA7009d)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgClock,
                                                                    height:
                                                                        getSize(
                                                                            6),
                                                                    width:
                                                                        getSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        left: 8,
                                                                        top: 2,
                                                                        bottom:
                                                                            3)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                2),
                                                                    child: Text(
                                                                        "lbl_00_00"
                                                                            .tr
                                                                            .toUpperCase(),
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular10WhiteA7009d))
                                                              ]))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 17, right: 16),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_drama".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.25)))),
                                    Spacer(),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 3),
                                        child: Text("lbl_more".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular12WhiteA70084
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.4)))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 4, top: 1))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(11));
                                      },
                                      itemCount: controller.exploreEightModelObj
                                          .value.listtitle2ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listtitle2ItemModel model = controller
                                            .exploreEightModelObj
                                            .value
                                            .listtitle2ItemList[index];
                                        return Listtitle2ItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapImgArrowright() {
    Get.toNamed(AppRoutes.exploreNineScreen);
  }
}
