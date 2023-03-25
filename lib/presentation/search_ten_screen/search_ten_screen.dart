import '../search_ten_screen/widgets/populars_item_widget.dart';
import 'controller/search_ten_controller.dart';
import 'models/populars_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchTenScreen extends GetWidget<SearchTenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: getPadding(
                      left: 15,
                      top: 12,
                      right: 15,
                      bottom: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.searchboxController,
                          hintText: "msg_search_for_movi".tr,
                          margin: getMargin(
                            left: 1,
                          ),
                          padding: SearchViewPadding.PaddingT8,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 7,
                              right: 12,
                              bottom: 7,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              32,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 37,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCursor,
                                height: getVerticalSize(
                                  10,
                                ),
                                width: getHorizontalSize(
                                  18,
                                ),
                                margin: getMargin(
                                  top: 5,
                                  bottom: 12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                ),
                                child: Text(
                                  "lbl_trending_search".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 11,
                          ),
                          child: Text(
                            "lbl_love_in_trouble".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 19,
                          ),
                          child: Text(
                            "lbl_hotel_de_luna".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 19,
                          ),
                          child: Text(
                            "lbl_the_heirs".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 20,
                          ),
                          child: Text(
                            "msg_what_s_wrong_wi".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 33,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGlobe18x18,
                                height: getSize(
                                  18,
                                ),
                                width: getSize(
                                  18,
                                ),
                                margin: getMargin(
                                  top: 2,
                                  bottom: 8,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                ),
                                child: Text(
                                  "lbl_popular_search".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            318,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                left: 1,
                                top: 11,
                                bottom: 138,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    16,
                                  ),
                                );
                              },
                              itemCount: controller.searchTenModelObj.value
                                  .popularsItemList.length,
                              itemBuilder: (context, index) {
                                PopularsItemModel model = controller
                                    .searchTenModelObj
                                    .value
                                    .popularsItemList[index];
                                return PopularsItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
