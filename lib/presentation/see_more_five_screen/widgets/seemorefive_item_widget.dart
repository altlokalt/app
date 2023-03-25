import '../controller/see_more_five_controller.dart';
import '../models/seemorefive_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeemorefiveItemWidget extends StatelessWidget {
  SeemorefiveItemWidget(this.seemorefiveItemModelObj);

  SeemorefiveItemModel seemorefiveItemModelObj;

  var controller = Get.find<SeeMoreFiveController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          175,
        ),
        width: getHorizontalSize(
          99,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage,
              height: getVerticalSize(
                175,
              ),
              width: getHorizontalSize(
                99,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  2,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: getPadding(
                  bottom: 16,
                ),
                child: Obx(
                  () => Text(
                    seemorefiveItemModelObj.titleTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12WhiteA700a9.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
