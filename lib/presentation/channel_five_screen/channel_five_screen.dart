import '../channel_five_screen/widgets/listtitlevalue_item_widget.dart';
import 'controller/channel_five_controller.dart';
import 'models/listtitlevalue_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChannelFiveScreen extends GetWidget<ChannelFiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          title: AppbarTitle(
            text: "lbl_live_channel".tr,
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
                top: 19,
                right: 20,
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
                top: 19,
                right: 39,
              ),
            ),
          ],
          styleType: Style.bgFillGray90002,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                top: 8,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      180,
                    ),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbnailimage180x360,
                          height: getVerticalSize(
                            180,
                          ),
                          width: getHorizontalSize(
                            360,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 8,
                              right: 8,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlay,
                                  height: getSize(
                                    36,
                                  ),
                                  width: getSize(
                                    36,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 46,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgTrash,
                                        height: getSize(
                                          18,
                                        ),
                                        width: getSize(
                                          18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSettings,
                                        height: getSize(
                                          18,
                                        ),
                                        width: getSize(
                                          18,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            4,
                                          ),
                                          width: getHorizontalSize(
                                            240,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                          ),
                                          child: ClipRRect(
                                            child: LinearProgressIndicator(
                                              value: 0.57,
                                              backgroundColor:
                                                  ColorConstant.whiteA700,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                ColorConstant.deepPurpleA200,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSettings18x18,
                                        height: getSize(
                                          18,
                                        ),
                                        width: getSize(
                                          18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSettings1,
                                        height: getSize(
                                          18,
                                        ),
                                        width: getSize(
                                          18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      281,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 62,
                    ),
                    child: Text(
                      "msg_the_last_black".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular24WhiteA700a9,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        319,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 7,
                        right: 24,
                      ),
                      child: Text(
                        "msg_the_story_of_tw".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12WhiteA7009d.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_director".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRobotoRegular12WhiteA70084.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.4,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 38,
                            top: 1,
                          ),
                          child: Text(
                            "msg_anna_boden_rya".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular12WhiteA7009d1
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 10,
                      right: 29,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 15,
                          ),
                          child: Text(
                            "lbl_cast".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRobotoRegular12WhiteA70084.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.4,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            230,
                          ),
                          child: Text(
                            "msg_brie_larson_sa".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtRobotoRegular12WhiteA7009d.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 25,
                        right: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "lbl_special_for_you".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.25,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: getPadding(
                              bottom: 3,
                            ),
                            child: Text(
                              "lbl_more".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular12WhiteA70084
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgArrowright18x18,
                            height: getSize(
                              18,
                            ),
                            width: getSize(
                              18,
                            ),
                            margin: getMargin(
                              left: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        171,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 16,
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
                          itemCount: controller.channelFiveModelObj.value
                              .listtitlevalueItemList.length,
                          itemBuilder: (context, index) {
                            ListtitlevalueItemModel model = controller
                                .channelFiveModelObj
                                .value
                                .listtitlevalueItemList[index];
                            return ListtitlevalueItemWidget(
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
