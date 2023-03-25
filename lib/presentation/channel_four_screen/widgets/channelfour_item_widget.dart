import '../controller/channel_four_controller.dart';
import '../models/channelfour_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChannelfourItemWidget extends StatelessWidget {
  ChannelfourItemWidget(this.channelfourItemModelObj);

  ChannelfourItemModel channelfourItemModelObj;

  var controller = Get.find<ChannelFourController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: getSize(
            56,
          ),
          width: getSize(
            56,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKtvicon56x56,
                height: getSize(
                  56,
                ),
                width: getSize(
                  56,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    4,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.gray90002,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Container(
                    height: getSize(
                      56,
                    ),
                    width: getSize(
                      56,
                    ),
                    decoration: AppDecoration.outlineBlack90033.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBackgroundimage56x561,
                          height: getSize(
                            56,
                          ),
                          width: getSize(
                            56,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 17,
            bottom: 19,
          ),
          child: Obx(
            () => Text(
              channelfourItemModelObj.typeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular16,
            ),
          ),
        ),
      ],
    );
  }
}
