import '../controller/explore_seven_controller.dart';
import '../models/explore_seven_screen1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreSevenScreen1ItemWidget extends StatelessWidget {
  ExploreSevenScreen1ItemWidget(this.exploreSevenScreen1ItemModelObj);

  ExploreSevenScreen1ItemModel exploreSevenScreen1ItemModelObj;

  var controller = Get.find<ExploreSevenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
          bottom: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage143x903,
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
                exploreSevenScreen1ItemModelObj.titleTxt.value,
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
                top: 3,
              ),
              child: Text(
                "lbl_sub_title".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular12WhiteA70084,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
