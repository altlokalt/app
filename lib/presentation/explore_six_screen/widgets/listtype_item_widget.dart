import '../controller/explore_six_controller.dart';
import '../models/explore_six_screen1_item_model.dart';
import '../models/listtype_item_model.dart';
import '../widgets/explore_six_screen1_item_widget.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtypeItemWidget extends StatelessWidget {
  ListtypeItemWidget(this.listtypeItemModelObj);

  ListtypeItemModel listtypeItemModelObj;

  var controller = Get.find<ExploreSixController>();

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
          itemCount: listtypeItemModelObj.exploreSixScreen1ItemList.length,
          itemBuilder: (context, index) {
            ExploreSixScreen1ItemModel model =
                listtypeItemModelObj.exploreSixScreen1ItemList[index];
            return ExploreSixScreen1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
