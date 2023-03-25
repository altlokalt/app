import '../controller/explore_nine_controller.dart';
import '../models/categories2_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories2ItemWidget extends StatelessWidget {
  Categories2ItemWidget(this.categories2ItemModelObj);

  Categories2ItemModel categories2ItemModelObj;

  var controller = Get.find<ExploreNineController>();

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
                    categories2ItemModelObj.genreTxt.value,
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
