import 'package:get/get.dart';
import 'explore_seven_screen_item_model.dart';

class Listtype1ItemModel {
  RxList<ExploreSevenScreenItemModel> exploreSevenScreenItemList =
      RxList.generate(3, (index) => ExploreSevenScreenItemModel());

  String? id = "";
}
