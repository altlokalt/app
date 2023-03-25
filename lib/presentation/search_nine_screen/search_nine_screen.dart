import '../search_nine_screen/widgets/searchnine_item_widget.dart';
import 'controller/search_nine_controller.dart';
import 'models/searchnine_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchNineScreen extends GetWidget<SearchNineController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            38,
          ),
          title: AppbarTitle(
            text: "lbl_search".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                15,
              ),
              width: getHorizontalSize(
                16,
              ),
              svgPath: ImageConstant.imgAirplayicon,
              margin: getMargin(
                left: 19,
                top: 5,
                right: 2,
              ),
            ),
            AppbarImage(
              height: getSize(
                16,
              ),
              width: getSize(
                16,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 26,
                top: 5,
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
                top: 29,
                right: 16,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    focusNode: FocusNode(),
                    controller: controller.searchboxController,
                    hintText: "msg_search_for_movi".tr,
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
                      left: 3,
                      top: 48,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            170,
                          ),
                          crossAxisCount: 3,
                          mainAxisSpacing: getHorizontalSize(
                            14,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            14,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller
                            .searchNineModelObj.value.searchnineItemList.length,
                        itemBuilder: (context, index) {
                          SearchnineItemModel model = controller
                              .searchNineModelObj
                              .value
                              .searchnineItemList[index];
                          return SearchnineItemWidget(
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
      ),
    );
  }
}
