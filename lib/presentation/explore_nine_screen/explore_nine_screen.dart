import '../explore_nine_screen/widgets/categories2_item_widget.dart';
import '../explore_nine_screen/widgets/listtype2_item_widget.dart';
import 'controller/explore_nine_controller.dart';
import 'models/categories2_item_model.dart';
import 'models/listtype2_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_searchview.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExploreNineScreen extends GetWidget<ExploreNineController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft11),
                title: AppbarSearchview(
                    hintText: "lbl_search_movies".tr,
                    controller: controller.searchController,
                    margin: getMargin(left: 20))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 38, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_discover_movies".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold24),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowright24x24,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 1, bottom: 3))
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
                                                .imgThumbnailimage328x3282,
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
                                                                      .end,
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
                                                                        top: 4,
                                                                        bottom:
                                                                            1)),
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
                                  padding: getPadding(top: 26),
                                  child: Text("msg_categories_you".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold14.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.25)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(108),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 14),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(9));
                                          },
                                          itemCount: controller
                                              .exploreNineModelObj
                                              .value
                                              .categories2ItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            Categories2ItemModel model =
                                                controller
                                                    .exploreNineModelObj
                                                    .value
                                                    .categories2ItemList[index];
                                            return Categories2ItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 19, right: 16),
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
                                  padding: getPadding(top: 18),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(11));
                                      },
                                      itemCount: controller.exploreNineModelObj
                                          .value.listtype2ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listtype2ItemModel model = controller
                                            .exploreNineModelObj
                                            .value
                                            .listtype2ItemList[index];
                                        return Listtype2ItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
