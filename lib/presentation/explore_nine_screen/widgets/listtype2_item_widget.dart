import '../controller/explore_nine_controller.dart';
import '../models/explore_nine_screen_item_model.dart';
import '../models/listtype2_item_model.dart';
import '../widgets/explore_nine_screen_item_widget.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listtype2ItemWidget extends StatelessWidget {
  Listtype2ItemWidget(this.listtype2ItemModelObj);

  Listtype2ItemModel listtype2ItemModelObj;

  var controller = Get.find<ExploreNineController>();

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
          itemCount: listtype2ItemModelObj.exploreNineScreenItemList.length,
          itemBuilder: (context, index) {
            ExploreNineScreenItemModel model =
                listtype2ItemModelObj.exploreNineScreenItemList[index];
            return ExploreNineScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
