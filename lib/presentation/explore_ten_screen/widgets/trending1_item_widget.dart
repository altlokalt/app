import '../controller/explore_ten_controller.dart';
import '../models/trending1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Trending1ItemWidget extends StatelessWidget {
  Trending1ItemWidget(this.trending1ItemModelObj);

  Trending1ItemModel trending1ItemModelObj;

  var controller = Get.find<ExploreTenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnailimage143x902,
                height: getVerticalSize(
                  160,
                ),
                width: getHorizontalSize(
                  312,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    2,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Obx(
                  () => Text(
                    trending1ItemModelObj.typeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.44,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_sub_label".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.4,
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        3,
                      ),
                      width: getSize(
                        3,
                      ),
                      margin: getMargin(
                        left: 8,
                        top: 7,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 2,
                      ),
                      child: Text(
                        "lbl_4_5".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular10,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        6,
                      ),
                      width: getSize(
                        6,
                      ),
                      margin: getMargin(
                        left: 2,
                        top: 5,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
