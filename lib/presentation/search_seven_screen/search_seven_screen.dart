import '../search_seven_screen/widgets/searchseven_item_widget.dart';
import 'controller/search_seven_controller.dart';
import 'models/searchseven_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchSevenScreen extends GetWidget<SearchSevenController> {
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
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.searchboxController,
                          hintText: "lbl_love".tr,
                          margin: getMargin(
                            left: 1,
                          ),
                          variant: TextFormFieldVariant.FillBlack90059,
                          padding: TextFormFieldPadding.PaddingT8_1,
                          fontStyle:
                              TextFormFieldFontStyle.RobotoRegular12WhiteA700a9,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 7,
                              right: 12,
                              bottom: 7,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgClose,
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
                            top: 34,
                          ),
                          child: Text(
                            "msg_search_result_f".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular24,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 23,
                          ),
                          child: Text(
                            "lbl_movies_6".tr,
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
                            top: 24,
                          ),
                          child: Obx(
                            () => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: getVerticalSize(
                                  170,
                                ),
                                crossAxisCount: 3,
                                mainAxisSpacing: getHorizontalSize(
                                  16,
                                ),
                                crossAxisSpacing: getHorizontalSize(
                                  16,
                                ),
                              ),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.searchSevenModelObj.value
                                  .searchsevenItemList.length,
                              itemBuilder: (context, index) {
                                SearchsevenItemModel model = controller
                                    .searchSevenModelObj
                                    .value
                                    .searchsevenItemList[index];
                                return SearchsevenItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 25,
                          ),
                          child: Text(
                            "lbl_cast_4".tr,
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
                            top: 24,
                            right: 12,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  74,
                                ),
                                padding: getPadding(
                                  all: 8,
                                ),
                                decoration: AppDecoration.txtOutlineIndigo50001
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder16,
                                ),
                                child: Text(
                                  "lbl_mark_love".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular12WhiteA700a9,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  95,
                                ),
                                margin: getMargin(
                                  left: 8,
                                ),
                                padding: getPadding(
                                  left: 11,
                                  top: 8,
                                  right: 11,
                                  bottom: 8,
                                ),
                                decoration: AppDecoration.txtOutlineIndigo50001
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder16,
                                ),
                                child: Text(
                                  "lbl_jennifer_love".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular12WhiteA700a9,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  60,
                                ),
                                margin: getMargin(
                                  left: 8,
                                ),
                                padding: getPadding(
                                  all: 8,
                                ),
                                decoration: AppDecoration.txtOutlineIndigo50001
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder16,
                                ),
                                child: Text(
                                  "lbl_mislove".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular12WhiteA700a9,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  64,
                                ),
                                margin: getMargin(
                                  left: 8,
                                ),
                                padding: getPadding(
                                  left: 15,
                                  top: 8,
                                  right: 15,
                                  bottom: 8,
                                ),
                                decoration: AppDecoration.txtOutlineIndigo50001
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder16,
                                ),
                                child: Text(
                                  "lbl_lovez".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular12WhiteA700a9,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 30,
                          ),
                          child: Text(
                            "lbl_categories_1".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.25,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            90,
                          ),
                          width: getSize(
                            90,
                          ),
                          margin: getMargin(
                            left: 1,
                            top: 16,
                            bottom: 72,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailimage90x901,
                                height: getSize(
                                  90,
                                ),
                                width: getSize(
                                  90,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  90,
                                ),
                                width: getSize(
                                  90,
                                ),
                                text: "lbl_love".tr,
                                variant: ButtonVariant.FillGray9007f,
                                shape: ButtonShape.PaddingAll19,
                                padding: ButtonPadding.PaddingT36,
                                alignment: Alignment.center,
                              ),
                            ],
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
