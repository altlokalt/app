import '../controller/detail_page_seven_controller.dart';
import '../models/movies_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoviesItemWidget extends StatelessWidget {
  MoviesItemWidget(this.moviesItemModelObj, {this.onTapMoviecard});

  MoviesItemModel moviesItemModelObj;

  var controller = Get.find<DetailPageSevenController>();

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
                      moviesItemModelObj.titleTxt.value,
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
                      moviesItemModelObj.timeZoneTxt.value,
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
