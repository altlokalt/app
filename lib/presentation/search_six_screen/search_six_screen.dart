import '../search_six_screen/widgets/movie_item_widget.dart';
import '../search_six_screen/widgets/playlist_item_widget.dart';
import '../search_six_screen/widgets/tvchannels_item_widget.dart';
import 'controller/search_six_controller.dart';
import 'models/movie_item_model.dart';
import 'models/playlist_item_model.dart';
import 'models/tvchannels_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchSixScreen extends GetWidget<SearchSixController> {
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
                                  padding: getPadding(top: 12, bottom: 12),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.searchboxController,
                                            hintText: "lbl_marvel".tr,
                                            margin:
                                                getMargin(left: 16, right: 16),
                                            variant: TextFormFieldVariant
                                                .FillBlack90059,
                                            padding: TextFormFieldPadding
                                                .PaddingT8_1,
                                            fontStyle: TextFormFieldFontStyle
                                                .RobotoRegular12WhiteA700a9,
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 7,
                                                    right: 12,
                                                    bottom: 7),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgClose)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(32))),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, top: 34),
                                            child: Text(
                                                "msg_search_result_f2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular24)),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, top: 22),
                                            child: Text("lbl_movies".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.25)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(264),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding: getPadding(
                                                            left: 16, top: 21),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .searchSixModelObj
                                                            .value
                                                            .movieItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          MovieItemModel model =
                                                              controller
                                                                  .searchSixModelObj
                                                                  .value
                                                                  .movieItemList[index];
                                                          return MovieItemWidget(
                                                              model,
                                                              onTapMoviecard:
                                                                  onTapMoviecard);
                                                        })))),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, top: 8),
                                            child: Text("lbl_tv_channels".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.25)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(258),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding: getPadding(
                                                            left: 16, top: 15),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .searchSixModelObj
                                                            .value
                                                            .tvchannelsItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          TvchannelsItemModel
                                                              model = controller
                                                                  .searchSixModelObj
                                                                  .value
                                                                  .tvchannelsItemList[index];
                                                          return TvchannelsItemWidget(
                                                              model,
                                                              onTapMoviecard:
                                                                  onTapMoviecard);
                                                        })))),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, top: 15),
                                            child: Text("lbl_playlist".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.25)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(321),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 14,
                                                            bottom: 64),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .searchSixModelObj
                                                            .value
                                                            .playlistItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          PlaylistItemModel
                                                              model = controller
                                                                  .searchSixModelObj
                                                                  .value
                                                                  .playlistItemList[index];
                                                          return PlaylistItemWidget(
                                                              model,
                                                              onTapMoviecard:
                                                                  onTapMoviecard);
                                                        }))))
                                      ]))))
                    ]))));
  }

  onTapMoviecard() {
    Get.toNamed(AppRoutes.detailPageEightScreen);
    Get.toNamed(AppRoutes.detailPageEightScreen);
    Get.toNamed(AppRoutes.detailPageEightScreen);
  }
}
