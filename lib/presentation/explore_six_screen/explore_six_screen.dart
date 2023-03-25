import '../explore_six_screen/widgets/listtitle_item_widget.dart';
import '../explore_six_screen/widgets/listtype_item_widget.dart';
import 'controller/explore_six_controller.dart';
import 'models/listtitle_item_model.dart';
import 'models/listtype_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_searchview.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExploreSixScreen extends GetWidget<ExploreSixController> {
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
                    onTap: onTapArrowleft10),
                title: AppbarSearchview(
                    hintText: "lbl_search_movies".tr,
                    controller: controller.searchController,
                    margin: getMargin(left: 20))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 40, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_explore_movies".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold24),
                              Text("msg_find_something".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular14WhiteA70084
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.25))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 14, right: 16),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("lbl_action".tr,
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
                                        height: getVerticalSize(16),
                                        width: getHorizontalSize(18),
                                        margin: getMargin(left: 4, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 3, top: 13),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(26));
                                      },
                                      itemCount: controller.exploreSixModelObj
                                          .value.listtitleItemList.length,
                                      itemBuilder: (context, index) {
                                        ListtitleItemModel model = controller
                                            .exploreSixModelObj
                                            .value
                                            .listtitleItemList[index];
                                        return ListtitleItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 18, right: 16),
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
                                  padding: getPadding(top: 13),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(11));
                                      },
                                      itemCount: controller.exploreSixModelObj
                                          .value.listtypeItemList.length,
                                      itemBuilder: (context, index) {
                                        ListtypeItemModel model = controller
                                            .exploreSixModelObj
                                            .value
                                            .listtypeItemList[index];
                                        return ListtypeItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
