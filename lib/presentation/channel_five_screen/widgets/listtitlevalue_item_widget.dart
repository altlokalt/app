import '../controller/channel_five_controller.dart';
import '../models/listtitlevalue_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtitlevalueItemWidget extends StatelessWidget {
  ListtitlevalueItemWidget(this.listtitlevalueItemModelObj);

  ListtitlevalueItemModel listtitlevalueItemModelObj;

  var controller = Get.find<ChannelFiveController>();

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
                imagePath: ImageConstant.imgThumbnailimage120x1201,
                height: getSize(
                  120,
                ),
                width: getSize(
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
                  top: 2,
                ),
                child: Text(
                  "lbl_title".tr,
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
      ),
    );
  }
}
