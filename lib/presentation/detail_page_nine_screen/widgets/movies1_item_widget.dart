import '../controller/detail_page_nine_controller.dart';
import '../models/movies1_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Movies1ItemWidget extends StatelessWidget {
  Movies1ItemWidget(this.movies1ItemModelObj, {this.onTapMoviecard});

  Movies1ItemModel movies1ItemModelObj;

  var controller = Get.find<DetailPageNineController>();

  VoidCallback? onTapMoviecard;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapMoviecard!();
          },
          child: Padding(
            padding: getPadding(
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbnailimage143x9013,
                  height: getVerticalSize(
                    190,
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
                      movies1ItemModelObj.titleTxt.value,
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
                    117,
                  ),
                  margin: getMargin(
                    top: 2,
                  ),
                  child: Obx(
                    () => Text(
                      movies1ItemModelObj.messageTxt.value,
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
      ),
    );
  }
}
