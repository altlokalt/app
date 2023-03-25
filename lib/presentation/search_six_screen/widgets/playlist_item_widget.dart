import '../controller/search_six_controller.dart';
import '../models/playlist_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget(this.playlistItemModelObj, {this.onTapMoviecard});

  PlaylistItemModel playlistItemModelObj;

  var controller = Get.find<SearchSixController>();

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
                  imagePath: ImageConstant.imgThumbnailimage143x903,
                  height: getVerticalSize(
                    189,
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
                    top: 5,
                  ),
                  child: Obx(
                    () => Text(
                      playlistItemModelObj.titleTxt.value,
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
                      playlistItemModelObj.subTitleTxt.value,
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
