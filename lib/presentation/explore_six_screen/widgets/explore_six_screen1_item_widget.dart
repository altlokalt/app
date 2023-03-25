import '../controller/explore_six_controller.dart';
import '../models/explore_six_screen1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreSixScreen1ItemWidget extends StatelessWidget {
  ExploreSixScreen1ItemWidget(this.exploreSixScreen1ItemModelObj);

  ExploreSixScreen1ItemModel exploreSixScreen1ItemModelObj;

  var controller = Get.find<ExploreSixController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage188x1201,
              height: getVerticalSize(
                125,
              ),
              width: getHorizontalSize(
                120,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  2,
                ),
              ),
            ),
            Obx(
              () => Text(
                exploreSixScreen1ItemModelObj.typeTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular12WhiteA700a9.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.4,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 2,
              ),
              child: Obx(
                () => Text(
                  exploreSixScreen1ItemModelObj.messageTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular12WhiteA70084,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
