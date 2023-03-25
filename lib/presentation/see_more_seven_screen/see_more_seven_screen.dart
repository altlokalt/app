import '../see_more_seven_screen/widgets/seemoreseven_item_widget.dart';
import 'controller/see_more_seven_controller.dart';
import 'models/seemoreseven_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_searchview.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SeeMoreSevenScreen extends GetWidget<SeeMoreSevenController> {
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
                    onTap: onTapArrowleft2),
                title: AppbarSearchview(
                    hintText: "msg_search_in_actio".tr,
                    controller: controller.searchController,
                    margin: getMargin(left: 20))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 23, right: 15, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_trending_movies".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular24),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(170),
                                              crossAxisCount: 3,
                                              mainAxisSpacing:
                                                  getHorizontalSize(16),
                                              crossAxisSpacing:
                                                  getHorizontalSize(16)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.seeMoreSevenModelObj
                                          .value.seemoresevenItemList.length,
                                      itemBuilder: (context, index) {
                                        SeemoresevenItemModel model = controller
                                            .seeMoreSevenModelObj
                                            .value
                                            .seemoresevenItemList[index];
                                        return SeemoresevenItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
