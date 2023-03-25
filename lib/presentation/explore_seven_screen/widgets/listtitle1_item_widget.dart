import '../controller/explore_seven_controller.dart';
import '../models/explore_seven_screen1_item_model.dart';
import '../models/listtitle1_item_model.dart';
import '../widgets/explore_seven_screen1_item_widget.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listtitle1ItemWidget extends StatelessWidget {
  Listtitle1ItemWidget(this.listtitle1ItemModelObj);

  Listtitle1ItemModel listtitle1ItemModelObj;

  var controller = Get.find<ExploreSevenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        159,
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
          itemCount: listtitle1ItemModelObj.exploreSevenScreen1ItemList.length,
          itemBuilder: (context, index) {
            ExploreSevenScreen1ItemModel model =
                listtitle1ItemModelObj.exploreSevenScreen1ItemList[index];
            return ExploreSevenScreen1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
