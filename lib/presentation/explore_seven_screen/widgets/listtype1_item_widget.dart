import '../controller/explore_seven_controller.dart';
import '../models/explore_seven_screen_item_model.dart';
import '../models/listtype1_item_model.dart';
import '../widgets/explore_seven_screen_item_widget.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listtype1ItemWidget extends StatelessWidget {
  Listtype1ItemWidget(this.listtype1ItemModelObj);

  Listtype1ItemModel listtype1ItemModelObj;

  var controller = Get.find<ExploreSevenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        174,
      ),
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: getVerticalSize(
                16,
              ),
            );
          },
          itemCount: listtype1ItemModelObj.exploreSevenScreenItemList.length,
          itemBuilder: (context, index) {
            ExploreSevenScreenItemModel model =
                listtype1ItemModelObj.exploreSevenScreenItemList[index];
            return ExploreSevenScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
