import '../controller/see_more_seven_controller.dart';
import '../models/seemoreseven_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class SeemoresevenItemWidget extends StatelessWidget {
  SeemoresevenItemWidget(this.seemoresevenItemModelObj);

  SeemoresevenItemModel seemoresevenItemModelObj;

  var controller = Get.find<SeeMoreSevenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgThumbnailimage175x995,
          height: getVerticalSize(
            139,
          ),
          width: getHorizontalSize(
            99,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              2,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 2,
            top: 6,
          ),
          child: RatingBar.builder(
            initialRating: 4,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemSize: getVerticalSize(
              8,
            ),
            unratedColor: ColorConstant.blue50,
            itemCount: 5,
            updateOnDrag: true,
            onRatingUpdate: (rating) {},
            itemBuilder: (context, _) {
              return Icon(
                Icons.star,
                color: ColorConstant.yellow700,
              );
            },
          ),
        ),
        Padding(
          padding: getPadding(
            left: 2,
          ),
          child: Obx(
            () => Text(
              seemoresevenItemModelObj.typeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12WhiteA700a9,
            ),
          ),
        ),
      ],
    );
  }
}
