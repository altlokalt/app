import '../controller/explore_six_controller.dart';
import '../models/explore_six_screen_item_model.dart';
import '../models/listtitle_item_model.dart';
import '../widgets/explore_six_screen_item_widget.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(this.listtitleItemModelObj);

  ListtitleItemModel listtitleItemModelObj;

  var controller = Get.find<ExploreSixController>();

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
          itemCount: listtitleItemModelObj.exploreSixScreenItemList.length,
          itemBuilder: (context, index) {
            ExploreSixScreenItemModel model =
                listtitleItemModelObj.exploreSixScreenItemList[index];
            return ExploreSixScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
