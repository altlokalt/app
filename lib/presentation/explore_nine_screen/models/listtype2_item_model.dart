import 'package:get/get.dart';
import 'explore_nine_screen_item_model.dart';

class Listtype2ItemModel {
  RxList<ExploreNineScreenItemModel> exploreNineScreenItemList =
      RxList.generate(3, (index) => ExploreNineScreenItemModel());

  String? id = "";
}
