import '../controller/search_ten_controller.dart';
import '../models/populars_item_model.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class PopularsItemWidget extends StatelessWidget {
  PopularsItemWidget(this.popularsItemModelObj);

  PopularsItemModel popularsItemModelObj;

  var controller = Get.find<SearchTenController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage175x995,
              height: getVerticalSize(
                133,
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
                top: 12,
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
              child: Text(
                "lbl_ghost_writer".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular12WhiteA700a9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
