import '../controller/see_more_six_controller.dart';
import '../models/seemoresix_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeemoresixItemWidget extends StatelessWidget {
  SeemoresixItemWidget(this.seemoresixItemModelObj);

  SeemoresixItemModel seemoresixItemModelObj;

  var controller = Get.find<SeeMoreSixController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            imagePath: ImageConstant.imgThumbnailimage175x99,
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
                  seemoresixItemModelObj.typeTxt.value,
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
    );
  }
}
