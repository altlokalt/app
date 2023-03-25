import '../controller/explore_eight_controller.dart';
import '../models/categories1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories1ItemWidget extends StatelessWidget {
  Categories1ItemWidget(this.categories1ItemModelObj);

  Categories1ItemModel categories1ItemModelObj;

  var controller = Get.find<ExploreEightController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            94,
          ),
          width: getHorizontalSize(
            89,
          ),
          margin: getMargin(
            right: 9,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnailimage94x89,
                height: getVerticalSize(
                  94,
                ),
                width: getHorizontalSize(
                  89,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Obx(
                  () => Text(
                    categories1ItemModelObj.thrillerTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.1,
                      ),
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
