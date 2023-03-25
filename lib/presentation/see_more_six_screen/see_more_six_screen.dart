import '../see_more_six_screen/widgets/seemoresix_item_widget.dart';
import 'controller/see_more_six_controller.dart';
import 'models/seemoresix_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SeeMoreSixScreen extends GetWidget<SeeMoreSixController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(39),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 1),
                    onTap: onTapArrowleft1),
                title: AppbarTitle(
                    text: "lbl_action".tr, margin: getMargin(left: 8)),
                actions: [
                  AppbarImage(
                      height: getSize(18),
                      width: getSize(18),
                      svgPath: ImageConstant.imgTrophy,
                      margin: getMargin(left: 18, top: 4, right: 2)),
                  AppbarImage(
                      height: getSize(18),
                      width: getSize(18),
                      svgPath: ImageConstant.imgLock,
                      margin: getMargin(left: 24, top: 4, right: 20))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 28, right: 15, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_action_movies".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular24),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(176),
                                              crossAxisCount: 3,
                                              mainAxisSpacing:
                                                  getHorizontalSize(16),
                                              crossAxisSpacing:
                                                  getHorizontalSize(16)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.seeMoreSixModelObj
                                          .value.seemoresixItemList.length,
                                      itemBuilder: (context, index) {
                                        SeemoresixItemModel model = controller
                                            .seeMoreSixModelObj
                                            .value
                                            .seemoresixItemList[index];
                                        return SeemoresixItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
