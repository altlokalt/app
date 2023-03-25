import '../controller/explore_eight_controller.dart';
import '../models/explore_eight_page_item_model.dart';
import '../models/listtitle2_item_model.dart';
import '../widgets/explore_eight_page_item_widget.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listtitle2ItemWidget extends StatelessWidget {
  Listtitle2ItemWidget(this.listtitle2ItemModelObj);

  Listtitle2ItemModel listtitle2ItemModelObj;

  var controller = Get.find<ExploreEightController>();

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
          itemCount: listtitle2ItemModelObj.exploreEightPageItemList.length,
          itemBuilder: (context, index) {
            ExploreEightPageItemModel model =
                listtitle2ItemModelObj.exploreEightPageItemList[index];
            return ExploreEightPageItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
