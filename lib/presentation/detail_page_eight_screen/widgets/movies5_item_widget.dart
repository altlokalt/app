import '../controller/detail_page_eight_controller.dart';
import '../models/movies5_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Movies5ItemWidget extends StatelessWidget {
  Movies5ItemWidget(this.movies5ItemModelObj);

  Movies5ItemModel movies5ItemModelObj;

  var controller = Get.find<DetailPageEightController>();

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
                imagePath: ImageConstant.imgThumbnailimage188x1201,
                height: getVerticalSize(
                  188,
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
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Obx(
                  () => Text(
                    movies5ItemModelObj.titleTxt.value,
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
              Container(
                width: getHorizontalSize(
                  120,
                ),
                margin: getMargin(
                  top: 2,
                ),
                child: Obx(
                  () => Text(
                    movies5ItemModelObj.timeZoneTxt.value,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular12WhiteA70090,
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
